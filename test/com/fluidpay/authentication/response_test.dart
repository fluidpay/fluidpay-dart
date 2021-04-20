import 'package:fluidpay/com/fluidpay/authentication/response.dart';
import 'package:test/test.dart';

void main() {
  test('test authentication login response fromJson', _authLoginResponseFromJson);
}
void _authLoginResponseFromJson() {
  final response = AuthLoginResponse.fromJson(_authLoginResponseMap);

  expect(response.status, 'test status');
  expect(response.statusCode, 200);
  expect(response.msg, 'test msg');
  expect(response.data?.token, 'test token');
  expect(response.data?.sid, 'test sid');
}
final _authLoginResponseMap = <String, dynamic> {
  'status': 'test status',
  'msg': 'test msg' ,
  'status_code': 200,
  'data': {
    'token': 'test token',
    'sid': 'test sid'
  }
};