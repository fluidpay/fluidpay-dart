import 'dart:convert';

import 'package:fluidpay/com/fluidpay/recurring/discount_response.dart';
import 'package:test/test.dart';

void main() {
  testDiscountResponse();
  testDiscountSearchResponse();
}

void testDiscountSearchResponse() {
  test('DiscountResponse fromJson to Json', () {
    var resp = DiscountSearchResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': [
        {
          'id': '132',
          'name': 'test discount',
          'description': 'test discount description',
          'amount': 200,
          'duration': 0,
          'updated_at': '2025-01-01',
          'created_at': '2025-01-01'
        },
        {
          'id': '999',
          'name': 'test discount',
          'description': 'test discount description',
          'percentage': 10,
          'duration': 0,
          'updated_at': '2025-01-01',
          'created_at': '2025-01-01'
        }
      ],
      'total_count': 2,
    });
    expect(resp.status, 'success');
    expect(resp.totalCount, 2);

    expect(resp.data[0].id, '132');
    expect(resp.data[0].name, 'test discount');
    expect(resp.data[0].description, 'test discount description');
    expect(resp.data[0].amount, 200);
    expect(resp.data[0].duration, 0);
    expect(resp.data[0].updatedAt, '2025-01-01');
    expect(resp.data[0].createdAt, '2025-01-01');

    expect(resp.data[1].id, '999');
    expect(resp.data[1].name, 'test discount');
    expect(resp.data[1].description, 'test discount description');
    expect(resp.data[1].percentage, 10);
    expect(resp.data[1].duration, 0);
    expect(resp.data[1].updatedAt, '2025-01-01');
    expect(resp.data[1].createdAt, '2025-01-01');

    expect(jsonEncode(resp.data),
        '[{"id":"132","name":"test discount","description":"test discount description","amount":200,"percentage":null,"duration":0,"created_at":"2025-01-01","updated_at":"2025-01-01"},{"id":"999","name":"test discount","description":"test discount description","amount":null,"percentage":10,"duration":0,"created_at":"2025-01-01","updated_at":"2025-01-01"}]');
    expect(jsonEncode(resp.toJson()),
        '{"status":"success","msg":"success","total_count":2,"data":[{"id":"132","name":"test discount","description":"test discount description","amount":200,"percentage":null,"duration":0,"created_at":"2025-01-01","updated_at":"2025-01-01"},{"id":"999","name":"test discount","description":"test discount description","amount":null,"percentage":10,"duration":0,"created_at":"2025-01-01","updated_at":"2025-01-01"}]}');
  });
}

void testDiscountResponse() {
  test('DiscountResponse fromJson to Json', () {
    var resp = DiscountResponse.fromJson({
      'status': 'success',
      'msg': 'success',
      'data': {
        'id': '132',
        'name': 'test discount',
        'description': 'test discount description',
        'amount': 200,
        'duration': 0,
        'updated_at': '2025-01-01',
        'created_at': '2025-01-01'
      }
    });
    expect(jsonEncode(resp.data.toJson()),
        '{"id":"132","name":"test discount","description":"test discount description","amount":200,"percentage":null,"duration":0,"created_at":"2025-01-01","updated_at":"2025-01-01"}');
    expect(jsonEncode(resp.toJson()),
        '{"status":"success","msg":"success","total_count":null,"data":{"id":"132","name":"test discount","description":"test discount description","amount":200,"percentage":null,"duration":0,"created_at":"2025-01-01","updated_at":"2025-01-01"}}');
  });
}
