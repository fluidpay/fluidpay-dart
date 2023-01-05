import 'dart:convert';

import 'package:dcrypto/dcrypto.dart';
import 'package:fluidpay/com/fluidpay/authentication/response.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/gateway.dart';
import 'package:fluidpay/com/fluidpay/mba/request.dart';
import 'package:fluidpay/com/fluidpay/mba/response.dart';

const DELIMITER = ':;+=';

extension MBAGateway on Gateway {
  Future<MBAAuthLoginResponse> loginMBA(MBAAuthLoginRequest request,
      [MBARegisterRequest? mbaRegisterRequest]) async {
    var response = await execute(request);
    if (response.isSuccess) {
      authData = AuthLoginResponseData()
        ..token = response.data?.token
        ..sid = response.data?.sid;

      if (mbaRegisterRequest != null) {
        if (response.data?.unitStatus != MBAUnitStatus.registered) {
          final registerResponse = await execute(mbaRegisterRequest);

          if (registerResponse.isSuccess) {
            response = await execute(request);
          }
        }

        setToken(response.data!.token!, mbaRegisterRequest.unit.physicalId,
            mbaRegisterRequest.unit.passcode);
      }
    }

    return response;
  }

  static String? _receivedToken;
  static String? _token;
  static String? _unitId;

  bool? checkPasscode(String physicalId, String passcode) {
    if (_receivedToken != null) {
      final token = _createToken(_receivedToken!, physicalId, passcode);

      return token == _token;
    }

    return null;
  }

  void setToken(String mbaToken, String physicalId, String passcode) {
    _token = _createToken(mbaToken, physicalId, passcode);
    setAuthHeaderCreator(() => {'Authorization': 'mba $_token'});
  }

  bool hasToken() => _token != null;

  void clearToken() {
    _receivedToken = null;
    _token = null;
    _unitId = null;
    setAuthHeaderCreator(null);
  }

  String _createToken(String mbaToken, String physicalId, String passcode) {
    _receivedToken = mbaToken;

    final tokenBytes = base64Decode(mbaToken).toList();
    final decoded = String.fromCharCodes(tokenBytes);

    final parts = decoded.split(DELIMITER);

    final hash = parts.first;
    _unitId = parts.last;

    final passcodeKey = _padding(passcode);
    final physicalIdKey = _padding(physicalId);

    final c = Crypto(AES_CBC_128('z9cKRIKQAt6oQfcd'));
    c.keyType = TextType.pure;
    c.plaintextType = TextType.pure;

    final decrypted = c.decrypt(hash, passcodeKey);
    final encrypted = c.encrypt(decrypted, physicalIdKey);

    return base64Encode(
        [...base64Decode(encrypted).toList(), ...DELIMITER.codeUnits, ..._unitId!.codeUnits]);
  }

  Future<String?> updateMBAToken(String physicalId, String passcode) async {
    if (_token != null) {
      final response = await execute(MBAAuthRefreshRequest(_token!));

      if (response.isSuccess) {
        final newToken = response.data?.token;
        if (newToken != null) {
          setToken(newToken, physicalId, passcode);
        }

        return newToken;
      }
    }

    return null;
  }

  String? unitId() => _unitId;

  String _padding(String input) {
    final data = input.replaceAll('-', '').toLowerCase();
    var tmp = data;

    while (tmp.length < 16) {
      tmp = '$tmp$data';
    }

    return tmp.substring(0, 16);
  }
}

extension ResponsableUtils on Responsable {
  bool get isSuccess => (statusCode ?? 0) / 100 == 2;
}
