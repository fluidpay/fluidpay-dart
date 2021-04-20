import 'dart:convert';
import 'dart:math';

import 'package:fluidpay/com/fluidpay/recurring/addon_response.dart';
import 'package:test/test.dart';

void main() {
  testAddOnResponse();
  testAddOnSearchResponse();
}

void testAddOnSearchResponse() {
  test('AddOnResponse fromJson to Json', () {
    var resp = AddOnSearchResponse.fromJson({
      'status': 'success',
      'status_code':200,
      'msg': 'success',
      'data': [
        {
          'id': '132',
          'name': 'test addon',
          'description': 'test addon description',
          'amount': 200,
          'duration': 0,
          'updated_at': '2020-01-01',
          'created_at': '2020-01-01'
        },
        {
          'id': '999',
          'name': 'test addon',
          'description': 'test addon description',
          'percentage': 10,
          'duration': 0,
          'updated_at': '2020-01-01',
          'created_at': '2020-01-01'
        }
      ],
      'total_count': 2,
    });
    expect(resp.status, 'success');
    expect(resp.statusCode, 200);
    expect(resp.totalCount, 2);

    expect(resp.data?.isNotEmpty, true);
    expect(resp.data?[0].id, '132');
    expect(resp.data?[0].name, 'test addon');
    expect(resp.data?[0].description, 'test addon description');
    expect(resp.data?[0].amount, 200);
    expect(resp.data?[0].duration, 0);
    expect(resp.data?[0].updatedAt, '2020-01-01');
    expect(resp.data?[0].createdAt, '2020-01-01');

    expect(resp.data?[1].id, '999');
    expect(resp.data?[1].name, 'test addon');
    expect(resp.data?[1].description, 'test addon description');
    expect(resp.data?[1].percentage, 10);
    expect(resp.data?[1].duration, 0);
    expect(resp.data?[1].updatedAt, '2020-01-01');
    expect(resp.data?[1].createdAt, '2020-01-01');

    expect(jsonEncode(resp.data),
        '[{"id":"132","name":"test addon","description":"test addon description","amount":200,"percentage":null,"duration":0,"created_at":"2020-01-01","updated_at":"2020-01-01"},{"id":"999","name":"test addon","description":"test addon description","amount":null,"percentage":10,"duration":0,"created_at":"2020-01-01","updated_at":"2020-01-01"}]');
    expect(jsonEncode(resp.toJson()),
        '{"status":"success","msg":"success","status_code":200,"total_count":2,"data":[{"id":"132","name":"test addon","description":"test addon description","amount":200,"percentage":null,"duration":0,"created_at":"2020-01-01","updated_at":"2020-01-01"},{"id":"999","name":"test addon","description":"test addon description","amount":null,"percentage":10,"duration":0,"created_at":"2020-01-01","updated_at":"2020-01-01"}]}');
  });
}

void testAddOnResponse() {
  test('AddOnResponse fromJson to Json', () {
    var resp = AddOnResponse.fromJson({
      'status': 'success',
      'status_code':200,
      'msg': 'success',
      'data': {
        'id': '132',
        'name': 'test addon',
        'description': 'test addon description',
        'amount': 200,
        'duration': 0,
        'updated_at': '2020-01-01',
        'created_at': '2020-01-01'
      }
    });
    expect(jsonEncode(resp.data?.toJson()),
        '{"id":"132","name":"test addon","description":"test addon description","amount":200,"percentage":null,"duration":0,"created_at":"2020-01-01","updated_at":"2020-01-01"}');
    expect(jsonEncode(resp.toJson()),
        '{"status":"success","msg":"success","status_code":200,"total_count":null,"data":{"id":"132","name":"test addon","description":"test addon description","amount":200,"percentage":null,"duration":0,"created_at":"2020-01-01","updated_at":"2020-01-01"}}');
  });
}
