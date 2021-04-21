import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:test/test.dart';

void main() {
  testDiscountCreateRequest();
  testDiscountUpdateRequest();
  testDiscountRequest();
}

void testDiscountCreateRequest() {
  test('DiscountCreateRequest to Json', () {
    var req = DiscountCreateRequest(
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

void testDiscountUpdateRequest() {
  test('testDiscountUpdateRequest to Json', () {
    var discountReq = DiscountUpdateRequest(
        id: 'test_id',
        name: 'test discount',
        description: 'test discount description',
        amount: 200,
        percentage: 10,
        duration: 10);

    var req = discountReq.toJson();
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
    expect(discountReq.getPath(), '/recurring/discount/test_id');
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

void testDiscountDeleteRequest() {
  test('testDiscountDeleteRequest to Json', () {
    var discountReq = DiscountDeleteRequest('test_id');

    var req = discountReq.toJson();
    var expected = {};
    expect(req, expected);
    expect(discountReq.getPath(), '/recurring/discount/test_id');
  });
}
