import 'dart:convert';

import 'package:fluidpay/com/fluidpay/customer_vault/common.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/request.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/response.dart';
import 'package:test/test.dart';

void main() {
  test('CustomerCreateRequest toJson', testCustomerCreateRequestToJson);
  test('CustomerGetRequest getUrl', testCustomerGetRequestGetUrl);
  test('CustomerDeleteRequest getUrl', testCustomerDeleteRequestGetUrl);
  test('CustomerUpdateRequest getUrl and toJson',
      testCustomerUpdateRequestGetUrlAndToJson);
}

void testCustomerCreateRequestToJson() {
  var req = CustomerCreateRequest(
    defaultBillingAddress: CustomerAddress(
      firstName: 'John',
      lastName: 'Doe',
      company: 'John Doe Corp',
      line1: '2nd street',
      line2: '123',
      city: 'Chicago',
      state: 'IL',
      postalCode: '60123',
      country: 'US',
    ),
    defaultShippingAddress: CustomerAddress(
      firstName: 'John',
      lastName: 'Doe',
      company: 'John Doe Corp',
      line1: '2nd street',
      line2: '123',
      city: 'Chicago',
      state: 'IL',
      postalCode: '60123',
      country: 'US',
    ),
    defaultPayment: CustomerPaymentCreate(
      card: CustomerCard(
          number: '4111111111111111',
          cardType: 'visa',
          cvc: '999',
          expirationDate: '11/22'),
    ),
    description: 'some description',
  );

  expect(jsonEncode(req.toJson()),
      '{"id":null,"id_format":null,"description":"some description","default_billing_address":{"id":null,"first_name":"John","last_name":"Doe","company":"John Doe Corp","line_1":"2nd street","line_2":"123","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":null,"fax":null,"email":null,"hash":null},"default_shipping_address":{"id":null,"first_name":"John","last_name":"Doe","company":"John Doe Corp","line_1":"2nd street","line_2":"123","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":null,"fax":null,"email":null,"hash":null},"default_payment":{"card":{"id":null,"number":"4111111111111111","masked_number":null,"encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":null,"flags":null,"lock_value":null,"cvc":"999","initial_transaction_id":null,"instrument_type":null,"generic_card_level":null},"ach":null,"token":null},"flags":null}');
}

void testCustomerGetRequestGetUrl() {
  var req = CustomerGetRequest(id: 'asanfqi123owjfqid12qw');

  expect(req.getUrl(), '/vault/asanfqi123owjfqid12qw');
}

void testCustomerDeleteRequestGetUrl() {
  var req = CustomerDeleteRequest(id: 'asanfqi123owjfqid12qw');

  expect(req.getUrl(), '/vault/asanfqi123owjfqid12qw');
}

void testCustomerUpdateRequestGetUrlAndToJson() {
  var req = CustomerUpdateRequest('asanfqi123owjfqid12qw',
      notes: 'notes',
      description: 'description',
      flags: ['flag1'],
      defaults: CustomerDefaults(
        billingAddressId: '123',
        paymentMethodId: '4123',
        paymentMethodType: 'card',
        shippingAddressId: '1928479',
      ));

  expect(req.getUrl(), '/vault/customer/asanfqi123owjfqid12qw');
  expect(jsonEncode((req.toJson())), '{"id":"asanfqi123owjfqid12qw","description":"description","notes":"notes","defaults":{"billing_address_id":"123","shipping_address_id":"1928479","payment_method_type":"card","payment_method_id":"4123"},"flags":["flag1"]}');
}
