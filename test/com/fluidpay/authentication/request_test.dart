import 'dart:convert';

import 'package:fluidpay/com/fluidpay/authentication/request.dart';
import 'package:test/test.dart';

void main() {
  test('test authentication login request toJson', _testAuthLoginRequestToJsonTest);
}

void _testAuthLoginRequestToJsonTest() {
  final request = AuthLoginRequest()
      ..username = 'test username'
      ..password = 'test password'
      ..authKey = 'test authKey'
      ..totp = 'test totp';

  expect(jsonEncode(request.toJson()), _authLoginRequestJson);
}
final _authLoginRequestJson = '{"auth_key":"test authKey","username":"test username","password":"test password","totp":"test totp"}';
