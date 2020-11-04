import 'dart:convert';

import 'package:fluidpay/com/fluidpay/invoice/common.dart';
import 'package:fluidpay/com/fluidpay/invoice/request.dart';
import 'package:test/test.dart';

void main() {
  test('InvoiceCreateRequest toJson', testInvoiceCreateRequestToJson);
  test('InvoiceUpdateRequest toJson', testInvoiceUpdateRequestToJson);
  test('InvoiceResendRequest getUrl', testInvoiceResendRequestGetUrl);
  test('InvoiceMarkAsPaidRequest getUrl', testInvoiceMarkAsPaidRequestGetUrl);
  test('InvoiceReactivateRequest getUrl', testInvoiceReactivateRequestGetUrl);
  test('InvoiceDeleteRequest getUrl', testInvoiceDeleteRequestGetUrl);
  test('InvoiceGetRequest getUrl', testInvoiceGetRequestGetUrl);
  test('InvoiceSearchRequest toJson', testInvoiceSearchRequestGetUrl);
}

void testInvoiceCreateRequestToJson() {
  var req = InvoiceCreateRequest(
    currency: 'USD',
    companyName: 'Random Corp',
    customerNumber: 'John Doe',
    invoiceNumber: '12345',
    customerId: '987654321',
    payableTo: InvoicePayableTo(
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
        email: 'janedoe@spam4.me'),
    billTo: InvoiceBillTo(
        id: '888',
        firstName: 'Mark',
        lastName: 'Marius',
        company: 'A third inc',
        addressLine1: 'bsdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60129',
        country: 'US',
        phone: '',
        fax: '',
        email: 'markmarius@spam4.me'),
    dateDue: '2020-12-11',
    items: [
      LineItem(
          name: 'Something',
          status: LineItemStatus.pending,
          unitPrice: 100,
          quantity: 8,
          amount: 800)
    ],
    advancedFields: true,
    enableTax: true,
    enableShipping: true,
    requireShippingDetails: true,
    requireBillingDetailsOnPaymentOnly: false,
    taxPercent: '',
    shipping: 100,
    amountPaid: 1000,
    adjustment: 100,
    allowPartialPayment: false,
    transactionType: 'sale',
    paymentMethods: ['card'],
    cardProcessorId: '1289451298571',
    achProcessorId: null,
    message: 'Hello there!',
    sendVia: SendVia.none,
    emailTo: null,
  );

  expect(jsonEncode(req.toJson()),
      '{"currency":"USD","company_name":"Random Corp","customer_number":"John Doe","invoice_number":"12345","customer_id":"987654321","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Mark","last_name":"Marius","company":"A third inc","address_line_1":"bsdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60129","country":"US","phone":"","fax":"","email":"markmarius@spam4.me"},"date_due":"2020-12-11","items":[{"id":null,"status":"pending","type":null,"name":"Something","description":null,"quantity":8.0,"quantity_shipped":null,"product_code":null,"commodity_code":null,"unit_of_measure":null,"alternate_tax_identifier":null,"taxable":null,"local_tax_rate":null,"local_tax":null,"national_tax_rate":null,"national_tax":null,"tax_rate":null,"tax_amount":null,"discount_amount":null,"freight_amount":null,"unit_price":100,"discount_rate":null,"subtotal":null,"amount":800}],"advanced_fields":true,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":false,"tax_percent":"","shipping":100,"amount_paid":1000,"adjustment":100,"allowPartial_payment":false,"transaction_type":"sale","payment_methods":["card"],"card_processor_id":"1289451298571","ach_processor_id":null,"message":"Hello there!","send_via":"none","email_to":null}');
}

void testInvoiceUpdateRequestToJson() {
  var req = InvoiceUpdateRequest(
    'random_id',
    currency: 'USD',
    companyName: 'Random Corp',
    customerNumber: 'John Doe',
    invoiceNumber: '12345',
    customerId: '987654321',
    payableTo: InvoicePayableTo(
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
        email: 'janedoe@spam4.me'),
    billTo: InvoiceBillTo(
        id: '888',
        firstName: 'Mark',
        lastName: 'Marius',
        company: 'A third inc',
        addressLine1: 'bsdf',
        addressLine2: '',
        city: 'Chicago',
        state: 'Illinois',
        postalCode: '60129',
        country: 'US',
        phone: '',
        fax: '',
        email: 'markmarius@spam4.me'),
    dateDue: '2020-12-11',
    items: [
      LineItem(
          name: 'Something',
          status: LineItemStatus.pending,
          unitPrice: 100,
          quantity: 8,
          amount: 800)
    ],
    advancedFields: true,
    enableTax: true,
    enableShipping: true,
    requireShippingDetails: true,
    requireBillingDetailsOnPaymentOnly: false,
    taxPercent: '',
    shipping: 100,
    amountPaid: 1000,
    adjustment: 100,
    allowPartialPayment: false,
    transactionType: 'sale',
    paymentMethods: ['card'],
    cardProcessorId: '1289451298571',
    achProcessorId: null,
    message: 'Hello there!',
    sendVia: SendVia.none,
    emailTo: null,
  );

  expect(jsonEncode(req.toJson()),
      '{"id":"random_id","currency":"USD","company_name":"Random Corp","customer_number":"John Doe","invoice_number":"12345","customer_id":"987654321","payable_to":{"id":"999","first_name":"Jane","last_name":"Doe","company":"Another inc","address_line_1":"asdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60123","country":"US","phone":"","fax":"","email":"janedoe@spam4.me"},"bill_to":{"id":"888","first_name":"Mark","last_name":"Marius","company":"A third inc","address_line_1":"bsdf","address_line_2":"","city":"Chicago","state":"Illinois","postal_code":"60129","country":"US","phone":"","fax":"","email":"markmarius@spam4.me"},"date_due":"2020-12-11","items":[{"id":null,"status":"pending","type":null,"name":"Something","description":null,"quantity":8.0,"quantity_shipped":null,"product_code":null,"commodity_code":null,"unit_of_measure":null,"alternate_tax_identifier":null,"taxable":null,"local_tax_rate":null,"local_tax":null,"national_tax_rate":null,"national_tax":null,"tax_rate":null,"tax_amount":null,"discount_amount":null,"freight_amount":null,"unit_price":100,"discount_rate":null,"subtotal":null,"amount":800}],"advanced_fields":true,"enable_tax":true,"enable_shipping":true,"require_shipping_details":true,"require_billing_details_on_payment_only":false,"tax_percent":"","shipping":100,"amount_paid":1000,"adjustment":100,"allowPartial_payment":false,"transaction_type":"sale","payment_methods":["card"],"card_processor_id":"1289451298571","ach_processor_id":null,"message":"Hello there!","send_via":"none","email_to":null,"mark_as_paid":null,"reactivate":null}');
}

void testInvoiceResendRequestGetUrl() {
  var req = InvoiceResendRequest('some_id');
  expect(req.getUrl(), '/invoice/some_id/resend');
}

void testInvoiceMarkAsPaidRequestGetUrl() {
  var req = InvoiceMarkAsPaidRequest('some_id');
  expect(req.getUrl(), '/invoice/some_id/mark-as-paid');
}

void testInvoiceReactivateRequestGetUrl() {
  var req = InvoiceReactivateRequest('some_id');
  expect(req.getUrl(), '/invoice/some_id/reactivate');
}

void testInvoiceDeleteRequestGetUrl() {
  var req = InvoiceDeleteRequest('some_id');
  expect(req.getUrl(), '/invoice/some_id');
}

void testInvoiceGetRequestGetUrl() {
  var req = InvoiceGetRequest('some_id');
  expect(req.getUrl(), '/invoice/some_id');
}

void testInvoiceSearchRequestGetUrl() {
  var startDate = DateTime.now().subtract(Duration(hours: 48));
  var endDate = DateTime.now().add(Duration(hours: 48));
  var req = InvoiceSearchRequest(
    id: QuerySearchParamString(
      operator: SearchOperator.equals,
      value: '',
    ),
    customerId: QuerySearchParamString(
      operator: SearchOperator.equals,
      value: '',
    ),
    invoiceNumber: QuerySearchParamString(
      operator: SearchOperator.equals,
      value: '',
    ),
    dateDue: QuerySearchParamDateRange(
      startDate: startDate,
      endDate: endDate,
    ),
    amountDue: QuerySearchParamInt(
      operator: SearchOperator.equals,
      value: 10,
    ),
    status: QuerySearchParamString(
      operator: SearchOperator.equals,
      value: '',
    ),
    offset: 0,
    limit: 100,
  );

  expect(jsonEncode(req.toJson()), '{"id":{"operator":"=","value":""},"customer_id":{"operator":"=","value":""},"invoice_number":{"operator":"=","value":""},"date_due":{"start_date":"${startDate.toIso8601String()}","end_date":"${endDate.toIso8601String()}"},"amount_due":{"operator":"=","value":10},"status":{"operator":"=","value":""},"offset":0,"limit":100}');
}
