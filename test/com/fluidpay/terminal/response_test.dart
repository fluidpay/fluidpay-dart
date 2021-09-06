import 'package:fluidpay/com/fluidpay/terminal/response.dart';
import 'package:test/test.dart';

void main() {
  testTerminalGetResponse();
}

void testTerminalGetResponse() {
  test('TerminalGetResponse fromJson to Json', () {
    var resp = TerminalGetResponse.fromJson({
      'status': 'success',
      'status_code': 200,
      'msg': 'success',
      'total_count': 1,
      'data': [
        {
          'id': 'test_id',
          'merchant_id': 'test_merchant_id',
          'manufacturer': 'manufacturer',
          'model': 'model',
          'serial_number': '000000000001',
          'tpn': '000000000001',
          'description': 'test description',
          'status': 'active',
          'auth_key': '123456',
          'register_id': '11994',
          'auto_settle': true,
          'settle_at': '00:00:00',
          'created_at': '2021-09-06T08:07:59.000Z',
          'updated_at': '2021-09-06T08:07:59.000Z'
        }
      ]
    });

    expect(resp.status, 'success');
    expect(resp.statusCode, 200);
    expect(resp.msg, 'success');
    expect(resp.totalCount, 1);

    expect(resp.data?.isNotEmpty, true);
    expect(resp.data?[0].id, 'test_id');
    expect(resp.data?[0].merchantId, 'test_merchant_id');
    expect(resp.data?[0].manufacturer, 'manufacturer');
    expect(resp.data?[0].model, 'model');
    expect(resp.data?[0].serialNumber, '000000000001');
    expect(resp.data?[0].tpn, '000000000001');
    expect(resp.data?[0].description, 'test description');
    expect(resp.data?[0].status, 'active');
    expect(resp.data?[0].authKey, '123456');
    expect(resp.data?[0].registerId, '11994');
    expect(resp.data?[0].autoSettle, true);
    expect(resp.data?[0].settleAt, '00:00:00');
    expect(resp.data?[0].createdAt, DateTime.parse('2021-09-06T08:07:59.000Z'));
    expect(resp.data?[0].updatedAt, DateTime.parse('2021-09-06T08:07:59.000Z'));
  });
}
