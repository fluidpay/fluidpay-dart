import 'dart:convert';

import 'package:fluidpay/com/fluidpay/merchant/products/response.dart';
import 'package:test/test.dart';

void main() {
  test('ProductCreateResponse toJson', testProductCreateResponseToJson);
  test('ProductUpdateResponse toJson', testProductUpdateResponseToJson);
  test('ProductDeleteResponse toJson', testProductDeleteResponseToJson);
  test('ProductGetResponse toJson', testProductGetResponseToJson);
  test('ProductSearchResponse toJson', testProductSearchResponseToJson);
}

void testProductCreateResponseToJson() {
  var req = ProductCreateResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'data': {
      'id': 'test id',
      'public_hash': 'test public hash',
      'merchant_id': 'test merchant',
      'name': 'test name',
      'img': 'test img',
      'price': 5,
      'local_tax': 10,
      'national_tax': 15,
      'fixed_amount': true,
      'fixed_qty': true,
      'description': 'test description',
      'created_at': '2020-09-05',
      'updated_at': '2020-09-05',
      'deleted_at': '2020-09-05',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data.productId, 'test id');
  expect(req.data.publicHash, 'test public hash');
  expect(req.data.merchantId, 'test merchant');
  expect(req.data.name, 'test name');
  expect(req.data.img, 'test img');
  expect(req.data.price, 5);
  expect(req.data.localTax, 10);
  expect(req.data.nationalTax, 15);
  expect(req.data.fixedAmount, true);
  expect(req.data.fixedQty, true);
  expect(req.data.description, 'test description');
  expect(req.data.createdAt, '2020-09-05');
  expect(req.data.updatedAt, '2020-09-05');
  expect(req.data.deletedAt, '2020-09-05');
}

void testProductUpdateResponseToJson() {
  var req = ProductUpdateResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'data': {
      'id': 'test id',
      'public_hash': 'test public hash',
      'merchant_id': 'test merchant',
      'name': 'test name',
      'img': 'test img',
      'price': 5,
      'local_tax': 10,
      'national_tax': 15,
      'fixed_amount': true,
      'fixed_qty': true,
      'description': 'test description',
      'created_at': '2020-09-05',
      'updated_at': '2020-09-05',
      'deleted_at': '2020-09-05',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data.productId, 'test id');
  expect(req.data.publicHash, 'test public hash');
  expect(req.data.merchantId, 'test merchant');
  expect(req.data.name, 'test name');
  expect(req.data.img, 'test img');
  expect(req.data.price, 5);
  expect(req.data.localTax, 10);
  expect(req.data.nationalTax, 15);
  expect(req.data.fixedAmount, true);
  expect(req.data.fixedQty, true);
  expect(req.data.description, 'test description');
  expect(req.data.createdAt, '2020-09-05');
  expect(req.data.updatedAt, '2020-09-05');
  expect(req.data.deletedAt, '2020-09-05');
}

void testProductDeleteResponseToJson() {
  var req = ProductDeleteResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'data': null,
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data, null);

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":null}');
}

void testProductGetResponseToJson() {
  var req = ProductGetResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'data': {
      'id': 'test id',
      'public_hash': 'test public hash',
      'merchant_id': 'test merchant',
      'name': 'test name',
      'img': 'test img',
      'price': 5,
      'local_tax': 10,
      'national_tax': 15,
      'fixed_amount': true,
      'fixed_qty': true,
      'description': 'test description',
      'created_at': '2020-09-05',
      'updated_at': '2020-09-05',
      'deleted_at': '2020-09-05',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data.productId, 'test id');
  expect(req.data.publicHash, 'test public hash');
  expect(req.data.merchantId, 'test merchant');
  expect(req.data.name, 'test name');
  expect(req.data.img, 'test img');
  expect(req.data.price, 5);
  expect(req.data.localTax, 10);
  expect(req.data.nationalTax, 15);
  expect(req.data.fixedAmount, true);
  expect(req.data.fixedQty, true);
  expect(req.data.description, 'test description');
  expect(req.data.createdAt, '2020-09-05');
  expect(req.data.updatedAt, '2020-09-05');
  expect(req.data.deletedAt, '2020-09-05');
}

void testProductSearchResponseToJson() {
  var req = ProductSearchResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'data': [
      {
        'id': 'test id',
        'public_hash': 'test public hash',
        'merchant_id': 'test merchant',
        'name': 'test name',
        'img': 'test img',
        'price': 5,
        'local_tax': 10,
        'national_tax': 15,
        'fixed_amount': true,
        'fixed_qty': true,
        'description': 'test description',
        'created_at': '2020-09-05',
        'updated_at': '2020-09-05',
        'deleted_at': '2020-09-05',
      }
    ]
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data[0].productId, 'test id');
  expect(req.data[0].publicHash, 'test public hash');
  expect(req.data[0].merchantId, 'test merchant');
  expect(req.data[0].name, 'test name');
  expect(req.data[0].img, 'test img');
  expect(req.data[0].price, 5);
  expect(req.data[0].localTax, 10);
  expect(req.data[0].nationalTax, 15);
  expect(req.data[0].fixedAmount, true);
  expect(req.data[0].fixedQty, true);
  expect(req.data[0].description, 'test description');
  expect(req.data[0].createdAt, '2020-09-05');
  expect(req.data[0].updatedAt, '2020-09-05');
  expect(req.data[0].deletedAt, '2020-09-05');
}
