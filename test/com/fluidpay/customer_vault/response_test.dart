import 'dart:convert';

import 'package:fluidpay/com/fluidpay/customer_vault/response.dart';
import 'package:test/test.dart';

void main() {
  test('CustomerCreateResponse toJson', testCustomerCreateResponseToJson);
  test('CustomerGetResponse toJson', testCustomerGetResponseToJson);
  test(
      'CustomerSearchResponse fromJson and toJson', testCustomerSearchResponse);
  test('CustomerAddressCreateResponse fromJson and toJson',
      testCustomerAddressCreateResponse);
  test('CustomerAddressUpdateResponse fromJson and toJson',
      testCustomerAddressUpdateResponse);
  test('CustomerPaymentTypeCreateResponse fromJson and toJson',
      testCustomerPaymentTypeCreateResponse);
  test('CustomerPaymentTypeUpdateResponse fromJson and toJson',
      testCustomerPaymentTypeUpdateResponse);
  test(
      'CustomerDeleteResponse fromJson and toJson', testCustomerDeleteResponse);
  test('CustomerAddressDeleteResponse fromJson and toJson',
      testCustomerAddressDeleteResponse);
  test(
      'CustomerUpdateResponse fromJson and toJson', testCustomerUpdateResponse);
  test('CustomerPaymentTypeDeleteResponse fromJson and toJson',
      testCustomerPaymentTypeDeleteResponse);
}

void testCustomerCreateResponseToJson() {
  var resp = CustomerCreateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _inputData,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  _testInputData(resp.data);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}

void testCustomerGetResponseToJson() {
  var resp = CustomerGetResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _inputData,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  _testInputData(resp.data);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}

void testCustomerSearchResponse() {
  var resp = CustomerSearchResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': 1,
    'data': [_inputData],
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, 1);
  _testInputData(resp.data[0]);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":1,"data":[{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}]}');
}

void testCustomerAddressCreateResponse() {
  var resp = CustomerAddressCreateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _inputData,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  _testInputData(resp.data);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}

void testCustomerAddressUpdateResponse() {
  var resp = CustomerAddressUpdateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _inputData,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  _testInputData(resp.data);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}

void testCustomerPaymentTypeCreateResponse() {
  var resp = CustomerPaymentTypeCreateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _inputData,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  _testInputData(resp.data);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}

void testCustomerPaymentTypeUpdateResponse() {
  var resp = CustomerPaymentTypeUpdateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _inputData,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  _testInputData(resp.data);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","id":"buhtj19erttq05jclhu0","line_1":"2nd street","line_2":"123","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}

void testCustomerDeleteResponse() {
  var resp = CustomerDeleteResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': null,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  expect(resp.data, null);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":null}');
}

void testCustomerAddressDeleteResponse() {
  var resp = CustomerAddressDeleteResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': null,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  expect(resp.data, null);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":null}');
}

void testCustomerUpdateResponse() {
  var resp = CustomerUpdateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': null,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  expect(resp.data, null);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":null}');
}

void testCustomerPaymentTypeDeleteResponse() {
  var resp = CustomerPaymentTypeDeleteResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': null,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  expect(resp.data, null);

  expect(jsonEncode(resp.toJson()),
      '{"status":"success","msg":"success","status_code":null,"total_count":null,"data":null}');
}

var _inputData = {
  'id': 'buhtj19erttq05jclhvg',
  'data': {
    'customer': {
      'description': 'some description',
      'defaults': {
        'billing_address_id': 'buhtj19erttq05jclhu0',
        'shipping_address_id': 'buhtj19erttq05jclhu0',
        'payment_method_type': 'card',
        'payment_method_id': 'buhtj19erttq05jclhv0'
      },
      'payments': {
        'cards': [
          {
            'id': 'buhtj19erttq05jclhv0',
            'number': null,
            'masked_number': '411111******1111',
            'encrypted_number': null,
            'digest': null,
            'expiration_date': '11/22',
            'card_type': 'visa',
            'processor_id': '',
            'flags': [],
            'lock_value': null,
            'cvc': null,
            'initial_transaction_id': null,
            'instrument_type': null,
            'generic_card_level': null
          }
        ],
        'ach': []
      },
      'addresses': [
        {
          'id': 'buhtj19erttq05jclhu0',
          'first_name': 'John',
          'last_name': 'Doe',
          'company': 'John Doe Corp',
          'line_1': '2nd street',
          'line_2': '123',
          'city': 'Chicago',
          'state': 'IL',
          'postal_code': '60123',
          'country': 'US',
          'phone': '',
          'fax': '',
          'email': '',
          'hash': 'hashdata'
        }
      ],
      'flags': [],
      'notes': ''
    }
  },
  'create_at': null,
  'update_at': null
};

void _testInputData(CustomerResponseData data) {
  expect(data.id, 'buhtj19erttq05jclhvg');

  expect(data.data.customer.description, 'some description');
  expect(data.data.customer.defaults.billingAddressId, 'buhtj19erttq05jclhu0');
  expect(data.data.customer.defaults.shippingAddressId, 'buhtj19erttq05jclhu0');
  expect(data.data.customer.defaults.paymentMethodType, 'card');
  expect(data.data.customer.defaults.paymentMethodId, 'buhtj19erttq05jclhv0');
  expect(data.data.customer.payments.cards[0].id, 'buhtj19erttq05jclhv0');
  expect(data.data.customer.payments.cards[0].number, null);
  expect(data.data.customer.payments.cards[0].maskedNumber, '411111******1111');
  expect(data.data.customer.payments.cards[0].encryptedNumber, null);
  expect(data.data.customer.payments.cards[0].digest, null);
  expect(data.data.customer.payments.cards[0].expirationDate, '11/22');
  expect(data.data.customer.payments.cards[0].cardType, 'visa');
  expect(data.data.customer.payments.cards[0].processorId, '');
  expect(data.data.customer.payments.cards[0].flags, []);
  expect(data.data.customer.payments.cards[0].lockValue, null);
  expect(data.data.customer.payments.cards[0].cvc, null);
  expect(data.data.customer.payments.cards[0].initialTransactionId, null);
  expect(data.data.customer.payments.cards[0].instrumentType, null);
  expect(data.data.customer.payments.cards[0].genericCardLevel, null);
  expect(data.data.customer.payments.ach, []);
  expect(data.data.customer.addresses[0].id, 'buhtj19erttq05jclhu0');
  expect(data.data.customer.addresses[0].firstName, 'John');
  expect(data.data.customer.addresses[0].lastName, 'Doe');
  expect(data.data.customer.addresses[0].company, 'John Doe Corp');
  expect(data.data.customer.addresses[0].addressLine1, '2nd street');
  expect(data.data.customer.addresses[0].addressLine2, '123');
  expect(data.data.customer.addresses[0].city, 'Chicago');
  expect(data.data.customer.addresses[0].state, 'IL');
  expect(data.data.customer.addresses[0].postalCode, '60123');
  expect(data.data.customer.addresses[0].country, 'US');
  expect(data.data.customer.addresses[0].phone, '');
  expect(data.data.customer.addresses[0].fax, '');
  expect(data.data.customer.addresses[0].email, '');
  expect(data.data.customer.addresses[0].hash, 'hashdata');
  expect(data.data.customer.flags, []);
  expect(data.data.customer.notes, '');
  expect(data.createAt, null);
  expect(data.updateAt, null);
}
