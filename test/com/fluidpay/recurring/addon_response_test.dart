import 'dart:convert';

import 'package:fluidpay_dart/com/fluidpay/recurring/addon_response.dart';
import 'package:test/test.dart';

void main() {
  testAddOnResponse();
  testAddOnSearchResponse();
}

void testAddOnSearchResponse() {
  test('AddOnResponse fromJson to Json', () {
    var resp = AddOnSearchResponse.fromJson({
      'status': 'success',
      'data': [
        {'id': '132', 'updated_at': '2020-01-01', 'created_at': '2020-01-01'},
        {'id': '999', 'updated_at': '2020-01-01', 'created_at': '2020-01-01'}
      ],
      'total_count': 2,
    });
    expect(resp.status, 'success');
    expect(resp.totalCount, 2);
    expect(resp.data[0].id, '132');
    expect(resp.data[0].updatedAt, '2020-01-01');
    expect(resp.data[0].createdAt, '2020-01-01');
    expect(resp.data[1].id, '999');
    expect(resp.data[1].updatedAt, '2020-01-01');
    expect(resp.data[1].createdAt, '2020-01-01');
    expect(jsonEncode(resp.data),
        '[{"id":"132","created_at":"2020-01-01","updated_at":"2020-01-01"},{"id":"999","created_at":"2020-01-01","updated_at":"2020-01-01"}]');
    expect(jsonEncode(resp.toJson()),
        '{"status":"success","msg":null,"total_count":2,"data":[{"id":"132","created_at":"2020-01-01","updated_at":"2020-01-01"},{"id":"999","created_at":"2020-01-01","updated_at":"2020-01-01"}]}');
  });
}

void testAddOnResponse() {
  test('AddOnResponse fromJson to Json', () {
    var resp = AddOnResponse.fromJson({
      'status': 'success',
      'data': {
        'id': '132',
        'updated_at': '2020-01-01',
        'created_at': '2020-01-01'
      }
    });
    expect(jsonEncode(resp.data.toJson()),
        '{"id":"132","created_at":"2020-01-01","updated_at":"2020-01-01"}');
    expect(jsonEncode(resp.toJson()),
        '{"status":"success","msg":null,"total_count":null,"data":{"id":"132","created_at":"2020-01-01","updated_at":"2020-01-01"}}');
  });
}
