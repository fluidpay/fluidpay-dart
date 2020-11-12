import 'dart:convert';
import 'dart:math';

import 'package:fluidpay/com/fluidpay/user/request.dart';
import 'package:test/test.dart';

void main() {
  test('forgot username request toJson', _forgotUsernameRequestToJsonTest);
  test('forgot password request toJson', _forgotPasswordRequestToJsonTest);
  test('forgot password reset request toJson', _forgotPasswordResetRequestToJsonTest);
  test('user get request getUrl with id', _userGetRequestGetUrlTest_idPassed_urlContainsId);
  test('user get request getUrl without id', _userGetRequestGetUrlTest_withoutId_urlHasNoId);
  test('remove totp request toJson', _removeTotpRequestToJsonTest);
  test('user create request toJson', _userCreateRequestToJsonTest);
  test('user update request toJson', _userUpdateRequestToJsonTest);
  test('user update request getUrl with id', _userUpdateRequestGetUrlTest_idPassed_urlContainsId);
  test('users request getUrl with params', _usersRequestGetUrlTest_withParams_urlContainsParams);
  test('users request getUrl without params', _usersRequestGetUrlTest_withoutParams_urlHasNoParams);
  test('user loginas request getUrl', _userLoginAsRequestGetUrlTest);
  test('user delete request getUrl', _userDeleteRequestGetUrlTest);
  test('user copy request toJson', _userCopyRequestToJsonTest);
  test('user copy request getUrl', _userCopyRequestGetUrlTest);
  test('user resend welcome request getUrl', _userResendWelcomeRequestGetUrlTest);
}

void _userResendWelcomeRequestGetUrlTest() {
  final request = UserResendWelcomeEmailRequest(userId: 'userId');

  expect(request.getUrl(), '/user/userId/resend-welcome');
}

void _userCopyRequestGetUrlTest() {
  final request = UserCopyRequest(userId: 'userId');

  expect(request.getUrl(), '/user/userId/copy');
}

void _userCopyRequestToJsonTest() {
  final request = UserCopyRequest(
    userId: 'test userId',
    username: 'test username',
    name: 'test name',
    phone: 'test phone',
    email: 'test email',
    status: 'test status',
  );

  expect(jsonEncode(request.toJson()), _userCopyRequestJson);
}
final _userCopyRequestJson = '{"username":"test username","name":"test name","phone":"test phone","email":"test email","status":"test status"}';

void _userDeleteRequestGetUrlTest() {
  final request = UserDeleteRequest(userId: 'userId');

  expect(request.getUrl(), '/user/userId');
}

void _userLoginAsRequestGetUrlTest() {
  final request = UserLoginAsRequest(userId: 'userId');

  expect(request.getUrl(), '/user/loginas/userId');
}

void _usersRequestGetUrlTest_withParams_urlContainsParams() {
  final request = UsersRequest(accountType: 'accountType', accountTypeId: 'accountTypeId');

  expect(request.getUrl(), '/users/accountType/accountTypeId');
}

void _usersRequestGetUrlTest_withoutParams_urlHasNoParams() {
  final request = UsersRequest();

  expect(request.getUrl(), '/users');
}

void _userUpdateRequestGetUrlTest_idPassed_urlContainsId() {
  final request = UserUpdateRequest(userId: 'userId');

  expect(request.getUrl(), '/user/userId');
}


void _userUpdateRequestToJsonTest() {
  final request = UserUpdateRequest(
      userId: 'userId',
      username: 'test username',
      name: 'test name',
      phone: 'test phone',
      email: 'test email',
      status: 'test status',
      role: 'test role',
      defaults: 'test defaults',
  );

  expect(jsonEncode(request.toJson()), _userCreateJson);
}

void _userCreateRequestToJsonTest() {
  final request = UserCreateRequest(
      username: 'test username',
      name: 'test name',
      phone: 'test phone',
      email: 'test email',
      status: 'test status',
      role: 'test role',
      defaults: 'test defaults',
  );

  expect(jsonEncode(request.toJson()), _userCreateJson);
}
final _userCreateJson = '{"username":"test username","name":"test name","phone":"test phone","email":"test email","status":"test status","role":"test role","defaults":"test defaults"}';

void _removeTotpRequestToJsonTest() {
  final request = UserRemoveTotpRequest(totp: '939474', userId: 'userId');

  expect(jsonEncode(request.toJson()), '{"totp":"939474","user_id":"userId"}');
}

void _userGetRequestGetUrlTest_idPassed_urlContainsId() {
  final request = UserGetRequest('userId');

  expect(request.getUrl(), '/user/userId');
}

void _userGetRequestGetUrlTest_withoutId_urlHasNoId() {
  final request = UserGetRequest();
  expect(request.getUrl(), '/user');
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