import 'dart:convert';
import 'dart:mirrors';

import 'package:http/http.dart' as http;

import 'common/actions.dart';
import 'common/base.dart';

class FluidPay {
  final String baseUrl;
  final String apiKey;

  FluidPay(this.apiKey, {this.baseUrl = 'https://sandbox.fluidpay.com/api'});

  Future<Response> create<Response extends BaseResponse>(ForCreate request) {
    return _CommonClient(baseUrl, apiKey)
        .post(request)
        .then((value) => parseResponse<Response>(value))
        .catchError((err) => Future.error(err));
  }

  Future<Response> get<Response extends BaseResponse>(
      ForSearch request) {
    return _CommonClient(baseUrl, apiKey).get(request).then((value) {
      return parseResponse<Response>(value);
    });
  }

  Response parseResponse<Response>(Map<String, dynamic> value) {
    var typ = reflectType(Response);
    if (typ is ClassMirror) {
      return typ.newInstance(Symbol('fromJson'), [value]).reflectee as Response;
    }
    throw ArgumentError();
  }
}

class _CommonClient {
  final String baseUrl;
  final String apiKey;

  _CommonClient(this.baseUrl, this.apiKey);

  Future<Map<String, dynamic>> post(BaseRequest baseRequest) => http
      .post(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
        body: jsonEncode(baseRequest.toJson()),
      )
      .then((value) => jsonDecode(value.body));

  Future<Map<String, dynamic>> get(BaseRequest baseRequest) => http.get(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
      ).then((value) => jsonDecode(value.body));
}
