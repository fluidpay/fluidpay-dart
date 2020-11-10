import 'dart:convert';

import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/merchant/products/request.dart';
import 'package:test/test.dart';

void main() {
  test('ProductCreateRequest toJson', testProductCreateRequestToJson);
  test('ProductUpdateRequest toJson', testProductUpdateRequestToJson);
  test('ProductDeleteRequest getUrl', testProductDeleteRequestGetUrl);
  test('ProductGetRequest getUrl', testProductGetRequestGetUrl);
  test('ProductSearchRequest toJson', testProductSearchRequestGetUrl);
}

void testProductCreateRequestToJson() {
  var req = ProductCreateRequest(
      merchantId: 'test_merchant',
      name: 'test product',
      img: 'test-img-url',
      price: 10,
      localTax: 15,
      nationalTax: 20,
      fixedAmount: true,
      fixedQty: true,
      description: 'test description');

  expect(jsonEncode(req.toJson()),
      '{"name":"test product","img":"test-img-url","price":10,"local_tax":15,"national_tax":20,"fixed_amount":true,"fixed_qty":true,"description":"test description"}');
}

void testProductUpdateRequestToJson() {
  var req = ProductUpdateRequest(
    merchantId: 'test_merchant',
    productId: 'test product id',
    name: 'test product',
    img: 'test-img-url',
    price: 10,
    localTax: 15,
    nationalTax: 20,
    fixedAmount: true,
    fixedQty: true,
    description: 'test description',
  );

  expect(jsonEncode(req.toJson()),
      '{"name":"test product","img":"test-img-url","price":10,"local_tax":15,"national_tax":20,"fixed_amount":true,"fixed_qty":true,"description":"test description"}');
}

void testProductDeleteRequestGetUrl() {
  var req = ProductDeleteRequest(
      productId: 'some_product_id', merchantId: 'merchant_id');
  expect(req.getUrl(), '/merchant/merchant_id/product/some_product_id');
}

void testProductGetRequestGetUrl() {
  var req = ProductGetRequest(
      productId: 'some_product_id', merchantId: 'merchant_id');
  expect(req.getUrl(), '/merchant/merchant_id/product/some_product_id');
}

void testProductSearchRequestGetUrl() {
  var startDate = DateTime.fromMicrosecondsSinceEpoch(1604994562508761);
  var endDate = DateTime.fromMicrosecondsSinceEpoch(1604994562508761);
  var req = ProductSearchRequest(
    id: QuerySearchParamString(
      operator: SearchOperator.equals,
      value: '',
    ),
    name: QuerySearchParamString(
      operator: SearchOperator.equals,
      value: '',
    ),
    price: QuerySearchParamInt(
      operator: SearchOperator.equals,
      value: 10,
    ),
    createdAt: QuerySearchParamDateRange(
      startDate: startDate,
      endDate: endDate,
    ),
    updatedAt: QuerySearchParamDateRange(
      startDate: startDate,
      endDate: endDate,
    ),
    deletedAt: QuerySearchParamDateRange(
      startDate: startDate,
      endDate: endDate,
    ),
    offset: 0,
    limit: 100,
  );

  expect(jsonEncode(req.toJson()),
      '{"merchant_id":null,"id":{"operator":"=","value":""},"name":{"operator":"=","value":""},"price":{"operator":"=","value":10},"created_at":{"start_date":"2020-11-10T08:49:22.508761","end_date":"2020-11-10T08:49:22.508761"},"updated_at":{"start_date":"2020-11-10T08:49:22.508761","end_date":"2020-11-10T08:49:22.508761"},"deleted_at":{"start_date":"2020-11-10T08:49:22.508761","end_date":"2020-11-10T08:49:22.508761"},"offset":0,"limit":100}');
}
