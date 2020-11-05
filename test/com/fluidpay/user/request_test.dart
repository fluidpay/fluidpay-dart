import 'dart:convert';

import 'package:fluidpay/com/fluidpay/user/request.dart';
import 'package:test/test.dart';

void main() {
  test('test forgot username request toJson', _forgotUsernameRequestToJsonTest);

  test('test forgot password request toJson', _forgotPasswordRequestToJsonTest);

  test('test forgot password reset request toJson', _forgotPasswordResetRequestToJsonTest);
}

void _forgotUsernameRequestToJsonTest() {
  final request = ForgotUsernameRequest(email: 'test email');

  expect(jsonEncode(request.toJson()), _forgotUsernameRequestJson);
}
final _forgotUsernameRequestJson = '{"email":"test email"}';

void _forgotPasswordRequestToJsonTest() {
  final request = ForgotPasswordRequest(username: 'test username');

  expect(jsonEncode(request.toJson()), _forgotPasswordRequestJson);
}
final _forgotPasswordRequestJson = '{"username":"test username"}';

void _forgotPasswordResetRequestToJsonTest() {
  final request = ForgotPasswordResetRequest(
      username: 'test username',
      resetCode: 'test resetCode',
      password: 'test password');

  expect(jsonEncode(request.toJson()), _forgotPasswordResetRequestJson);
}
final _forgotPasswordResetRequestJson = '{"username":"test username","reset_code":"test resetCode","password":"test password"}';