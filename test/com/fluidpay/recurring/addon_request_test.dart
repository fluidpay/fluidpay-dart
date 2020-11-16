import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:test/test.dart';

void main() {
  testAddonCreateRequest();
  testAddonUpdateRequest();
  testAddonRequest();
  testAddonDeleteRequest();
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

void testAddonUpdateRequest() {
  test('testAddonUpdateRequest to Json', () {
    var addonReq = AddOnUpdateRequest(
        id: 'test_id',
        name: 'test addon',
        description: 'test addon description',
        amount: 200,
        percentage: 10,
        duration: 10);

    var req = addonReq.toJson();
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
    expect(addonReq.getUrl(), '/recurring/addon/test_id');
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

void testAddonDeleteRequest() {
  test('testAddonDeleteRequest to Json', () {
    var addonReq = AddOnDeleteRequest('test_id');

    var req = addonReq.toJson();
    var expected = {};
    expect(req, expected);
    expect(addonReq.getUrl(), '/recurring/addon/test_id');
  });
}
