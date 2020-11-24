import 'dart:convert';

import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/merchant/cart/request.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:test/test.dart';

void main() {
  test('cart get request getUrl', _testCartGetRequestGetUrl);
  test('cart search request toJson', _testCartSearchRequestToJson);
  test('cart search request getUrl', _testCartSearchRequestGetUrl);
  test('cart get all request getUrl', _testCartGetAllRequestGetUrl);
  test('cart create request toJson', _testCartCreateRequestToJson);
  test('cart create request getUrl', _testCartCreateRequestGetUrl);
  test('cart update request toJson', _testCartUpdateRequestToJson);
  test('cart update request getUrl', _testCartUpdateRequestGetUrl);
  test('cart delete request getUrl', _testCartDeleteRequestGetUrl);
}

void _testCartGetRequestGetUrl() {
  final request = CartGetRequest(merchantId: 'merchantId', cartId: 'cartId');
  expect('/merchant/merchantId/cart/cartId', request.getUrl());
}

void _testCartSearchRequestToJson() {
  final request = CartSearchRequest(
    merchantId: 'merchantId',
    id: QuerySearchParamString(
        operator: SearchOperator.notEquals, value: 'test value'),
    name: QuerySearchParamString(
        operator: SearchOperator.notEquals, value: 'test value'),
    product: QuerySearchParamString(
        operator: SearchOperator.notEquals, value: 'test value'),
    createdAt: QuerySearchParamDateRange(
        startDate: DateTime.utc(2020, 2), endDate: DateTime.utc(2020, 3)),
    updatedAt: QuerySearchParamDateRange(
        startDate: DateTime.utc(2020, 2), endDate: DateTime.utc(2020, 3)),
    deletedAt: QuerySearchParamDateRange(
        startDate: DateTime.utc(2020, 2), endDate: DateTime.utc(2020, 3)),
    offset: 100,
    limit: 200,
  );

  expect(_cartSearchRequestJson, jsonEncode(request.toJson()));
}

final _cartSearchRequestJson =
    '{"id":$_querySPStringJson,"name":$_querySPStringJson,"product":$_querySPStringJson,"created_at":$_searchDateRangeJson,"updated_at":$_searchDateRangeJson,"deleted_at":$_searchDateRangeJson,"offset":100,"limit":200}';
final _querySPStringJson = '{"operator":"!=","value":"test value"}';
final _searchDateRangeJson =
    '{"start_date":"2020-02-01T00:00:00.000Z","end_date":"2020-03-01T00:00:00.000Z"}';

void _testCartSearchRequestGetUrl() {
  final request = CartSearchRequest(merchantId: 'merchantId');

  expect('/merchant/merchantId/cart/search', request.getUrl());
}

void _testCartGetAllRequestGetUrl() {
  final request = CartGetAllRequest(merchantId: 'merchantId');

  expect('/merchant/merchantId/cart', request.getUrl());
}

void _testCartCreateRequestToJson() {
  final dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');
  final request = CartCreateRequest(
      merchantId: 'merchantId',
      cart: CartData(
        id: 'test id',
        merchantId: 'test merchantId',
        cardProcessorId: 'test cardProcessorId',
        achProcessorId: 'test achProcessorId',
        name: 'test name',
        description: 'test description',
        type: 'test type',
        customFieldsGroup: 'test customFieldsGroup',
        products: [
          ProductData(
            productId: 'test productId',
            publicHash: 'test publicHash',
            merchantId: 'test merchantId',
            name: 'test name',
            img: 'test img',
            price: 100,
            localTax: 100,
            nationalTax: 100,
            fixedAmount: true,
            fixedQty: true,
            description: 'test description',
            createdAt: dateTime,
            updatedAt: dateTime,
            deletedAt: dateTime,
          )
        ],
        showAvailableProducts: true,
        requireShippingDetails: true,
        emailReceipt: true,
        payments: ['test value 1', 'test value 2'],
        shopifyHash: 'test shopifyHash',
        createdAt: dateTime,
        updatedAt: dateTime,
        deletedAt: dateTime,
      ));

  expect(_cartJson, jsonEncode(request.toJson()));
}

final _cartJson =
    '{"id":"test id","merchant_id":"test merchantId","card_processor_id":"test cardProcessorId","ach_processor_id":"test achProcessorId","name":"test name","description":"test description","type":"test type","custom_fields_group":"test customFieldsGroup","products":[$_productJson],"show_available_products":true,"require_shipping_details":true,"email_receipt":true,"payments":["test value 1","test value 2"],"shopify_hash":"test shopifyHash","created_at":"2017-10-19T20:15:19.560708Z","updated_at":"2017-10-19T20:15:19.560708Z","deleted_at":"2017-10-19T20:15:19.560708Z"}';
final _productJson =
    '{"id":"test productId","public_hash":"test publicHash","merchant_id":"test merchantId","name":"test name","img":"test img","price":100,"local_tax":100,"national_tax":100,"fixed_amount":true,"fixed_qty":true,"description":"test description","created_at":"2017-10-19T20:15:19.560708Z","updated_at":"2017-10-19T20:15:19.560708Z","deleted_at":"2017-10-19T20:15:19.560708Z"}';

void _testCartCreateRequestGetUrl() {
  final request = CartCreateRequest(merchantId: 'merchantId', cart: CartData());

  expect('/merchant/merchantId/cart', request.getUrl());
}

void _testCartUpdateRequestToJson() {
  final dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');
  final request = CartUpdateRequest(
      merchantId: 'merchantId',
      cartId: 'cartId',
      cart: CartData(
        id: 'test id',
        merchantId: 'test merchantId',
        cardProcessorId: 'test cardProcessorId',
        achProcessorId: 'test achProcessorId',
        name: 'test name',
        description: 'test description',
        type: 'test type',
        customFieldsGroup: 'test customFieldsGroup',
        products: [
          ProductData(
            productId: 'test productId',
            publicHash: 'test publicHash',
            merchantId: 'test merchantId',
            name: 'test name',
            img: 'test img',
            price: 100,
            localTax: 100,
            nationalTax: 100,
            fixedAmount: true,
            fixedQty: true,
            description: 'test description',
            createdAt: dateTime,
            updatedAt: dateTime,
            deletedAt: dateTime,
          )
        ],
        showAvailableProducts: true,
        requireShippingDetails: true,
        emailReceipt: true,
        payments: ['test value 1', 'test value 2'],
        shopifyHash: 'test shopifyHash',
        createdAt: dateTime,
        updatedAt: dateTime,
        deletedAt: dateTime,
      ));

  expect(_cartJson, jsonEncode(request.toJson()));
}

void _testCartUpdateRequestGetUrl() {
  final request = CartUpdateRequest(merchantId: 'merchantId', cartId: 'cartId', cart: CartData());

  expect('/merchant/merchantId/cart/cartId', request.getUrl());
}

void _testCartDeleteRequestGetUrl() {
  final request = CartDeleteRequest(merchantId: 'merchantId', cartId: 'cartId');

  expect('/merchant/merchantId/cart/cartId', request.getUrl());
}
