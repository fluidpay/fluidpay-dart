import 'dart:convert';

import 'package:fluidpay/com/fluidpay/invoice/common.dart';
import 'package:fluidpay/com/fluidpay/invoice/response.dart';
import 'package:test/test.dart';

void main() {
  test('InvoiceCreateResponse toJson', testInvoiceCreateResponseToJson);
  test('InvoiceUpdateResponse toJson', testInvoiceUpdateResponseToJson);
  test('InvoiceMarkAsPaidResponse toJson', testInvoiceMarkAsPaidResponseToJson);
  test('InvoiceReactivateResponse toJson', testInvoiceReactivateResponseToJson);
  test('InvoiceResendResponse toJson', testInvoiceResendResponseToJson);
  test('InvoiceDeleteResponse toJson', testInvoiceDeleteResponseToJson);
  test('InvoiceGetResponse toJson', testInvoiceGetResponseToJson);
  test('InvoiceSearchResponse toJson', testInvoiceSearchResponseToJson);
}

void testInvoiceCreateResponseToJson() {
  var req = InvoiceCreateResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': {
      'id': '12345',
      'currency': 'USD',
      'company_name': 'Random corp',
      'company_logo_url': null,
      'customer_number': '1234',
      'invoice_number': '5555',
      'payable_to': {
        'id': '999',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'bill_to': {
        'id': '888',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'created_at': '2020-09-05',
      'date_due': '2020-12-12',
      'advanced_fields': true,
      'subtotal': null,
      'enable_tax': true,
      'enable_shipping': true,
      'require_shipping_details': true,
      'require_billing_details_on_payment_only': true,
      'tax_percent': '',
      'tax': 100,
      'shipping': 100,
      'total': 1000,
      'amount_paid': 1000,
      'service_fees_paid': null,
      'surcharge_paid': null,
      'discount_credited': null,
      'adjustment': null,
      'amount_due': null,
      'allow_partial_payment': null,
      'transaction_type': null,
      'payment_methods': null,
      'card_processor_id': '61872fhiuqw1092123',
      'ach_processor_id': null,
      'status': 'pending',
      'message': 'Hello there!',
      'reject_message': 'bye bye',
      'send_via': null,
      'email_to': null,
      'last_sent_at': null,
      'updated_at': '2020-09-08',
      'public_hash': null,
      'hosted_url': null,
      'merchant_id': 'maskldf2187934',
      'customer_id': '987654321',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data?.id, '12345');
  expect(req.data?.currency, 'USD');
  expect(req.data?.companyName, 'Random corp');
  expect(req.data?.companyLogoUrl, null);
  expect(req.data?.customerNumber, '1234');
  expect(req.data?.invoiceNumber, '5555');
  expect(
      req.data?.payableTo?.toJson(),
      InvoicePayableTo(
        id: '999',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      ).toJson());
  expect(
      req.data?.billTo?.toJson(),
      (InvoiceBillTo(
        id: '888',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      )).toJson());
  expect(req.data?.createdAt, '2020-09-05');
  expect(req.data?.dateDue, '2020-12-12');
  expect(req.data?.items, null);
  expect(req.data?.advancedFields, true);
  expect(req.data?.subtotal, null);
  expect(req.data?.enableTax, true);
  expect(req.data?.enableShipping, true);
  expect(req.data?.requireShippingDetails, true);
  expect(req.data?.requireBillingDetailsOnPaymentOnly, true);
  expect(req.data?.taxPercent, '');
  expect(req.data?.tax, 100);
  expect(req.data?.shipping, 100);
  expect(req.data?.total, 1000);
  expect(req.data?.amountPaid, 1000);
  expect(req.data?.serviceFeesPaid, null);
  expect(req.data?.surchargePaid, null);
  expect(req.data?.discountCredited, null);
  expect(req.data?.adjustment, null);
  expect(req.data?.amountDue, null);
  expect(req.data?.allowPartialPayment, null);
  expect(req.data?.transactionType, null);
  expect(req.data?.paymentMethods, null);
  expect(req.data?.cardProcessorId, '61872fhiuqw1092123');
  expect(req.data?.achProcessorId, null);
  expect(req.data?.status, InvoiceStatus.pending);
  expect(req.data?.message, 'Hello there!');
  expect(req.data?.rejectMessage, 'bye bye');
  expect(req.data?.sendVia, null);
  expect(req.data?.emailTo, null);
  expect(req.data?.lastSentAt, null);
  expect(req.data?.updatedAt, '2020-09-08');
  expect(req.data?.publicHash, null);
  expect(req.data?.hostedUrl, null);
  expect(req.data?.merchantId, 'maskldf2187934');
  expect(req.data?.customerId, '987654321');

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":{"id":"12345","currency":"USD","company_name":"Random corp","company_logo_url":null,"customer_number":"1234","invoice_number":"5555","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"created_at":"2020-09-05","date_due":"2020-12-12","items":null,"advanced_fields":true,"subtotal":null,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":true,"tax_percent":"","tax":100,"shipping":100,"total":1000,"amount_paid":1000,"service_fees_paid":null,"surcharge_paid":null,"discount_credited":null,"adjustment":null,"amount_due":null,"allow_partial_payment":null,"transaction_type":null,"payment_methods":null,"card_processor_id":"61872fhiuqw1092123","ach_processor_id":null,"status":"pending","message":"Hello there!","reject_message":"bye bye","send_via":null,"email_to":null,"last_sent_at":null,"updated_at":"2020-09-08","public_hash":null,"hosted_url":null,"merchant_id":"maskldf2187934","customer_id":"987654321"}}');
}

void testInvoiceUpdateResponseToJson() {
  var req = InvoiceUpdateResponse.fromJson({
    'status': 'success',
    'status_code': 200,
    'data': {
      'id': '12345',
      'currency': 'USD',
      'company_name': 'Random corp',
      'company_logo_url': null,
      'customer_number': '1234',
      'invoice_number': '5555',
      'payable_to': {
        'id': '999',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'bill_to': {
        'id': '888',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'created_at': '2020-09-05',
      'date_due': '2020-12-12',
      'advanced_fields': true,
      'subtotal': null,
      'enable_tax': true,
      'enable_shipping': true,
      'require_shipping_details': true,
      'require_billing_details_on_payment_only': true,
      'tax_percent': '',
      'tax': 100,
      'shipping': 100,
      'total': 1000,
      'amount_paid': 1000,
      'service_fees_paid': null,
      'surcharge_paid': null,
      'discount_credited': null,
      'adjustment': null,
      'amount_due': null,
      'allow_partial_payment': null,
      'transaction_type': null,
      'payment_methods': null,
      'card_processor_id': '61872fhiuqw1092123',
      'ach_processor_id': null,
      'status': 'pending',
      'message': 'Hello there!',
      'reject_message': 'bye bye',
      'send_via': null,
      'email_to': null,
      'last_sent_at': null,
      'updated_at': '2020-09-08',
      'public_hash': null,
      'hosted_url': null,
      'merchant_id': 'maskldf2187934',
      'customer_id': '987654321',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data?.id, '12345');
  expect(req.data?.currency, 'USD');
  expect(req.data?.companyName, 'Random corp');
  expect(req.data?.companyLogoUrl, null);
  expect(req.data?.customerNumber, '1234');
  expect(req.data?.invoiceNumber, '5555');
  expect(
      req.data?.payableTo?.toJson(),
      InvoicePayableTo(
        id: '999',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      ).toJson());
  expect(
      req.data?.billTo?.toJson(),
      (InvoiceBillTo(
        id: '888',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      )).toJson());
  expect(req.data?.createdAt, '2020-09-05');
  expect(req.data?.dateDue, '2020-12-12');
  expect(req.data?.items, null);
  expect(req.data?.advancedFields, true);
  expect(req.data?.subtotal, null);
  expect(req.data?.enableTax, true);
  expect(req.data?.enableShipping, true);
  expect(req.data?.requireShippingDetails, true);
  expect(req.data?.requireBillingDetailsOnPaymentOnly, true);
  expect(req.data?.taxPercent, '');
  expect(req.data?.tax, 100);
  expect(req.data?.shipping, 100);
  expect(req.data?.total, 1000);
  expect(req.data?.amountPaid, 1000);
  expect(req.data?.serviceFeesPaid, null);
  expect(req.data?.surchargePaid, null);
  expect(req.data?.discountCredited, null);
  expect(req.data?.adjustment, null);
  expect(req.data?.amountDue, null);
  expect(req.data?.allowPartialPayment, null);
  expect(req.data?.transactionType, null);
  expect(req.data?.paymentMethods, null);
  expect(req.data?.cardProcessorId, '61872fhiuqw1092123');
  expect(req.data?.achProcessorId, null);
  expect(req.data?.status, InvoiceStatus.pending);
  expect(req.data?.message, 'Hello there!');
  expect(req.data?.rejectMessage, 'bye bye');
  expect(req.data?.sendVia, null);
  expect(req.data?.emailTo, null);
  expect(req.data?.lastSentAt, null);
  expect(req.data?.updatedAt, '2020-09-08');
  expect(req.data?.publicHash, null);
  expect(req.data?.hostedUrl, null);
  expect(req.data?.merchantId, 'maskldf2187934');
  expect(req.data?.customerId, '987654321');

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":{"id":"12345","currency":"USD","company_name":"Random corp","company_logo_url":null,"customer_number":"1234","invoice_number":"5555","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"created_at":"2020-09-05","date_due":"2020-12-12","items":null,"advanced_fields":true,"subtotal":null,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":true,"tax_percent":"","tax":100,"shipping":100,"total":1000,"amount_paid":1000,"service_fees_paid":null,"surcharge_paid":null,"discount_credited":null,"adjustment":null,"amount_due":null,"allow_partial_payment":null,"transaction_type":null,"payment_methods":null,"card_processor_id":"61872fhiuqw1092123","ach_processor_id":null,"status":"pending","message":"Hello there!","reject_message":"bye bye","send_via":null,"email_to":null,"last_sent_at":null,"updated_at":"2020-09-08","public_hash":null,"hosted_url":null,"merchant_id":"maskldf2187934","customer_id":"987654321"}}');
}

void testInvoiceMarkAsPaidResponseToJson() {
  var req = InvoiceMarkAsPaidResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': {
      'id': '12345',
      'currency': 'USD',
      'company_name': 'Random corp',
      'company_logo_url': null,
      'customer_number': '1234',
      'invoice_number': '5555',
      'payable_to': {
        'id': '999',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'bill_to': {
        'id': '888',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'created_at': '2020-09-05',
      'date_due': '2020-12-12',
      'advanced_fields': true,
      'subtotal': null,
      'enable_tax': true,
      'enable_shipping': true,
      'require_shipping_details': true,
      'require_billing_details_on_payment_only': true,
      'tax_percent': '',
      'tax': 100,
      'shipping': 100,
      'total': 1000,
      'amount_paid': 1000,
      'service_fees_paid': null,
      'surcharge_paid': null,
      'discount_credited': null,
      'adjustment': null,
      'amount_due': null,
      'allow_partial_payment': null,
      'transaction_type': null,
      'payment_methods': null,
      'card_processor_id': '61872fhiuqw1092123',
      'ach_processor_id': null,
      'status': 'paid',
      'message': 'Hello there!',
      'reject_message': 'bye bye',
      'send_via': null,
      'email_to': null,
      'last_sent_at': null,
      'updated_at': '2020-09-08',
      'public_hash': null,
      'hosted_url': null,
      'merchant_id': 'maskldf2187934',
      'customer_id': '987654321',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data?.id, '12345');
  expect(req.data?.currency, 'USD');
  expect(req.data?.companyName, 'Random corp');
  expect(req.data?.companyLogoUrl, null);
  expect(req.data?.customerNumber, '1234');
  expect(req.data?.invoiceNumber, '5555');
  expect(
      req.data?.payableTo?.toJson(),
      InvoicePayableTo(
        id: '999',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      ).toJson());
  expect(
      req.data?.billTo?.toJson(),
      (InvoiceBillTo(
        id: '888',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      )).toJson());
  expect(req.data?.createdAt, '2020-09-05');
  expect(req.data?.dateDue, '2020-12-12');
  expect(req.data?.items, null);
  expect(req.data?.advancedFields, true);
  expect(req.data?.subtotal, null);
  expect(req.data?.enableTax, true);
  expect(req.data?.enableShipping, true);
  expect(req.data?.requireShippingDetails, true);
  expect(req.data?.requireBillingDetailsOnPaymentOnly, true);
  expect(req.data?.taxPercent, '');
  expect(req.data?.tax, 100);
  expect(req.data?.shipping, 100);
  expect(req.data?.total, 1000);
  expect(req.data?.amountPaid, 1000);
  expect(req.data?.serviceFeesPaid, null);
  expect(req.data?.surchargePaid, null);
  expect(req.data?.discountCredited, null);
  expect(req.data?.adjustment, null);
  expect(req.data?.amountDue, null);
  expect(req.data?.allowPartialPayment, null);
  expect(req.data?.transactionType, null);
  expect(req.data?.paymentMethods, null);
  expect(req.data?.cardProcessorId, '61872fhiuqw1092123');
  expect(req.data?.achProcessorId, null);
  expect(req.data?.status, InvoiceStatus.paid);
  expect(req.data?.message, 'Hello there!');
  expect(req.data?.rejectMessage, 'bye bye');
  expect(req.data?.sendVia, null);
  expect(req.data?.emailTo, null);
  expect(req.data?.lastSentAt, null);
  expect(req.data?.updatedAt, '2020-09-08');
  expect(req.data?.publicHash, null);
  expect(req.data?.hostedUrl, null);
  expect(req.data?.merchantId, 'maskldf2187934');
  expect(req.data?.customerId, '987654321');

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":{"id":"12345","currency":"USD","company_name":"Random corp","company_logo_url":null,"customer_number":"1234","invoice_number":"5555","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"created_at":"2020-09-05","date_due":"2020-12-12","items":null,"advanced_fields":true,"subtotal":null,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":true,"tax_percent":"","tax":100,"shipping":100,"total":1000,"amount_paid":1000,"service_fees_paid":null,"surcharge_paid":null,"discount_credited":null,"adjustment":null,"amount_due":null,"allow_partial_payment":null,"transaction_type":null,"payment_methods":null,"card_processor_id":"61872fhiuqw1092123","ach_processor_id":null,"status":"paid","message":"Hello there!","reject_message":"bye bye","send_via":null,"email_to":null,"last_sent_at":null,"updated_at":"2020-09-08","public_hash":null,"hosted_url":null,"merchant_id":"maskldf2187934","customer_id":"987654321"}}');
}

void testInvoiceReactivateResponseToJson() {
  var req = InvoiceReactivateResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': {
      'id': '12345',
      'currency': 'USD',
      'company_name': 'Random corp',
      'company_logo_url': null,
      'customer_number': '1234',
      'invoice_number': '5555',
      'payable_to': {
        'id': '999',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'bill_to': {
        'id': '888',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'created_at': '2020-09-05',
      'date_due': '2020-12-12',
      'advanced_fields': true,
      'subtotal': null,
      'enable_tax': true,
      'enable_shipping': true,
      'require_shipping_details': true,
      'require_billing_details_on_payment_only': true,
      'tax_percent': '',
      'tax': 100,
      'shipping': 100,
      'total': 1000,
      'amount_paid': 1000,
      'service_fees_paid': null,
      'surcharge_paid': null,
      'discount_credited': null,
      'adjustment': null,
      'amount_due': null,
      'allow_partial_payment': null,
      'transaction_type': null,
      'payment_methods': null,
      'card_processor_id': '61872fhiuqw1092123',
      'ach_processor_id': null,
      'status': 'pending',
      'message': 'Hello there!',
      'reject_message': 'bye bye',
      'send_via': null,
      'email_to': null,
      'last_sent_at': null,
      'updated_at': '2020-09-08',
      'public_hash': null,
      'hosted_url': null,
      'merchant_id': 'maskldf2187934',
      'customer_id': '987654321',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data?.id, '12345');
  expect(req.data?.currency, 'USD');
  expect(req.data?.companyName, 'Random corp');
  expect(req.data?.companyLogoUrl, null);
  expect(req.data?.customerNumber, '1234');
  expect(req.data?.invoiceNumber, '5555');
  expect(
      req.data?.payableTo?.toJson(),
      InvoicePayableTo(
        id: '999',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      ).toJson());
  expect(
      req.data?.billTo?.toJson(),
      (InvoiceBillTo(
        id: '888',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      )).toJson());
  expect(req.data?.createdAt, '2020-09-05');
  expect(req.data?.dateDue, '2020-12-12');
  expect(req.data?.items, null);
  expect(req.data?.advancedFields, true);
  expect(req.data?.subtotal, null);
  expect(req.data?.enableTax, true);
  expect(req.data?.enableShipping, true);
  expect(req.data?.requireShippingDetails, true);
  expect(req.data?.requireBillingDetailsOnPaymentOnly, true);
  expect(req.data?.taxPercent, '');
  expect(req.data?.tax, 100);
  expect(req.data?.shipping, 100);
  expect(req.data?.total, 1000);
  expect(req.data?.amountPaid, 1000);
  expect(req.data?.serviceFeesPaid, null);
  expect(req.data?.surchargePaid, null);
  expect(req.data?.discountCredited, null);
  expect(req.data?.adjustment, null);
  expect(req.data?.amountDue, null);
  expect(req.data?.allowPartialPayment, null);
  expect(req.data?.transactionType, null);
  expect(req.data?.paymentMethods, null);
  expect(req.data?.cardProcessorId, '61872fhiuqw1092123');
  expect(req.data?.achProcessorId, null);
  expect(req.data?.status, InvoiceStatus.pending);
  expect(req.data?.message, 'Hello there!');
  expect(req.data?.rejectMessage, 'bye bye');
  expect(req.data?.sendVia, null);
  expect(req.data?.emailTo, null);
  expect(req.data?.lastSentAt, null);
  expect(req.data?.updatedAt, '2020-09-08');
  expect(req.data?.publicHash, null);
  expect(req.data?.hostedUrl, null);
  expect(req.data?.merchantId, 'maskldf2187934');
  expect(req.data?.customerId, '987654321');

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":{"id":"12345","currency":"USD","company_name":"Random corp","company_logo_url":null,"customer_number":"1234","invoice_number":"5555","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"created_at":"2020-09-05","date_due":"2020-12-12","items":null,"advanced_fields":true,"subtotal":null,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":true,"tax_percent":"","tax":100,"shipping":100,"total":1000,"amount_paid":1000,"service_fees_paid":null,"surcharge_paid":null,"discount_credited":null,"adjustment":null,"amount_due":null,"allow_partial_payment":null,"transaction_type":null,"payment_methods":null,"card_processor_id":"61872fhiuqw1092123","ach_processor_id":null,"status":"pending","message":"Hello there!","reject_message":"bye bye","send_via":null,"email_to":null,"last_sent_at":null,"updated_at":"2020-09-08","public_hash":null,"hosted_url":null,"merchant_id":"maskldf2187934","customer_id":"987654321"}}');
}

void testInvoiceResendResponseToJson() {
  var req = InvoiceResendResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': null,
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data, null);

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":null}');
}

void testInvoiceDeleteResponseToJson() {
  var req = InvoiceDeleteResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': null,
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data, null);

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":null}');
}

void testInvoiceGetResponseToJson() {
  var req = InvoiceGetResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': {
      'id': '12345',
      'currency': 'USD',
      'company_name': 'Random corp',
      'company_logo_url': null,
      'customer_number': '1234',
      'invoice_number': '5555',
      'payable_to': {
        'id': '999',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'bill_to': {
        'id': '888',
        'first_name': 'Jane',
        'last_name': 'Doe',
        'company': 'Another inc',
        'address_line_1': 'asdf',
        'address_line_2': '',
        'city': 'Chicago',
        'state': 'Illinois',
        'postal_code': '60123',
        'country': 'US',
        'phone': '',
        'fax': '',
        'email': 'janedoe@spam4.me'
      },
      'created_at': '2020-09-05',
      'date_due': '2020-12-12',
      'advanced_fields': true,
      'subtotal': null,
      'enable_tax': true,
      'enable_shipping': true,
      'require_shipping_details': true,
      'require_billing_details_on_payment_only': true,
      'tax_percent': '',
      'tax': 100,
      'shipping': 100,
      'total': 1000,
      'amount_paid': 1000,
      'service_fees_paid': null,
      'surcharge_paid': null,
      'discount_credited': null,
      'adjustment': null,
      'amount_due': null,
      'allow_partial_payment': null,
      'transaction_type': null,
      'payment_methods': null,
      'card_processor_id': '61872fhiuqw1092123',
      'ach_processor_id': null,
      'status': 'pending',
      'message': 'Hello there!',
      'reject_message': 'bye bye',
      'send_via': null,
      'email_to': null,
      'last_sent_at': null,
      'updated_at': '2020-09-08',
      'public_hash': null,
      'hosted_url': null,
      'merchant_id': 'maskldf2187934',
      'customer_id': '987654321',
    }
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);
  expect(req.data?.id, '12345');
  expect(req.data?.currency, 'USD');
  expect(req.data?.companyName, 'Random corp');
  expect(req.data?.companyLogoUrl, null);
  expect(req.data?.customerNumber, '1234');
  expect(req.data?.invoiceNumber, '5555');
  expect(
      req.data?.payableTo?.toJson(),
      InvoicePayableTo(
        id: '999',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      ).toJson());
  expect(
      req.data?.billTo?.toJson(),
      (InvoiceBillTo(
        id: '888',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      )).toJson());
  expect(req.data?.createdAt, '2020-09-05');
  expect(req.data?.dateDue, '2020-12-12');
  expect(req.data?.items, null);
  expect(req.data?.advancedFields, true);
  expect(req.data?.subtotal, null);
  expect(req.data?.enableTax, true);
  expect(req.data?.enableShipping, true);
  expect(req.data?.requireShippingDetails, true);
  expect(req.data?.requireBillingDetailsOnPaymentOnly, true);
  expect(req.data?.taxPercent, '');
  expect(req.data?.tax, 100);
  expect(req.data?.shipping, 100);
  expect(req.data?.total, 1000);
  expect(req.data?.amountPaid, 1000);
  expect(req.data?.serviceFeesPaid, null);
  expect(req.data?.surchargePaid, null);
  expect(req.data?.discountCredited, null);
  expect(req.data?.adjustment, null);
  expect(req.data?.amountDue, null);
  expect(req.data?.allowPartialPayment, null);
  expect(req.data?.transactionType, null);
  expect(req.data?.paymentMethods, null);
  expect(req.data?.cardProcessorId, '61872fhiuqw1092123');
  expect(req.data?.achProcessorId, null);
  expect(req.data?.status, InvoiceStatus.pending);
  expect(req.data?.message, 'Hello there!');
  expect(req.data?.rejectMessage, 'bye bye');
  expect(req.data?.sendVia, null);
  expect(req.data?.emailTo, null);
  expect(req.data?.lastSentAt, null);
  expect(req.data?.updatedAt, '2020-09-08');
  expect(req.data?.publicHash, null);
  expect(req.data?.hostedUrl, null);
  expect(req.data?.merchantId, 'maskldf2187934');
  expect(req.data?.customerId, '987654321');

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":{"id":"12345","currency":"USD","company_name":"Random corp","company_logo_url":null,"customer_number":"1234","invoice_number":"5555","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"created_at":"2020-09-05","date_due":"2020-12-12","items":null,"advanced_fields":true,"subtotal":null,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":true,"tax_percent":"","tax":100,"shipping":100,"total":1000,"amount_paid":1000,"service_fees_paid":null,"surcharge_paid":null,"discount_credited":null,"adjustment":null,"amount_due":null,"allow_partial_payment":null,"transaction_type":null,"payment_methods":null,"card_processor_id":"61872fhiuqw1092123","ach_processor_id":null,"status":"pending","message":"Hello there!","reject_message":"bye bye","send_via":null,"email_to":null,"last_sent_at":null,"updated_at":"2020-09-08","public_hash":null,"hosted_url":null,"merchant_id":"maskldf2187934","customer_id":"987654321"}}');
}

void testInvoiceSearchResponseToJson() {
  var req = InvoiceSearchResponse.fromJson({
    'status': 'success',
    'status_code':200,
    'data': [
      {
        'id': '12345',
        'currency': 'USD',
        'company_name': 'Random corp',
        'company_logo_url': null,
        'customer_number': '1234',
        'invoice_number': '5555',
        'payable_to': {
          'id': '999',
          'first_name': 'Jane',
          'last_name': 'Doe',
          'company': 'Another inc',
          'address_line_1': 'asdf',
          'address_line_2': '',
          'city': 'Chicago',
          'state': 'Illinois',
          'postal_code': '60123',
          'country': 'US',
          'phone': '',
          'fax': '',
          'email': 'janedoe@spam4.me'
        },
        'bill_to': {
          'id': '888',
          'first_name': 'Jane',
          'last_name': 'Doe',
          'company': 'Another inc',
          'address_line_1': 'asdf',
          'address_line_2': '',
          'city': 'Chicago',
          'state': 'Illinois',
          'postal_code': '60123',
          'country': 'US',
          'phone': '',
          'fax': '',
          'email': 'janedoe@spam4.me'
        },
        'created_at': '2020-09-05',
        'date_due': '2020-12-12',
        'advanced_fields': true,
        'subtotal': null,
        'enable_tax': true,
        'enable_shipping': true,
        'require_shipping_details': true,
        'require_billing_details_on_payment_only': true,
        'tax_percent': '',
        'tax': 100,
        'shipping': 100,
        'total': 1000,
        'amount_paid': 1000,
        'service_fees_paid': null,
        'surcharge_paid': null,
        'discount_credited': null,
        'adjustment': null,
        'amount_due': null,
        'allow_partial_payment': null,
        'transaction_type': null,
        'payment_methods': null,
        'card_processor_id': '61872fhiuqw1092123',
        'ach_processor_id': null,
        'status': 'pending',
        'message': 'Hello there!',
        'reject_message': 'bye bye',
        'send_via': null,
        'email_to': null,
        'last_sent_at': null,
        'updated_at': '2020-09-08',
        'public_hash': null,
        'hosted_url': null,
        'merchant_id': 'maskldf2187934',
        'customer_id': '987654321',
      }
    ]
  });

  expect(req.status, 'success');
  expect(req.statusCode, 200);

  expect(req.data?.isNotEmpty, true);
  expect(req.data?[0].id, '12345');
  expect(req.data?[0].currency, 'USD');
  expect(req.data?[0].companyName, 'Random corp');
  expect(req.data?[0].companyLogoUrl, null);
  expect(req.data?[0].customerNumber, '1234');
  expect(req.data?[0].invoiceNumber, '5555');
  expect(
      req.data?[0].payableTo?.toJson(),
      InvoicePayableTo(
        id: '999',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      ).toJson());
  expect(
      req.data?[0].billTo?.toJson(),
      (InvoiceBillTo(
        id: '888',
        firstName: 'Jane',
        lastName: 'Doe',
        company: 'Another inc',
        addressLine1: 'asdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60123',
        country: 'US',
        phone: '',
        fax: '',
        email: 'janedoe@spam4.me',
      )).toJson());
  expect(req.data?[0].createdAt, '2020-09-05');
  expect(req.data?[0].dateDue, '2020-12-12');
  expect(req.data?[0].items, null);
  expect(req.data?[0].advancedFields, true);
  expect(req.data?[0].subtotal, null);
  expect(req.data?[0].enableTax, true);
  expect(req.data?[0].enableShipping, true);
  expect(req.data?[0].requireShippingDetails, true);
  expect(req.data?[0].requireBillingDetailsOnPaymentOnly, true);
  expect(req.data?[0].taxPercent, '');
  expect(req.data?[0].tax, 100);
  expect(req.data?[0].shipping, 100);
  expect(req.data?[0].total, 1000);
  expect(req.data?[0].amountPaid, 1000);
  expect(req.data?[0].serviceFeesPaid, null);
  expect(req.data?[0].surchargePaid, null);
  expect(req.data?[0].discountCredited, null);
  expect(req.data?[0].adjustment, null);
  expect(req.data?[0].amountDue, null);
  expect(req.data?[0].allowPartialPayment, null);
  expect(req.data?[0].transactionType, null);
  expect(req.data?[0].paymentMethods, null);
  expect(req.data?[0].cardProcessorId, '61872fhiuqw1092123');
  expect(req.data?[0].achProcessorId, null);
  expect(req.data?[0].status, InvoiceStatus.pending);
  expect(req.data?[0].message, 'Hello there!');
  expect(req.data?[0].rejectMessage, 'bye bye');
  expect(req.data?[0].sendVia, null);
  expect(req.data?[0].emailTo, null);
  expect(req.data?[0].lastSentAt, null);
  expect(req.data?[0].updatedAt, '2020-09-08');
  expect(req.data?[0].publicHash, null);
  expect(req.data?[0].hostedUrl, null);
  expect(req.data?[0].merchantId, 'maskldf2187934');
  expect(req.data?[0].customerId, '987654321');

  expect(jsonEncode(req.toJson()),
      '{"status":"success","msg":null,"status_code":200,"total_count":null,"data":[{"id":"12345","currency":"USD","company_name":"Random corp","company_logo_url":null,"customer_number":"1234","invoice_number":"5555","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"created_at":"2020-09-05","date_due":"2020-12-12","items":null,"advanced_fields":true,"subtotal":null,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":true,"tax_percent":"","tax":100,"shipping":100,"total":1000,"amount_paid":1000,"service_fees_paid":null,"surcharge_paid":null,"discount_credited":null,"adjustment":null,"amount_due":null,"allow_partial_payment":null,"transaction_type":null,"payment_methods":null,"card_processor_id":"61872fhiuqw1092123","ach_processor_id":null,"status":"pending","message":"Hello there!","reject_message":"bye bye","send_via":null,"email_to":null,"last_sent_at":null,"updated_at":"2020-09-08","public_hash":null,"hosted_url":null,"merchant_id":"maskldf2187934","customer_id":"987654321"}]}');
}
