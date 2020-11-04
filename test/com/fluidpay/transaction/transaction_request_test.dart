import 'dart:convert';

import 'package:fluidpay/com/fluidpay/transaction/apple_pay.dart';
import 'package:fluidpay/com/fluidpay/transaction/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/payment_method/request_data.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:test/test.dart';

void main() {
  _transactionCreateRequestToJsonTest();

  _transactionSearchRequestGetUrlTest();

  _transactionCaptureRequestToJsonTest();
  _transactionCaptureRequestGetUrlTest();

  _transactionVoidRequestToJsonTest();
  _transactionVoidRequestGetUrlTest();

  _transactionRefundRequestToJsonTest();
  _transactionRefundRequestGetUrlTest();

  _transactionCreateVaultRequestToJsonTest();
  _transactionCreateVaultRequestGetUrlTest();

  _transactionEmailReceiptRequestToJsonTest();
  _transactionEmailReceiptRequestGetUrlTest();

  _transactionPrintReceiptRequestToJsonTest();
  _transactionPrintReceiptRequestGetUrlTest();

  _transactionTipAdjustmentRequestToJsonTest();
  _transactionTipAdjustmentRequestGetUrlTest();

  _transactionMultiRequestToJsonTest();

  _transactionMultiVoidRequestToJsonTest();

  _transactionMultiRefundRequestToJsonTest();
}

void _transactionMultiRefundRequestToJsonTest() {
  test('transaction multi refund request toJson', () {
    final request = TransactionMultiRefundRequest()
        ..transactions = [
          RefundTransaction()
          ..id = 'test id'
          ..amount = 100
        ];

    expect(_transactionMultiRefundRequestJson, jsonEncode(request.toJson()));
  });
}
final _transactionMultiRefundRequestJson = '{"transactions":[{"id":"test id","amount":100}]}';

void _transactionMultiVoidRequestToJsonTest() {
  test('transaction multi void request toJson', () {
    final request = TransactionMultiVoidRequest()
        ..transactions = [
          VoidTransaction()
          ..id = 'test id'
        ];

    expect(_transactionMultiVoidRequestJson, jsonEncode(request.toJson()));
  });
}
final _transactionMultiVoidRequestJson = '{"transactions":[{"id":"test id"}]}';

void _transactionMultiRequestToJsonTest() {
  test('transaction multi request toJson', () {
    final request = TransactionMultiRequest()
      ..createVaultRecord = true
      ..createVaultRecordMerchantId = 'test createVaultRecordMerchantId'
      ..paymentMethod = _createPaymentMethodRequest()
      ..billingAddress = _createAddress()
      ..shippingAddress = _createAddress()
      ..transactions = [
        TransactionMultiRequestData()
          ..merchantId = 'test merchantId'
          ..processorId = 'test processorId'
          ..type = TransactionType.authorize
          ..amount = 400
          ..taxAmount = 401
          ..shippingAmount = 402
          ..currency = 'test currency'
          ..description = 'test description'
          ..orderId = 'test orderId'
          ..poNumber = 'test poNumber'
          ..ipAddress = 'test ipAddress'
          ..lineItems = [_createLineItem()]
      ];

    expect(_transactionMultiRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionMultiRequestJson =
    '{"create_vault_record":true,"create_vault_record_merchant_id":"test createVaultRecordMerchantId","payment_method":$_paymentMethodJson,"billing_address":$_addressJson,"shipping_address":$_addressJson,"transactions":[$_transactionMultiRequestDataJson]}';
final _transactionMultiRequestDataJson = '{"merchant_id":"test merchantId","processor_id":"test processorId","type":"authorize","amount":400,"tax_amount":401,"shipping_amount":402,"currency":"test currency","description":"test description","order_id":"test orderId","po_number":"test poNumber","ip_address":"test ipAddress","line_items":[$_lineItemJson]}';

void _transactionTipAdjustmentRequestToJsonTest() {
  test('transaction tip adjustment request toJson', () {
    final request = TransactionTipAdjustmentRequest('')
      ..tip = 1000
      ..baseAmount = 2000;

    expect(_transactionTipAdjustmentRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionTipAdjustmentRequestJson =
    '{"transaction_id":"","tip":1000,"base_amount":2000}';

void _transactionTipAdjustmentRequestGetUrlTest() {
  test('transaction tip adjustment request getUrl', () {
    expect('/transaction/test_id/tipadjust',
        TransactionTipAdjustmentRequest('test_id').getUrl());
  });
}

void _transactionPrintReceiptRequestToJsonTest() {
  test('transaction print receipt request toJson', () {
    final request = TransactionPrintReceiptRequest('');

    expect(_transactionPrintReceiptRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionPrintReceiptRequestJson = '{"transaction_id":""}';

void _transactionPrintReceiptRequestGetUrlTest() {
  test('transaction print receipt request getUrl', () {
    expect(
        '/transaction/test_id/print', TransactionPrintReceiptRequest('test_id').getUrl());
  });
}

void _transactionEmailReceiptRequestToJsonTest() {
  test('transaction email receipt request toJson', () {
    final request = TransactionEmailReceiptRequest('test email address', '');

    expect(_transactionEmailReceiptRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionEmailReceiptRequestJson =
    '{"transaction_id":"","email_address":"test email address"}';

void _transactionEmailReceiptRequestGetUrlTest() {
  test('transaction email receipt request getUrl', () {
    expect('/transaction/test_id/email',
        TransactionEmailReceiptRequest('', 'test_id').getUrl());
  });
}

void _transactionCreateVaultRequestToJsonTest() {
  test('transaction create vault request toJson', () {
    final request = TransactionCreateVaultRequest('');

    expect(_transactionCreateVaultRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionCreateVaultRequestJson = '{"transaction_id":""}';

void _transactionCreateVaultRequestGetUrlTest() {
  test('transaction create vault request getUrl', () {
    expect(
        '/transaction/test_id/vault', TransactionCreateVaultRequest('test_id').getUrl());
  });
}

void _transactionRefundRequestToJsonTest() {
  test('transaction refund request toJson', () {
    final request = TransactionRefundRequest('')
      ..amount = 1000
      ..ipAddress = 'test ipAddress'
      ..terminalId = 'test terminalId'
      ..vendorId = 'test vendorId'
      ..printReceipt = 'test printReceipt'
      ..signatureRequired = 'test signatureRequired';

    expect(_transactionRefundRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionRefundRequestJson =
    '{"transaction_id":"","amount":1000,"ip_address":"test ipAddress","terminal_id":"test terminalId","vendor_id":"test vendorId","print_receipt":"test printReceipt","signature_required":"test signatureRequired"}';

void _transactionRefundRequestGetUrlTest() {
  test('transaction refund request getUrl', () {
    expect('/transaction/test_id/refund', TransactionRefundRequest('test_id').getUrl());
  });
}

void _transactionVoidRequestToJsonTest() {
  test('transaction void request toJson', () {
    final request = TransactionVoidRequest('');

    expect(_transactionVoidRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionVoidRequestJson = '{"transaction_id":""}';

void _transactionVoidRequestGetUrlTest() {
  test('transaction void request getUrl', () {
    expect('/transaction/test_id/void', TransactionVoidRequest('test_id').getUrl());
  });
}

void _transactionCaptureRequestGetUrlTest() {
  test('transaction capture request getUrl', () {
    expect('/transaction/test_id/capture', TransactionCaptureRequest('test_id').getUrl());
  });
}

void _transactionCaptureRequestToJsonTest() {
  test('transaction capture request toJson', () {
    final request = TransactionCaptureRequest('test_transaction_id')
      ..amount = 1000
      ..taxAmount = 1001
      ..taxExempt = true
      ..shippingAmount = 1002
      ..orderId = 'test orderId'
      ..poNumber = 'test poNumber'
      ..ipAddress = 'test ipAddress'
      ..vendorId = 'test vendorId';

    expect(_transactionCaptureRequestJson, jsonEncode(request.toJson()));
  });
}

final _transactionCaptureRequestJson =
    '{"transaction_id":"test_transaction_id","amount":1000,"tax_amount":1001,"tax_exempt":true,"shipping_amount":1002,"order_id":"test orderId","po_number":"test poNumber","ip_address":"test ipAddress","vendor_id":"test vendorId"}';

void _transactionSearchRequestGetUrlTest() {
  test('transaction search request getUrl only transactionId passed', () {
    final request = TransactionSearchRequest('testTransactionId');

    expect('/transaction/testTransactionId', request.getUrl());
  });
  test('transaction search request getUrl both merchantId and transactionId passed', () {
    final request = TransactionSearchRequest('testTransactionId', merchantId: 'testMerchantId');

    expect('/transaction/testMerchantId/testTransactionId', request.getUrl());
  });
}

void _transactionCreateRequestToJsonTest() {
  test('transaction create request toJson', () {
    final request = _buildTransactionCreateRequest();

    expect(jsonEncode(request.toJson()), _transactionCreateRequestJson);
  });
}

final _transactionCreateRequestJson =
    '{"idempotency_key":"test idempotency key","idempotency_time":159,"type":"verification","tax_exempt":true,"currency":"PHP","description":"test description","order_id":"test order id","po_number":"test po number","ip_address":"127.0.0.1","email_receipt":true,"email_address":"test@gateway.com","processor_id":"test processor id","allow_partial_payment":true,"create_vault_record":true,"vault_record_id_format":"test vault record id format","vendor_id":"test vendor id","amount":100,"tax_amount":101,"shipping_amount":102,"surcharge":103,"discount_amount":104,"national_tax_amount":105,"duty_amount":106,"ship_from_postal_code":"test postal code","summary_commodity_code":"test summary commodity code","merchant_vat_registration_number":"test m vat number","customer_vat_registration_number":"test c vat number","payment_adjustment":{"value":107,"type":"test type"},"additional_amount":{"hsa":{"total":108,"rx_amount":109,"vision_amount":110,"clinic_amount":111,"dental_amount":112,"sku":"test sku"}},"payment_method":$_paymentMethodJson,"card_on_file_indicator":"test card on file indicator","initiated_by":"test initiated by","initial_transaction_id":"test initial transaction id","stored_credential_indicator":"test stored credential indicator","billing_address":$_addressJson,"shipping_address":$_addressJson,"processor_specific":{"boltPay":{"recurring_cycle":"test recurring cycle"}},"custom_fields":{"test custom field key 1":["test custom field value 1","test custom field value 2"]},"group_name":"test group name","descriptor":{"name":"test name","address":"test address","city":"test city","state":"test state","postal_code":"test postalCode","email":"test email","phone":"test phone"},"line_items":[$_lineItemJson],"fingerprint":{"test fingerprint key":"test value 1"},"bypass_rule_engine":true,"void_on_success":true,"billing_method":"test billing method","mcc":"test mcc"}';
final _paymentMethodJson =
    '{"card":{"entry_type":"test entry type","number":"test number","expiration_date":"10/20","cvc":"123","track_1":"test track 1","track_2":"test track 2","encrypted_track_1":"test encrypted track 1","encrypted_track_2":"test encrypted track 2","ksn":"test ksn","encrypted_data":"test encrypted data","cardholder_authentication":{"eci":"test eci","cavv":"test cavv","xid":"test xid","version":"test version","ds_transaction_id":"test ds transaction id","acs_transaction_id":"test acs transaction id"},"card_present":"test card present"},"ach":{"routing_number":"test routing number","account_number":"test account number","account_type":"text account type","sec_code":"test sec code","check_number":"test check number","accountholder_authentication":{"dl_state":"test dl state","dl_number":"test dl number","ssn4":"test ssn4","dob_year":"test dob year"}},"customer":{"id":"test id","source_merchant_id":"test source merchant id","payment_method_type":"test payment method type","payment_method_id":"test payment method id","billing_address_id":"test billing address id","shipping_address_id":"test shipping address id","cvc":"test cvc"},"terminal":{"id":"test id","expiration_date":"test expiration date","cvc":"test cvc","print_receipt":"test print receipt","signature_required":true,"clerk_id":999,"debit":true,"ebt":"test ebt"},"token":"test token","apple_pay_token":{"key_id":"test key id","processor_id":"test processor id","pkpaymenttoken":{"transactionTime":"2020-02-01T00:00:00.000Z","transactionIdentifier":"test transaction id","paymentMethod":{"type":"test type","network":"test network","displayName":"test display name"},"paymentData":{"version":"test version","signature":"test signature","header":{"applicationData":"test application data","ephemeralPublicKey":"test ephemeral public key","wrappedKey":"test wrapped key","publicKeyHash":"test public key hash","transactionID":"test transaction id"},"data":"test data"}}},"apm":{"type":"test type","selling_point":"test selling point","sold_service":"test sold service","merchant_redirect_url":"test merchant redirect url","locale":"test locale","mobile_view":true,"national_id":"test national id","consumer_ref":"test consumer ref","logo_url":"test logo url","hpp_title":"test hpp title","preferred_language":"test preferred language"},"plaid":{"ref_id":"test ref id","account_id":"test account id"},"cash":{}}';
final _addressJson =
    '{"first_name":"test firstName","last_name":"test lastName","company":"test company","address_line_1":"test addressLine1","address_line_2":"test addressLine2","city":"test city","state":"test state","postal_code":"test postalCode","country":"test country","phone":"test phone","fax":"test fax","email":"test email"}';
final _lineItemJson =
    '{"id":"test id","status":"rejected","type":"test type","name":"test name","description":"test description","quantity":600.0,"quantity_shipped":601.0,"product_code":"test productCode","commodity_code":"test commodityCode","unit_of_measure":"test unitOfMeasure","alternate_tax_identifier":"test alternateTaxIdentifier","taxable":true,"local_tax_rate":"test localTaxRate","local_tax":602,"national_tax_rate":"test nationalTaxRate","national_tax":603,"tax_rate":"test taxRate","tax_amount":604,"discount_amount":605,"freight_amount":606,"unit_price":607,"discount_rate":"test discountRate","subtotal":608,"amount":609}';

TransactionCreateRequest _buildTransactionCreateRequest() {
  final request = TransactionCreateRequest();

  request
    ..idempotencyKey = 'test idempotency key'
    ..idempotencyTime = 159
    ..type = TransactionType.verification
    ..taxExempt = true
    ..currency = 'PHP'
    ..description = 'test description'
    ..orderId = 'test order id'
    ..poNumber = 'test po number'
    ..ipAddress = '127.0.0.1'
    ..emailReceipt = true
    ..emailAddress = 'test@gateway.com'
    ..processorId = 'test processor id'
    ..allowPartialPayment = true
    ..createVaultRecord = true
    ..vaultRecordIdFormat = 'test vault record id format'
    ..vendorId = 'test vendor id';

  request
    ..amount = 100
    ..taxAmount = 101
    ..shippingAmount = 102
    ..surcharge = 103
    ..discountAmount = 104;

  request
    ..nationalTaxAmount = 105
    ..dutyAmount = 106
    ..shipFromPostalCode = 'test postal code'
    ..summaryCommodityCode = 'test summary commodity code'
    ..merchantVatRegistrationNumber = 'test m vat number'
    ..customerVatRegistrationNumber = 'test c vat number';

  request.paymentAdjustment = PaymentAdjustmentRequest()
    ..value = 107
    ..type = 'test type';

  request.additionalAmountRequest = AdditionalAmountRequest()
    ..hsa = (HSAAmountsRequest()
      ..total = 108
      ..rxAmount = 109
      ..visionAmount = 110
      ..clinicAmount = 111
      ..dentalAmount = 112
      ..sku = 'test sku');

  request.paymentMethod = _createPaymentMethodRequest();

  request
    ..cardOnFileIndicator = 'test card on file indicator'
    ..initiatedBy = 'test initiated by'
    ..initialTransactionId = 'test initial transaction id'
    ..storedCredentialIndicator = 'test stored credential indicator';

  request
    ..billingAddress = _createAddress()
    ..shippingAddress = _createAddress();

  request.processorSpecific = ProcessorSpecificRequest()
    ..boltPay = (BoltPay()..recurringCycle = 'test recurring cycle');
  request.customFields = {
    'test custom field key 1': ['test custom field value 1', 'test custom field value 2'],
  };
  request.groupName = 'test group name';
  request.descriptor = DescriptorRequest()
    ..name = 'test name'
    ..address = 'test address'
    ..city = 'test city'
    ..state = 'test state'
    ..postalCode = 'test postalCode'
    ..email = 'test email'
    ..phone = 'test phone';
  request.lineItems = [_createLineItem()];
  request.fingerprint = {'test fingerprint key': 'test value 1'};
  request.bypassRuleEngine = true;
  request.voidOnSuccess = true;

  request.billingMethod = 'test billing method';
  request.mcc = 'test mcc';

  return request;
}

LineItem _createLineItem() => LineItem()
  ..id = 'test id'
  ..status = LineItemStatus.rejected
  ..type = 'test type'
  ..name = 'test name'
  ..description = 'test description'
  ..quantity = 600
  ..quantityShipped = 601
  ..productCode = 'test productCode'
  ..commodityCode = 'test commodityCode'
  ..unitOfMeasure = 'test unitOfMeasure'
  ..alternateTaxIdentifier = 'test alternateTaxIdentifier'
  ..taxable = true
  ..localTaxRate = 'test localTaxRate'
  ..localTax = 602
  ..nationalTaxRate = 'test nationalTaxRate'
  ..nationalTax = 603
  ..taxRate = 'test taxRate'
  ..taxAmount = 604
  ..discountAmount = 605
  ..freightAmount = 606
  ..unitPrice = 607
  ..discountRate = 'test discountRate'
  ..subtotal = 608
  ..amount = 609;

Address _createAddress() => Address()
  ..firstName = 'test firstName'
  ..lastName = 'test lastName'
  ..company = 'test company'
  ..addressLine1 = 'test addressLine1'
  ..addressLine2 = 'test addressLine2'
  ..city = 'test city'
  ..state = 'test state'
  ..postalCode = 'test postalCode'
  ..country = 'test country'
  ..phone = 'test phone'
  ..fax = 'test fax'
  ..email = 'test email';

PaymentMethodRequest _createPaymentMethodRequest() => PaymentMethodRequest()
  ..card = (CreditCardRequest()
    ..entryType = 'test entry type'
    ..number = 'test number'
    ..expirationDate = '10/20'
    ..cvc = '123'
    ..track1 = 'test track 1'
    ..track2 = 'test track 2'
    ..encryptedTrack1 = 'test encrypted track 1'
    ..encryptedTrack2 = 'test encrypted track 2'
    ..ksn = 'test ksn'
    ..encryptedData = 'test encrypted data'
    ..cardholderAuthentication = (CardholderAuthenticationRequest()
      ..eci = 'test eci'
      ..cavv = 'test cavv'
      ..xid = 'test xid'
      ..version = 'test version'
      ..dsTransactionId = 'test ds transaction id'
      ..acsTransactionId = 'test acs transaction id')
    ..cardPresent = 'test card present')
  ..ach = (ACHRequest()
    ..routingNumber = 'test routing number'
    ..accountNumber = 'test account number'
    ..accountType = 'text account type'
    ..secCode = 'test sec code'
    ..checkNumber = 'test check number'
    ..accountHolderAuthentication = (ACHAuthenticationRequest()
      ..dlState = 'test dl state'
      ..dlNumber = 'test dl number'
      ..ssn4 = 'test ssn4'
      ..dobYear = 'test dob year'))
  ..customer = (CustomerTransactionRequest()
    ..id = 'test id'
    ..sourceMerchantId = 'test source merchant id'
    ..paymentMethodType = 'test payment method type'
    ..paymentMethodId = 'test payment method id'
    ..billingAddressId = 'test billing address id'
    ..shippingAddressId = 'test shipping address id'
    ..cvc = 'test cvc')
  ..terminal = (TerminalTransactionRequest()
    ..id = 'test id'
    ..expirationDate = 'test expiration date'
    ..cvc = 'test cvc'
    ..printReceipt = 'test print receipt'
    ..signatureRequired = true
    ..clerkId = 999
    ..debit = true
    ..ebt = 'test ebt')
  ..token = 'test token'
  ..applePayToken = (ApplePayTokenRequest()
    ..keyId = 'test key id'
    ..processorId = 'test processor id'
    ..pkPaymentToken = (PKPaymentToken()
      ..transactionTime = DateTime.utc(2020, 2)
      ..transactionIdentifier = 'test transaction id'
      ..paymentMethod = (PaymentMethod()
        ..type = 'test type'
        ..network = 'test network'
        ..displayName = 'test display name')
      ..paymentData = (PaymentData()
        ..version = 'test version'
        ..signature = 'test signature'
        ..header = (Header()
          ..applicationData = 'test application data'
          ..ephemeralPublicKey = 'test ephemeral public key'
          ..wrappedKey = 'test wrapped key'
          ..publicKeyHash = 'test public key hash'
          ..transactionId = 'test transaction id')
        ..data = 'test data')))
  ..apm = (APMRequest()
    ..type = 'test type'
    ..sellingPoint = 'test selling point'
    ..soldService = 'test sold service'
    ..merchantRedirectUrl = 'test merchant redirect url'
    ..locale = 'test locale'
    ..mobileView = true
    ..nationalId = 'test national id'
    ..consumerRef = 'test consumer ref'
    ..logoUrl = 'test logo url'
    ..hppTitle = 'test hpp title'
    ..preferredLanguage = 'test preferred language')
  ..plaid = (PlaidRequest()
    ..refId = 'test ref id'
    ..accountId = 'test account id')
  ..cash = CashRequest();
