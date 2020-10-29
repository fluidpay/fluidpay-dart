import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:test/test.dart';

void main() {
  testDiscountCreateRequest();
  testDiscountRequest();
}

void testDiscountCreateRequest() {
  test('DiscountCreateRequest to Json', () {
    var req = AddOnCreateRequest(
            name: 'test discount',
            description: 'test discount description',
            amount: 200,
            percentage: 10,
            duration: 10)
        .toJson();
    var expected = {
      'name': 'test discount',
      'description': 'test discount description',
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

void testDiscountRequest() {
  test('DiscountRequest to Json', () {
    var req = DiscountRequest(
            id: 'test_id',
            description: 'test discount description',
            amount: 200,
            percentage: 10,
            duration: 10)
        .toJson();
    var expected = {
      'id': 'test_id',
      'name': 'test discount',
      'description': 'test discount description',
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
