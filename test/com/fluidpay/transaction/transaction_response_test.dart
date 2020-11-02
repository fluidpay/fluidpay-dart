import 'package:fluidpay/com/fluidpay/transaction/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/response.dart';
import 'package:test/test.dart';

void main() {
  test('transaction create response fromJson', () {
    final dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');

    final transactionCreateResponse =
        TransactionCreateResponse.fromJson(transactionCreateResponseMap);

    expect(transactionCreateResponse.status, 'test status');
    expect(transactionCreateResponse.msg, 'test msg');
    expect(transactionCreateResponse.totalCount, 1000);

    expect(transactionCreateResponse.data.id, 'test id');
    expect(transactionCreateResponse.data.userId, 'test userId');
    expect(transactionCreateResponse.data.userName, 'test userName');
    expect(transactionCreateResponse.data.merchantId, 'test merchantId');
    expect(transactionCreateResponse.data.merchantName, 'test merchantName');
    expect(
        transactionCreateResponse.data.idempotencyKey, 'test idempotencyKey');
    expect(transactionCreateResponse.data.idempotencyTime, 100);
    expect(transactionCreateResponse.data.type, 'test type');
    expect(transactionCreateResponse.data.amount, 201);
    expect(transactionCreateResponse.data.baseAmount, 202);
    expect(transactionCreateResponse.data.amountAuthorized, 203);
    expect(transactionCreateResponse.data.amountCaptured, 204);
    expect(transactionCreateResponse.data.amountSettled, 205);
    expect(transactionCreateResponse.data.amountRefunded, 206);
    expect(transactionCreateResponse.data.paymentAdjustment, 207);
    expect(transactionCreateResponse.data.tipAmount, 208);
    expect(transactionCreateResponse.data.settlementBatchId,
        'test settlementBatchId');
    expect(transactionCreateResponse.data.processorId, 'test processorId');
    expect(transactionCreateResponse.data.processorType, 'test processorType');
    expect(transactionCreateResponse.data.processorName, 'test processorName');
    expect(transactionCreateResponse.data.paymentMethod, 'test paymentMethod');
    expect(transactionCreateResponse.data.paymentType, 'test paymentType');
    expect(transactionCreateResponse.data.features,
        ['test feature 1', 'test feature 2']);
    expect(transactionCreateResponse.data.nationalTaxAmount, 300);
    expect(transactionCreateResponse.data.dutyAmount, 301);
    expect(transactionCreateResponse.data.shipFromPostalCode,
        'test shipFromPostalCode');
    expect(transactionCreateResponse.data.summaryCommodityCode,
        'test summaryCommodityCode');
    expect(transactionCreateResponse.data.merchantVatRegistrationNumber,
        'test merchantVatRegistrationNumber');
    expect(transactionCreateResponse.data.customerVatRegistrationNumber,
        'test customerVatRegistrationNumber');
    expect(transactionCreateResponse.data.taxAmount, 400);
    expect(transactionCreateResponse.data.taxExempt, true);
    expect(transactionCreateResponse.data.shippingAmount, 401);
    expect(transactionCreateResponse.data.surcharge, 402);
    expect(transactionCreateResponse.data.discountAmount, 403);
    expect(transactionCreateResponse.data.currency, 'test currency');
    expect(transactionCreateResponse.data.description, 'test description');
    expect(transactionCreateResponse.data.orderId, 'test orderId');
    expect(transactionCreateResponse.data.poNumber, 'test poNumber');
    expect(transactionCreateResponse.data.ipAddress, 'test ipAddress');
    expect(transactionCreateResponse.data.transactionSource,
        'test transactionSource');
    expect(transactionCreateResponse.data.emailReceipt, true);
    expect(transactionCreateResponse.data.emailAddress, 'test emailAddress');
    expect(transactionCreateResponse.data.customerId, 'test customerId');
    expect(transactionCreateResponse.data.customerPaymentType,
        'test customerPaymentType');
    expect(transactionCreateResponse.data.customerPaymentID,
        'test customerPaymentID');
    expect(
        transactionCreateResponse.data.subscriptionId, 'test subscriptionId');
    expect(transactionCreateResponse.data.referencedTransactionId,
        'test referencedTransactionId');

    expect(transactionCreateResponse.data.responseBody.card.id, 'test id');
    expect(transactionCreateResponse.data.responseBody.card.cardType,
        'test cardType');
    expect(transactionCreateResponse.data.responseBody.card.firstSix,
        'test firstSix');
    expect(transactionCreateResponse.data.responseBody.card.lastFour,
        'test lastFour');
    expect(transactionCreateResponse.data.responseBody.card.maskedCard,
        'test maskedCard');
    expect(transactionCreateResponse.data.responseBody.card.expirationDate,
        'test expirationDate');
    expect(transactionCreateResponse.data.responseBody.card.response,
        'test response');
    expect(transactionCreateResponse.data.responseBody.card.responseCode, 200);
    expect(transactionCreateResponse.data.responseBody.card.authCode,
        'test authCode');
    expect(
        transactionCreateResponse.data.responseBody.card.processorResponseCode,
        'test processorResponseCode');
    expect(
        transactionCreateResponse.data.responseBody.card.processorResponseText,
        'test processorResponseText');
    expect(
        transactionCreateResponse.data.responseBody.card.processorTransactionId,
        'test processorTransactionId');
    expect(transactionCreateResponse.data.responseBody.card.processorType,
        'test processorType');
    expect(transactionCreateResponse.data.responseBody.card.processorId,
        'test processorId');
    expect(transactionCreateResponse.data.responseBody.card.bin_type,
        'test bin_type');
    expect(transactionCreateResponse.data.responseBody.card.type, 'test type');
    expect(transactionCreateResponse.data.responseBody.card.avsResponseCode,
        'test avsResponseCode');
    expect(transactionCreateResponse.data.responseBody.card.cvvResponseCode,
        'test cvvResponseCode');
    expect(transactionCreateResponse.data.responseBody.card.processorSpecific,
        'test processorSpecific');
    expect(
        transactionCreateResponse.data.responseBody.card.createdAt, dateTime);
    expect(
        transactionCreateResponse.data.responseBody.card.updatedAt, dateTime);

    expect(transactionCreateResponse.data.responseBody.terminal.id, 'test id');
    expect(transactionCreateResponse.data.responseBody.terminal.terminalId,
        'test terminalId');
    expect(
        transactionCreateResponse
            .data.responseBody.terminal.terminalDescription,
        'test terminalDescription');
    expect(transactionCreateResponse.data.responseBody.terminal.cardType,
        'test cardType');
    expect(transactionCreateResponse.data.responseBody.terminal.paymentType,
        'test paymentType');
    expect(transactionCreateResponse.data.responseBody.terminal.entryType,
        'test entryType');
    expect(transactionCreateResponse.data.responseBody.terminal.firstFour,
        'test firstFour');
    expect(transactionCreateResponse.data.responseBody.terminal.lastFour,
        'test lastFour');
    expect(transactionCreateResponse.data.responseBody.terminal.maskedCard,
        'test maskedCard');
    expect(transactionCreateResponse.data.responseBody.terminal.cardholderName,
        'test cardholderName');
    expect(transactionCreateResponse.data.responseBody.terminal.authCode,
        'test authCode');
    expect(transactionCreateResponse.data.responseBody.terminal.responseCode,
        'test responseCode');
    expect(
        transactionCreateResponse
            .data.responseBody.terminal.processorResponseText,
        'test processorResponseText');
    expect(
        transactionCreateResponse.data.responseBody.terminal.processorSpecific,
        'test processorSpecific');
    expect(transactionCreateResponse.data.responseBody.terminal.emvAid,
        'test emvAid');
    expect(transactionCreateResponse.data.responseBody.terminal.emvAppName,
        'test emvAppName');
    expect(transactionCreateResponse.data.responseBody.terminal.emvTvr,
        'test emvTvr');
    expect(transactionCreateResponse.data.responseBody.terminal.emvTsi,
        'test emvTsi');
    expect(transactionCreateResponse.data.responseBody.terminal.signatureData,
        'test signatureData');
    expect(transactionCreateResponse.data.responseBody.terminal.createdAt,
        dateTime);
    expect(transactionCreateResponse.data.responseBody.terminal.updatedAt,
        dateTime);

    expect(transactionCreateResponse.data.responseBody.ach.id, 'test id');
    expect(transactionCreateResponse.data.responseBody.ach.secCode,
        'test secCode');
    expect(transactionCreateResponse.data.responseBody.ach.accountType,
        'test accountType');
    expect(transactionCreateResponse.data.responseBody.ach.maskedAccountNumber,
        'test maskedAccountNumber');
    expect(transactionCreateResponse.data.responseBody.ach.routingNumber,
        'test routingNumber');
    expect(transactionCreateResponse.data.responseBody.ach.authCode,
        'test authCode');
    expect(transactionCreateResponse.data.responseBody.ach.response,
        'test response');
    expect(transactionCreateResponse.data.responseBody.ach.responseCode,
        'test responseCode');
    expect(
        transactionCreateResponse.data.responseBody.ach.processorResponseCode,
        'test processorResponseCode');
    expect(
        transactionCreateResponse.data.responseBody.ach.processorResponseText,
        'test processorResponseText');
    expect(transactionCreateResponse.data.responseBody.ach.processorType,
        'test processorType');
    expect(transactionCreateResponse.data.responseBody.ach.processorId,
        'test processorId');
    expect(transactionCreateResponse.data.responseBody.ach.processorSpecific,
        'test processorSpecific');
    expect(transactionCreateResponse.data.responseBody.ach.createdAt, dateTime);
    expect(transactionCreateResponse.data.responseBody.ach.updatedAt, dateTime);

    expect(
        transactionCreateResponse.data.responseBody.apm.status, 'test status');
    expect(
        transactionCreateResponse.data.responseBody.apm.processorTransactionId,
        'test processorTransactionId');
    expect(transactionCreateResponse.data.responseBody.apm.transactionId,
        'test transactionId');
    expect(transactionCreateResponse.data.responseBody.apm.fundingStatus,
        'test fundingStatus');
    expect(transactionCreateResponse.data.responseBody.apm.flags, 'test flags');
    expect(transactionCreateResponse.data.responseBody.apm.errorMsg,
        'test errorMsg');
    expect(transactionCreateResponse.data.responseBody.apm.redirectUrl,
        'test redirectUrl');
    expect(transactionCreateResponse.data.responseBody.apm.failReason,
        'test failReason');
    expect(transactionCreateResponse.data.responseBody.apm.channel,
        'test channel');
    expect(transactionCreateResponse.data.responseBody.apm.tag, 'test tag');
    expect(transactionCreateResponse.data.responseBody.apm.documentCode,
        'test documentCode');

    expect(transactionCreateResponse.data.customFields, {
      'test_custom_fields_key_1': [
        'test custom field 1',
        'test custom field 2'
      ],
      'test_custom_fields_key_2': [
        'test custom field 3',
        'test custom field 4'
      ],
    });
    expect(transactionCreateResponse.data.lineItems.length, 1);
    expect(transactionCreateResponse.data.lineItems[0].id, 'test id');
    expect(transactionCreateResponse.data.lineItems[0].status, LineItemStatus.rejected);
    expect(transactionCreateResponse.data.lineItems[0].type, 'test type');
    expect(transactionCreateResponse.data.lineItems[0].name, 'test name');
    expect(transactionCreateResponse.data.lineItems[0].description, 'test description');
    expect(transactionCreateResponse.data.lineItems[0].quantity, 600);
    expect(transactionCreateResponse.data.lineItems[0].quantityShipped, 601.999);
    expect(transactionCreateResponse.data.lineItems[0].productCode, 'test productCode');
    expect(transactionCreateResponse.data.lineItems[0].commodityCode, 'test commodityCode');
    expect(transactionCreateResponse.data.lineItems[0].unitOfMeasure, 'test unitOfMeasure');
    expect(transactionCreateResponse.data.lineItems[0].alternateTaxIdentifier, 'test alternateTaxIdentifier');
    expect(transactionCreateResponse.data.lineItems[0].taxable, true);
    expect(transactionCreateResponse.data.lineItems[0].localTaxRate, 'test localTaxRate');
    expect(transactionCreateResponse.data.lineItems[0].localTax, 602);
    expect(transactionCreateResponse.data.lineItems[0].nationalTaxRate, 'test nationalTaxRate');
    expect(transactionCreateResponse.data.lineItems[0].nationalTax, 603);
    expect(transactionCreateResponse.data.lineItems[0].taxRate, 'test taxRate');
    expect(transactionCreateResponse.data.lineItems[0].taxAmount, 604);
    expect(transactionCreateResponse.data.lineItems[0].discountAmount, 605);
    expect(transactionCreateResponse.data.lineItems[0].freightAmount, 606);
    expect(transactionCreateResponse.data.lineItems[0].unitPrice, 607);
    expect(transactionCreateResponse.data.lineItems[0].discountRate, 'test discountRate');
    expect(transactionCreateResponse.data.lineItems[0].subtotal, 608);
    expect(transactionCreateResponse.data.lineItems[0].amount, 609);

    expect(transactionCreateResponse.data.status, 'test status');
    expect(transactionCreateResponse.data.response, 'test response');
    expect(transactionCreateResponse.data.responseCode, 500);
    expect(transactionCreateResponse.data.billingAddress.firstName,
        'test firstName');
    expect(transactionCreateResponse.data.billingAddress.lastName,
        'test lastName');
    expect(
        transactionCreateResponse.data.billingAddress.company, 'test company');
    expect(transactionCreateResponse.data.billingAddress.addressLine1,
        'test addressLine1');
    expect(transactionCreateResponse.data.billingAddress.addressLine2,
        'test addressLine2');
    expect(transactionCreateResponse.data.billingAddress.city, 'test city');
    expect(transactionCreateResponse.data.billingAddress.state, 'test state');
    expect(transactionCreateResponse.data.billingAddress.postalCode,
        'test postalCode');
    expect(
        transactionCreateResponse.data.billingAddress.country, 'test country');
    expect(transactionCreateResponse.data.billingAddress.phone, 'test phone');
    expect(transactionCreateResponse.data.billingAddress.fax, 'test fax');
    expect(transactionCreateResponse.data.billingAddress.email, 'test email');
    expect(transactionCreateResponse.data.shippingAddress.firstName,
        'test firstName');
    expect(transactionCreateResponse.data.shippingAddress.lastName,
        'test lastName');
    expect(
        transactionCreateResponse.data.shippingAddress.company, 'test company');
    expect(transactionCreateResponse.data.shippingAddress.addressLine1,
        'test addressLine1');
    expect(transactionCreateResponse.data.shippingAddress.addressLine2,
        'test addressLine2');
    expect(transactionCreateResponse.data.shippingAddress.city, 'test city');
    expect(transactionCreateResponse.data.shippingAddress.state, 'test state');
    expect(transactionCreateResponse.data.shippingAddress.postalCode,
        'test postalCode');
    expect(
        transactionCreateResponse.data.shippingAddress.country, 'test country');
    expect(transactionCreateResponse.data.shippingAddress.phone, 'test phone');
    expect(transactionCreateResponse.data.shippingAddress.fax, 'test fax');
    expect(transactionCreateResponse.data.shippingAddress.email, 'test email');
    expect(transactionCreateResponse.data.createdAt, dateTime);
    expect(transactionCreateResponse.data.updatedAt, dateTime);
    expect(transactionCreateResponse.data.capturedAt, dateTime);
    expect(transactionCreateResponse.data.settledAt, dateTime);
  });
}

final transactionCreateResponseMap = <String, dynamic>{
  'status': 'test status',
  'msg': 'test msg',
  'total_count': 1000,
  'data': <String, dynamic>{
    'id': 'test id',
    'user_id': 'test userId',
    'user_name': 'test userName',
    'merchant_id': 'test merchantId',
    'merchant_name': 'test merchantName',
    'idempotency_key': 'test idempotencyKey',
    'idempotency_time': 100,
    'type': 'test type',
    'amount': 201,
    'base_amount': 202,
    'amount_authorized': 203,
    'amount_captured': 204,
    'amount_settled': 205,
    'amount_refunded': 206,
    'payment_adjustment': 207,
    'tip_amount': 208,
    'settlement_batch_id': 'test settlementBatchId',
    'processor_id': 'test processorId',
    'processor_type': 'test processorType',
    'processor_name': 'test processorName',
    'payment_method': 'test paymentMethod',
    'payment_type': 'test paymentType',
    'features': ['test feature 1', 'test feature 2'],
    'national_tax_amount': 300,
    'duty_amount': 301,
    'ship_from_postal_code': 'test shipFromPostalCode',
    'summary_commodity_code': 'test summaryCommodityCode',
    'merchant_vat_registration_number': 'test merchantVatRegistrationNumber',
    'customer_vat_registration_number': 'test customerVatRegistrationNumber',
    'tax_amount': 400,
    'tax_exempt': true,
    'shipping_amount': 401,
    'surcharge': 402,
    'discount_amount': 403,
    'currency': 'test currency',
    'description': 'test description',
    'order_id': 'test orderId',
    'po_number': 'test poNumber',
    'ip_address': 'test ipAddress',
    'transaction_source': 'test transactionSource',
    'email_receipt': true,
    'email_address': 'test emailAddress',
    'customer_id': 'test customerId',
    'customer_payment_type': 'test customerPaymentType',
    'customer_payment_ID': 'test customerPaymentID',
    'subscription_id': 'test subscriptionId',
    'referenced_transaction_id': 'test referencedTransactionId',
    'response_body': <String, dynamic>{
      'card': {
        'id': 'test id',
        'card_type': 'test cardType',
        'first_six': 'test firstSix',
        'last_four': 'test lastFour',
        'masked_card': 'test maskedCard',
        'expiration_date': 'test expirationDate',
        'response': 'test response',
        'response_code': 200,
        'auth_code': 'test authCode',
        'processor_response_code': 'test processorResponseCode',
        'processor_response_text': 'test processorResponseText',
        'processor_transaction_id': 'test processorTransactionId',
        'processor_type': 'test processorType',
        'processor_id': 'test processorId',
        'bin_type': 'test bin_type',
        'type': 'test type',
        'avs_response_code': 'test avsResponseCode',
        'cvv_response_code': 'test cvvResponseCode',
        'processor_specific': 'test processorSpecific',
        'created_at': '2017-10-19T20:15:19.560708Z',
        'updated_at': '2017-10-19T20:15:19.560708Z',
      },
      'terminal': {
        'id': 'test id',
        'terminal_id': 'test terminalId',
        'terminal_description': 'test terminalDescription',
        'card_type': 'test cardType',
        'payment_type': 'test paymentType',
        'entry_type': 'test entryType',
        'first_four': 'test firstFour',
        'last_four': 'test lastFour',
        'masked_card': 'test maskedCard',
        'cardholder_name': 'test cardholderName',
        'auth_code': 'test authCode',
        'response_code': 'test responseCode',
        'processor_response_text': 'test processorResponseText',
        'processor_specific': 'test processorSpecific',
        'emv_aid': 'test emvAid',
        'emv_app_name': 'test emvAppName',
        'emv_tvr': 'test emvTvr',
        'emv_tsi': 'test emvTsi',
        'signature_data': 'test signatureData',
        'created_at': '2017-10-19T20:15:19.560708Z',
        'updated_at': '2017-10-19T20:15:19.560708Z',
      },
      'ach': {
        'id': 'test id',
        'sec_code': 'test secCode',
        'account_type': 'test accountType',
        'masked_account_number': 'test maskedAccountNumber',
        'routing_number': 'test routingNumber',
        'auth_code': 'test authCode',
        'response': 'test response',
        'response_code': 'test responseCode',
        'processor_response_code': 'test processorResponseCode',
        'processor_response_text': 'test processorResponseText',
        'processor_type': 'test processorType',
        'processor_id': 'test processorId',
        'processor_specific': 'test processorSpecific',
        'created_at': '2017-10-19T20:15:19.560708Z',
        'updated_at': '2017-10-19T20:15:19.560708Z',
      },
      'apm': {
        'status': 'test status',
        'processor_transaction_id': 'test processorTransactionId',
        'transaction_id': 'test transactionId',
        'funding_status': 'test fundingStatus',
        'flags': 'test flags',
        'error_msg': 'test errorMsg',
        'redirect_url': 'test redirectUrl',
        'fail_reason': 'test failReason',
        'channel': 'test channel',
        'tag': 'test tag',
        'document_code': 'test documentCode',
      }
    },
    'custom_fields': {
      'test_custom_fields_key_1': [
        'test custom field 1',
        'test custom field 2'
      ],
      'test_custom_fields_key_2': [
        'test custom field 3',
        'test custom field 4'
      ],
    },
    'line_items': [
      {
        'id': 'test id',
        'status': 'rejected',
        'type': 'test type',
        'name': 'test name',
        'description': 'test description',
        'quantity': 600,
        'quantity_shipped': 601.999,
        'product_code': 'test productCode',
        'commodity_code': 'test commodityCode',
        'unit_of_measure': 'test unitOfMeasure',
        'alternate_tax_identifier': 'test alternateTaxIdentifier',
        'taxable': true,
        'local_tax_rate': 'test localTaxRate',
        'local_tax': 602,
        'national_tax_rate': 'test nationalTaxRate',
        'national_tax': 603,
        'tax_rate': 'test taxRate',
        'tax_amount': 604,
        'discount_amount': 605,
        'freight_amount': 606,
        'unit_price': 607,
        'discount_rate': 'test discountRate',
        'subtotal': 608,
        'amount': 609,
      }
    ],
    'status': 'test status',
    'response': 'test response',
    'response_code': 500,
    'billing_address': {
      'first_name': 'test firstName',
      'last_name': 'test lastName',
      'company': 'test company',
      'address_line_1': 'test addressLine1',
      'address_line_2': 'test addressLine2',
      'city': 'test city',
      'state': 'test state',
      'postal_code': 'test postalCode',
      'country': 'test country',
      'phone': 'test phone',
      'fax': 'test fax',
      'email': 'test email',
    },
    'shipping_address': {
      'first_name': 'test firstName',
      'last_name': 'test lastName',
      'company': 'test company',
      'address_line_1': 'test addressLine1',
      'address_line_2': 'test addressLine2',
      'city': 'test city',
      'state': 'test state',
      'postal_code': 'test postalCode',
      'country': 'test country',
      'phone': 'test phone',
      'fax': 'test fax',
      'email': 'test email',
    },
    'created_at': '2017-10-19T20:15:19.560708Z',
    'updated_at': '2017-10-19T20:15:19.560708Z',
    'captured_at': '2017-10-19T20:15:19.560708Z',
    'settled_at': '2017-10-19T20:15:19.560708Z',
  }
};
