import 'dart:convert';

import 'package:fluidpay/com/fluidpay/common/models.dart';
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
  test('CustomerSearchRequest getUrl and toJson',
      testCustomerSearchRequestGetUrlAndToJson);
  test('CustomerAddressCreateRequest getUrl and toJson',
      testCustomerAddressCreateGetUrlAndToJson);
  test('CustomerAddressUpdateRequest getUrl and toJson',
      testCustomerAddressUpdateGetUrlAndToJson);
  test('CustomerAddressDeleteRequest getUrl', testCustomerAddressDeleteGetUrl);
  test('CustomerPaymentTypeCreateRequest toJson getUrl getQueryParams',
      testCustomerPaymentTypeCreateRequest);
  test('CustomerPaymentTypeUpdateRequest getUrl and toJson',
      testCustomerPaymentTypeUpdateRequest);
  test('CustomerPaymentTypeDeleteRequest getUrl',
      testCustomerPaymentTypeDeleteRequestGetUrl);
}

void testCustomerCreateRequestToJson() {
  var req = CustomerCreateRequest(
    defaultBillingAddress: CustomerAddress(
      firstName: 'John',
      lastName: 'Doe',
      company: 'John Doe Corp',
      addressLine1: '2nd street',
      addressLine2: '123',
      city: 'Chicago',
      state: 'IL',
      postalCode: '60123',
      country: 'US',
    ),
    defaultShippingAddress: CustomerAddress(
      firstName: 'John',
      lastName: 'Doe',
      company: 'John Doe Corp',
      addressLine1: '2nd street',
      addressLine2: '123',
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
      '{"id":null,"id_format":null,"description":"some description","default_billing_address":{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":null,"fax":null,"email":null,"id":null,"line_1":"2nd street","line_2":"123","hash":null},"default_shipping_address":{"first_name":"John","last_name":"Doe","company":"John Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":null,"fax":null,"email":null,"id":null,"line_1":"2nd street","line_2":"123","hash":null},"default_payment":{"card":{"id":null,"number":"4111111111111111","masked_number":null,"encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":null,"flags":null,"lock_value":null,"cvc":"999","initial_transaction_id":null,"instrument_type":null,"generic_card_level":null},"ach":null,"token":null},"flags":null}');
}

void testCustomerGetRequestGetUrl() {
  var req = CustomerGetRequest(id: 'asanfqi123owjfqid12qw');

  expect(req.getPath(), '/vault/asanfqi123owjfqid12qw');
}

void testCustomerDeleteRequestGetUrl() {
  var req = CustomerDeleteRequest(id: 'asanfqi123owjfqid12qw');

  expect(req.getPath(), '/vault/asanfqi123owjfqid12qw');
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

  expect(req.getPath(), '/vault/customer/asanfqi123owjfqid12qw');
  expect(jsonEncode((req.toJson())),
      '{"id":"asanfqi123owjfqid12qw","description":"description","notes":"notes","defaults":{"billing_address_id":"123","shipping_address_id":"1928479","payment_method_type":"card","payment_method_id":"4123"},"flags":["flag1"]}');
}

void testCustomerSearchRequestGetUrlAndToJson() {
  var now = DateTime.now();
  var startDate = now.subtract(Duration(hours: 1));
  var req = CustomerSearchRequest(
    id: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'asfgwrgj'),
    paymentMethodType: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'waddafawfa'),
    paymentMethodId: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'awfafafaf'),
    billingAddressId: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'afwafa'),
    shippingAddressId: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'awfafaaf'),
    addressId: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'awfafwaf'),
    firstName:
        QuerySearchParamString(operator: SearchOperator.equals, value: 'john'),
    lastName:
        QuerySearchParamString(operator: SearchOperator.equals, value: 'doe'),
    company: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'john doe inc'),
    addressLine1: QuerySearchParamString(
        operator: SearchOperator.equals, value: '2nd street'),
    addressLine2:
        QuerySearchParamString(operator: SearchOperator.equals, value: '2123'),
    city: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'Chicago'),
    state: QuerySearchParamString(operator: SearchOperator.equals, value: 'IL'),
    postalCode:
        QuerySearchParamString(operator: SearchOperator.equals, value: '60123'),
    country:
        QuerySearchParamString(operator: SearchOperator.equals, value: 'US'),
    email: QuerySearchParamString(
        operator: SearchOperator.equals, value: 'johndoe@johndoe.com'),
    phone: QuerySearchParamString(
        operator: SearchOperator.equals, value: '1231512525'),
    fax: QuerySearchParamString(
        operator: SearchOperator.equals, value: '1231512525'),
    createdAt: QuerySearchParamDateRange(endDate: now, startDate: startDate),
    updatedAt: QuerySearchParamDateRange(endDate: now, startDate: startDate),
    limit: 10,
    offset: 0,
  );

  expect(req.getPath(), '/vault/customer/search');
  expect(jsonEncode((req.toJson())),
      '{"id":{"operator":"=","value":"asfgwrgj"},"payment_method_type":{"operator":"=","value":"waddafawfa"},"payment_method_id":{"operator":"=","value":"awfafafaf"},"billing_address_id":{"operator":"=","value":"afwafa"},"shipping_address_id":{"operator":"=","value":"awfafaaf"},"address_id":{"operator":"=","value":"awfafwaf"},"first_name":{"operator":"=","value":"john"},"last_name":{"operator":"=","value":"doe"},"company":{"operator":"=","value":"john doe inc"},"address_line_1":{"operator":"=","value":"2nd street"},"address_line_2":{"operator":"=","value":"2123"},"city":{"operator":"=","value":"Chicago"},"state":{"operator":"=","value":"IL"},"postal_code":{"operator":"=","value":"60123"},"country":{"operator":"=","value":"US"},"email":{"operator":"=","value":"johndoe@johndoe.com"},"phone":{"operator":"=","value":"1231512525"},"fax":{"operator":"=","value":"1231512525"},"created_at":{"start_date":"${startDate.toIso8601String()}","end_date":"${now.toIso8601String()}"},"updated_at":{"start_date":"${startDate.toIso8601String()}","end_date":"${now.toIso8601String()}"},"limit":10,"offset":0}');
}

void testCustomerAddressCreateGetUrlAndToJson() {
  var req = CustomerAddressCreateRequest('some_id',
      address: CustomerAddress(
        id: 'some_addr_id',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Jane Doe Corp',
        addressLine1: '2nd street',
        addressLine2: '124124',
        city: 'Chicago',
        state: 'IL',
        postalCode: '60123',
        country: 'US',
        phone: '5145125125',
        fax: '5145125125',
        email: 'jane@doe.asd',
        hash: 'hashhashhash',
      ));

  expect(req.getPath(), '/vault/customer/some_id/address');
  expect(jsonEncode((req.toJson())),
      '{"first_name":"Jane","last_name":"Doe","company":"Jane Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"5145125125","fax":"5145125125","email":"jane@doe.asd","id":"some_addr_id","line_1":"2nd street","line_2":"124124","hash":"hashhashhash"}');
}

void testCustomerAddressUpdateGetUrlAndToJson() {
  var req = CustomerAddressUpdateRequest('some_id', 'some_addr_id',
      address: CustomerAddress(
        id: 'some_addr_id',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Jane Doe Corp',
        addressLine1: '2nd street',
        addressLine2: '124124',
        city: 'Chicago',
        state: 'IL',
        postalCode: '60123',
        country: 'US',
        phone: '5145125125',
        fax: '5145125125',
        email: 'jane@doe.asd',
        hash: 'hashhashhash',
      ));

  expect(req.getPath(), '/vault/customer/some_id/address/some_addr_id');
  expect(jsonEncode((req.toJson())),
      '{"first_name":"Jane","last_name":"Doe","company":"Jane Doe Corp","city":"Chicago","state":"IL","postal_code":"60123","country":"US","phone":"5145125125","fax":"5145125125","email":"jane@doe.asd","id":"some_addr_id","line_1":"2nd street","line_2":"124124","hash":"hashhashhash"}');
}

void testCustomerAddressDeleteGetUrl() {
  var req = CustomerAddressDeleteRequest('some_id', 'some_addr_id');

  expect(req.getPath(), '/vault/customer/some_id/address/some_addr_id');
}

void testCustomerPaymentTypeCreateRequest() {
  var req =
      CustomerPaymentTypeCreateRequest('customer_id', CustomerPaymentType.card,
          data: CustomerCard(
            number: '4111111111111111',
            cvc: '999',
            expirationDate: '11/22',
            cardType: 'visa',
          ));

  expect(req.getPath(), '/vault/customer/customer_id/card');
  expect(req.getQueryParams(), {
    'validate': 'false',
    'currency': 'USD',
  });
  expect(jsonEncode(req.toJson()),
      '{"id":null,"number":"4111111111111111","masked_number":null,"encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":null,"flags":null,"lock_value":null,"cvc":"999","initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}');
}

void testCustomerPaymentTypeUpdateRequest() {
  var req = CustomerPaymentTypeUpdateRequest(
      'customer_id', CustomerPaymentType.card, 'payment_type_id',
      data: CustomerCard(
        number: '4111111111111111',
        cvc: '999',
        expirationDate: '11/22',
        cardType: 'visa',
      ));

  expect(req.getPath(), '/vault/customer/customer_id/card/payment_type_id');
  expect(jsonEncode(req.toJson()),
      '{"id":null,"number":"4111111111111111","masked_number":null,"encrypted_number":null,"digest":null,"expiration_date":"11/22","card_type":"visa","processor_id":null,"flags":null,"lock_value":null,"cvc":"999","initial_transaction_id":null,"instrument_type":null,"generic_card_level":null}');
}

void testCustomerPaymentTypeDeleteRequestGetUrl() {
  var req = CustomerPaymentTypeDeleteRequest(
    'customer_id',
    CustomerPaymentType.card,
    'payment_type_id',
  );

  expect(req.getPath(), '/vault/customer/customer_id/card/payment_type_id');
}
