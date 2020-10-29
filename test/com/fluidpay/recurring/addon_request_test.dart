import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:test/test.dart';

void main() {
  testAddonCreateRequest();
  testAddonRequest();
}

void testAddonCreateRequest() {
  test('AddOnCreateRequest to Json', () {
    var req = AddOnCreateRequest(
            name: 'test addon',
            description: 'test addon description',
            amount: 200,
            percentage: 10,
            duration: 10)
        .toJson();
    var expected = {
      'name': 'test addon',
      'description': 'test addon description',
      'amount': 200,
      'percentage': 10,
      'duration': 10,
    };
    expect(req['name'], expected['name']);
    expect(req['description'], expected['description']);
    expect(req['amount'], expected['amount']);
    expect(req['percentage'], expected['percentage']);
    expect(req['duration'], expected['duration']);
  });
}

void testAddonRequest() {
  test('AddOnRequest to Json', () {
    var req = AddOnRequest(
            id: 'test_id',
            description: 'test addon description',
            amount: 200,
            percentage: 10,
            duration: 10)
        .toJson();
    var expected = {
      'id': 'test_id',
      'name': 'test addon',
      'description': 'test addon description',
      'amount': 200,
      'percentage': 10,
      'duration': 10,
    };
    expect(req['id'], expected['id']);
    expect(req['description'], expected['description']);
    expect(req['amount'], expected['amount']);
    expect(req['percentage'], expected['percentage']);
    expect(req['duration'], expected['duration']);
  });
}
