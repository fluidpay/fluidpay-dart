import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/cart/response.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:test/test.dart';

void main() {
  test('cart get response fromJson', _testCartGetResponseFromJson);
  test('cart search response fromJson', _testCartSearchResponseFromJson);
  test('cart get all response fromJson', _testCartGetAllResponseFromJson);
  test('cart create response fromJson', _testCartCreateResponseFromJson);
  test('cart update response fromJson', _testCartUpdateResponseFromJson);
  test('cart delete response fromJson', _testCartDeleteResponseFromJson);
  test('cart checkout response fromJson', _testCheckoutResponseFromJson);
}

void _testCartGetResponseFromJson() {
  final map = <String, dynamic>{};
  map.addAll(_cartMap);
  map['products'] = [{
    'id': 'test productId',
    'public_hash': 'test publicHash',
    'merchant_id': 'test merchantId',
    'name': 'test name',
    'img': 'test img',
    'price': 100,
    'local_tax': 100,
    'national_tax': 100,
    'fixed_amount': true,
    'fixed_qty': true,
    'description': 'test description',
    'created_at': '2017-10-19T20:15:19.560708Z',
    'updated_at': '2017-10-19T20:15:19.560708Z',
    'deleted_at': '2017-10-19T20:15:19.560708Z',
  }];

  final response = CartGetResponse.fromJson(_wrapResponseData(map));

  _testResponsable(response);
  _testCartData(response.data);
}

void _testCartSearchResponseFromJson() {
  final response = CartSearchResponse.fromJson(_wrapResponseData([_cartMap]));

  _testResponsable(response);
  _testCartData(response.data.first);
}

void _testCartGetAllResponseFromJson() {
  final response = CartGetAllResponse.fromJson(_wrapResponseData([_cartMap]));

  _testResponsable(response);
  _testCartData(response.data.first);
}

void _testCartCreateResponseFromJson() {
  final response = CartCreateResponse.fromJson(_wrapResponseData(_cartMap));

  _testResponsable(response);
  _testCartData(response.data);
}

void _testCartUpdateResponseFromJson() {
  final response = CartUpdateResponse.fromJson(_wrapResponseData(_cartMap));

  _testResponsable(response);
  _testCartData(response.data);
}

void _testCartDeleteResponseFromJson() {
  final response = CartDeleteResponse.fromJson(_wrapResponseData('test data'));

  _testResponsable(response);
  expect('test data', response.data);
}

void _testResponsable(Responsable responsable) {
  expect(responsable.status, 'test status');
  expect(responsable.msg, 'test msg');
  expect(responsable.statusCode, 200);
  expect(responsable.totalCount, 100);
}
void _testCartData(CartData cartData) {
  expect(cartData.id, 'test id');
  expect(cartData.publicHash, 'test publicHash');
  expect(cartData.merchantId, 'test merchantId');
  expect(cartData.cardProcessorId, 'test cardProcessorId');
  expect(cartData.achProcessorId, 'test achProcessorId');
  expect(cartData.name, 'test name');
  expect(cartData.description, 'test description');
  expect(cartData.type, 'test type');
  expect(cartData.customFieldsGroup, 'test customFieldsGroup');
  if (cartData is CartDataStringProduct) {
    expect(cartData.products[0], 'test productId');
  } else {
    expect(cartData.products[0].productId, 'test productId');
    expect(cartData.products[0].publicHash, 'test publicHash');
    expect(cartData.products[0].merchantId, 'test merchantId');
    expect(cartData.products[0].name, 'test name');
    expect(cartData.products[0].img, 'test img');
    expect(cartData.products[0].price, 100);
    expect(cartData.products[0].localTax, 100);
    expect(cartData.products[0].nationalTax, 100);
    expect(cartData.products[0].fixedAmount, true);
    expect(cartData.products[0].fixedQty, true);
  }
  expect(cartData.description, 'test description');
  expect(cartData.createdAt, _dateTime);
  expect(cartData.updatedAt, _dateTime);
  expect(cartData.deletedAt, _dateTime);
  expect(cartData.showAvailableProducts, true);
  expect(cartData.requireShippingDetails, true);
  expect(cartData.emailReceipt, true);
  expect(cartData.payments, true);
  expect(cartData.shopifyHash, 'test shopifyHash');
  expect(cartData.createdAt, _dateTime);
  expect(cartData.updatedAt, _dateTime);
  expect(cartData.deletedAt, _dateTime);
}

Map<String, dynamic> _wrapResponseData(dynamic data) =>
    {
      'status': 'test status',
      'msg': 'test msg',
      'status_code': 200,
      'total_count': 100,
      'data': data
    };
final _dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');
final _cartMap = <String, dynamic>{
  'id': 'test id',
  'public_hash': 'test publicHash',
  'merchant_id': 'test merchantId',
  'card_processor_id': 'test cardProcessorId',
  'ach_processor_id': 'test achProcessorId',
  'name': 'test name',
  'description': 'test description',
  'type': 'test type',
  'custom_fields_group': 'test customFieldsGroup',
  'products': ['test productId'],
  'show_available_products': true,
  'require_shipping_details': true,
  'email_receipt': true,
  'payments': true,
  'shopify_hash': 'test shopifyHash',
  'created_at': '2017-10-19T20:15:19.560708Z',
  'updated_at': '2017-10-19T20:15:19.560708Z',
  'deleted_at': '2017-10-19T20:15:19.560708Z',
};

void _testCheckoutResponseFromJson() {
  final response = CartCheckoutResponse.fromJson(_wrapResponseData(null /* TransactionResponseData is already tested */));

  _testResponsable(response);
}