import 'dart:convert';

import 'package:fluidpay/com/fluidpay/customer_vault/response.dart';
import 'package:test/test.dart';

void main() {
  test('CustomerCreateResponse toJson', testCustomerCreateResponseToJson);
}

void testCustomerCreateResponseToJson() {
  var resp = CustomerCreateResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': {
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
    }
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);
  expect(resp.data.id, 'buhtj19erttq05jclhvg');

  expect(resp.data.data.customer.description, 'some description');
  expect(resp.data.data.customer.defaults.billingAddressId, 'buhtj19erttq05jclhu0');
  expect(resp.data.data.customer.defaults.shippingAddressId, 'buhtj19erttq05jclhu0');
  expect(resp.data.data.customer.defaults.paymentMethodType, 'card');
  expect(resp.data.data.customer.defaults.paymentMethodId, 'buhtj19erttq05jclhv0');
  expect(resp.data.data.customer.payments.cards[0].id, 'buhtj19erttq05jclhv0');
  expect(resp.data.data.customer.payments.cards[0].number, null);
  expect(resp.data.data.customer.payments.cards[0].maskedNumber, '411111******1111');
  expect(resp.data.data.customer.payments.cards[0].encryptedNumber, null);
  expect(resp.data.data.customer.payments.cards[0].digest, null);
  expect(resp.data.data.customer.payments.cards[0].expirationDate, '11/22');
  expect(resp.data.data.customer.payments.cards[0].cardType, 'visa');
  expect(resp.data.data.customer.payments.cards[0].processorId, '');
  expect(resp.data.data.customer.payments.cards[0].flags, []);
  expect(resp.data.data.customer.payments.cards[0].lockValue, null);
  expect(resp.data.data.customer.payments.cards[0].cvc, null);
  expect(resp.data.data.customer.payments.cards[0].initialTransactionId, null);
  expect(resp.data.data.customer.payments.cards[0].instrumentType, null);
  expect(resp.data.data.customer.payments.cards[0].genericCardLevel, null);
  expect(resp.data.data.customer.payments.ach, []);
  expect(resp.data.data.customer.addresses[0].id, 'buhtj19erttq05jclhu0');
  expect(resp.data.data.customer.addresses[0].firstName, 'John');
  expect(resp.data.data.customer.addresses[0].lastName, 'Doe');
  expect(resp.data.data.customer.addresses[0].company, 'John Doe Corp');
  expect(resp.data.data.customer.addresses[0].line1, '2nd street');
  expect(resp.data.data.customer.addresses[0].line2, '123');
  expect(resp.data.data.customer.addresses[0].city, 'Chicago');
  expect(resp.data.data.customer.addresses[0].state, 'IL');
  expect(resp.data.data.customer.addresses[0].postalCode, '60123');
  expect(resp.data.data.customer.addresses[0].country, 'US');
  expect(resp.data.data.customer.addresses[0].phone, '');
  expect(resp.data.data.customer.addresses[0].fax, '');
  expect(resp.data.data.customer.addresses[0].email, '');
  expect(resp.data.data.customer.addresses[0].hash, 'hashdata');
  expect(resp.data.data.customer.flags, []);
  expect(resp.data.data.customer.notes, '');
  expect(resp.data.createAt, null);
  expect(resp.data.updateAt, null);

  expect(jsonEncode(resp.toJson()), '{"status":"success","msg":"success","total_count":null,"data":{"id":"buhtj19erttq05jclhvg","data":{"customer":{"description":"some description","defaults":{"billing_address_id":"buhtj19erttq05jclhu0","shipping_address_id":"buhtj19erttq05jclhu0","payment_method_type":"card","payment_method_id":"buhtj19erttq05jclhv0"},"payments":{"cards":[{"id":"buhtj19erttq05jclhv0","number":null,"masked_number":"411111******1111","encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":"","flags":[],"lock_value":null,"cvc":null,"initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}],"ach":[]},"addresses":[{"id":"buhtj19erttq05jclhu0","first_name":"John","last_name":"Doe","company":"John Doe Corp","line_1":"2nd street","line_2":"123","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"","fax":"","email":"","hash":"hashdata"}],"flags":[],"notes":""}},"create_at":null,"update_at":null}}');
}
