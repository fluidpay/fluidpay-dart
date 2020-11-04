import 'dart:convert';

import 'package:fluidpay/com/fluidpay/invoice/common.dart';
import 'package:test/test.dart';

void main() {
  test('InvoiceBillTo fromJson and toJson', testInvoiceBillTo);
  test('InvoicePayableTo fromJson and toJson', testInvoicePayableTo);
}

void testInvoiceBillTo() {
  var billTo = InvoiceBillTo.fromJson({
    'id': 'some_bill_to_id',
    'first_name': 'John',
    'last_name': 'Doe',
    'company': 'John Doe Company',
    'address_line_1': '2nd street',
    'address_line_2': '',
    'city': 'Chicago',
    'state': 'Illinois',
    'postal_code': '60123',
    'country': 'US',
    'phone': '',
    'fax': '',
    'email': '',
  });

  expect(billTo.id, 'some_bill_to_id');
  expect(billTo.firstName, 'John');
  expect(billTo.lastName, 'Doe');
  expect(billTo.company, 'John Doe Company');
  expect(billTo.addressLine1, '2nd street');
  expect(billTo.addressLine2, '');
  expect(billTo.city, 'Chicago');
  expect(billTo.state,  'Illinois');
  expect(billTo.postalCode, '60123');
  expect(billTo.country, 'US');
  expect(billTo.phone, '');
  expect(billTo.fax, '');
  expect(billTo.email, '');

  expect(jsonEncode(billTo.toJson()), '{"id":"some_bill_to_id","first_name":"John","last_name":"Doe","company":"John Doe Company","address_line_1":"2nd street","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":""}');
}
void testInvoicePayableTo() {
  var billTo = InvoicePayableTo.fromJson({
    'id': 'some_bill_to_id',
    'first_name': 'John',
    'last_name': 'Doe',
    'company': 'John Doe Company',
    'address_line_1': '2nd street',
    'address_line_2': '',
    'city': 'Chicago',
    'state': 'Illinois',
    'postal_code': '60123',
    'country': 'US',
    'phone': '',
    'fax': '',
    'email': '',
  });

  expect(billTo.id, 'some_bill_to_id');
  expect(billTo.firstName, 'John');
  expect(billTo.lastName, 'Doe');
  expect(billTo.company, 'John Doe Company');
  expect(billTo.addressLine1, '2nd street');
  expect(billTo.addressLine2, '');
  expect(billTo.city, 'Chicago');
  expect(billTo.state,  'Illinois');
  expect(billTo.postalCode, '60123');
  expect(billTo.country, 'US');
  expect(billTo.phone, '');
  expect(billTo.fax, '');
  expect(billTo.email, '');

  expect(jsonEncode(billTo.toJson()), '{"id":"some_bill_to_id","first_name":"John","last_name":"Doe","company":"John Doe Company","address_line_1":"2nd street","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":""}');
}
