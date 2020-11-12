import 'package:fluidpay/com/fluidpay/user/response_data.dart';
import 'package:test/test.dart';

void main() {
  test('user response data fromJson', _userResponseDataFromJsonTest);
}

void _userResponseDataFromJsonTest() {
  final dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');
  final response = UserResponseData.fromJson(_userResponseDataMap);

  expect(response.id, 'test id');
  expect(response.username, 'test username');
  expect(response.name, 'test name');
  expect(response.phone, 'test phone');
  expect(response.email, 'test email');
  expect(response.status, 'test status');
  expect(response.role, 'test role');
  expect(response.accountType, 'test accountType');
  expect(response.accountTypeId, 'test accountTypeId');
  expect(response.permissions, 'test permissions');
  expect(response.notifications.merchant.transactionReceipts, true);
  expect(response.notifications.merchant.settlementReceipts, true);
  expect(response.notifications.merchant.triggeredRules, true);
  expect(response.notifications.partner.transactionReceipts, true);
  expect(response.notifications.partner.settlementReceipts, true);
  expect(response.notifications.partner.triggeredRules, true);
  expect(response.notifications.admin.transactionReceipts, true);
  expect(response.notifications.admin.settlementReceipts, true);
  expect(response.notifications.admin.triggeredRules, true);
  expect(response.defaults, 'test defaults');
  expect(response.twoFactorEnabled, true);
  expect(response.createdAt, dateTime);
  expect(response.updatedAt, dateTime);
}

final _userResponseDataMap = <String, dynamic>{
  'id': 'test id',
  'username': 'test username',
  'name': 'test name',
  'phone': 'test phone',
  'email': 'test email',
  'status': 'test status',
  'role': 'test role',
  'account_type': 'test accountType',
  'account_type_id': 'test accountTypeId',
  'permissions': 'test permissions',
  'notifications': {
    'merchant': {
      'transaction_receipts': true,
      'settlement_receipts': true,
      'triggered_rules': true
    },
    'partner': {
      'transaction_receipts': true,
      'settlement_receipts': true,
      'triggered_rules': true
    },
    'admin': {
      'transaction_receipts': true,
      'settlement_receipts': true,
      'triggered_rules': true
    }
  },
  'defaults': 'test defaults',
  'two_factor_enabled': true,
  'created_at': '2017-10-19T20:15:19.560708Z',
  'updated_at': '2017-10-19T20:15:19.560708Z'
};
