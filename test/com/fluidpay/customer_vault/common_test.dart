import 'dart:convert';

import 'package:fluidpay/com/fluidpay/customer_vault/common.dart';
import 'package:test/test.dart';

void main() {
  test('CustomerAddress toJson', testCustomerAddressToJson);
  test('CustomerCard toJson', testCustomerCardToJson);
  test('CustomerACH toJson', testCustomerACHToJson);
}

void testCustomerAddressToJson() {
  var req = CustomerAddress(
    id: 'some_id',
    firstName: 'John',
    lastName: 'Doe',
    company: 'John Doe Corp',
    addressLine1: '2nd street',
    addressLine2: '123',
    city: 'Chicago',
    state: 'IL',
    postalCode: '60123',
    country: 'US',
    phone: '55555555',
    fax: '55555555',
    email: 'johndoe@testemail.asd',
    hash: 'hashdata',
  );

  expect(jsonEncode(req.toJson()),
      '{"id":"some_id","first_name":"John","last_name":"Doe","company":"John Doe Corp","line_1":"2nd street","line_2":"123","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"55555555","fax":"55555555","email":"johndoe@testemail.asd","hash":"hashdata"}');
}

void testCustomerCardToJson() {
  var req = CustomerCard.fromJson({
    'id': 'some_id',
    'number': '4111111111111111',
    'masked_number': '4111******111111',
    'encrypted_number': 'asdf',
    'digest': 'secret',
    'expiration_date': '11/22',
    'card_type': 'visa',
    'processor_id': 'someProcID',
    'flags': [],
    'lock_value': '',
    'cvc': '999',
    'initial_transaction_id': '',
    'instrument_type': '',
    'generic_card_level': '',
  });

  expect(req.id, 'some_id');
  expect(req.number, '4111111111111111');
  expect(req.maskedNumber, '4111******111111');
  expect(req.encryptedNumber, 'asdf');
  expect(req.digest, 'secret');
  expect(req.expirationDate, '11/22');
  expect(req.cardType, 'visa');
  expect(req.processorId, 'someProcID');
  expect(req.flags, []);
  expect(req.lockValue, '');
  expect(req.cvc, '999');
  expect(req.initialTransactionId, '');

  expect(jsonEncode(req.toJson()), '{"id":"some_id","number":"4111111111111111","masked_number":"4111******111111","encrypted_number":"asdf","digest":"secret","expiration_date":"11/22","card_type":"visa","processor_id":"someProcID","flags":[],"lock_value":"","cvc":"999","initial_transaction_id":"","instrument_type":"","generic_card_level":""}');
}

void testCustomerACHToJson() {
  var req = CustomerACH.fromJson({
    'id': 'another_id',
    'account_number': '12345678',
    'masked_account_number': '12****78',
    'encrypted_account_number': 'asdftefafnjkw',
    'digest': 'other_secret',
    'routing_number': '987654321',
    'account_type': 'checking',
    'sec_code': 'WEB',
    'processor_id': 'ojiwdqdjo0912',
    'flags': [],
    'lock_value': '',
  });

  expect(req.id, 'another_id');
  expect(req.accountNumber, '12345678');
  expect(req.maskedAccountNumber, '12****78');
  expect(req.encryptedAccountNumber, 'asdftefafnjkw');
  expect(req.digest, 'other_secret');
  expect(req.routingNumber, '987654321');
  expect(req.accountType, 'checking');
  expect(req.secCode, 'WEB');
  expect(req.processorId, 'ojiwdqdjo0912');
  expect(req.flags, []);
  expect(req.lockValue, '');

  expect(jsonEncode(req.toJson()), '{"id":"another_id","account_number":"12345678","masked_account_number":"12****78","encrypted_account_number":"asdftefafnjkw","digest":"other_secret","routing_number":"987654321","account_type":"checking","sec_code":"WEB","processor_id":"ojiwdqdjo0912","flags":[],"lock_value":""}');
}
