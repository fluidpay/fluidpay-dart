import 'dart:convert';

import 'package:fluidpay/com/fluidpay/transaction/apple_pay.dart';
import 'package:fluidpay/com/fluidpay/transaction/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/payment_method/request_data.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:test/test.dart';

void main() {
  test('transaction create request toJson', () {
    final request = _buildTransactionCreateRequest();

    expect(jsonEncode(request.toJson()), transactionCreateRequestJson);
  });
}

final transactionCreateRequestJson = '{"idempotency_key":"test idempotency key","idempotency_time":159,"type":"verification","tax_exempt":true,"currency":"PHP","description":"test description","order_id":"test order id","po_number":"test po number","ip_address":"127.0.0.1","email_receipt":true,"email_address":"test@gateway.com","processor_id":"test processor id","allow_partial_payment":true,"create_vault_record":true,"vault_record_id_format":"test vault record id format","vendor_id":"test vendor id","amount":100,"tax_amount":101,"shipping_amount":102,"surcharge":103,"discount_amount":104,"national_tax_amount":105,"duty_amount":106,"ship_from_postal_code":"test postal code","summary_commodity_code":"test summary commodity code","merchant_vat_registration_number":"test m vat number","customer_vat_registration_number":"test c vat number","payment_adjustment":{"value":107,"type":"test type"},"additional_amount":{"hsa":{"total":108,"rx_amount":109,"vision_amount":110,"clinic_amount":111,"dental_amount":112,"sku":"test sku"}},"payment_method":{"card":{"entry_type":"test entry type","number":"test number","expiration_date":"10/20","cvc":"123","track_1":"test track 1","track_2":"test track 2","encrypted_track_1":"test encrypted track 1","encrypted_track_2":"test encrypted track 2","ksn":"test ksn","encrypted_data":"test encrypted data","cardholder_authentication":{"eci":"test eci","cavv":"test cavv","xid":"test xid","version":"test version","ds_transaction_id":"test ds transaction id","acs_transaction_id":"test acs transaction id"},"card_present":"test card present"},"ach":{"routing_number":"test routing number","account_number":"test account number","account_type":"text account type","sec_code":"test sec code","check_number":"test check number","accountholder_authentication":{"dl_state":"test dl state","dl_number":"test dl number","ssn4":"test ssn4","dob_year":"test dob year"}},"customer":{"id":"test id","source_merchant_id":"test source merchant id","payment_method_type":"test payment method type","payment_method_id":"test payment method id","billing_address_id":"test billing address id","shipping_address_id":"test shipping address id","cvc":"test cvc"},"terminal":{"id":"test id","expiration_date":"test expiration date","cvc":"test cvc","print_receipt":"test print receipt","signature_required":true,"clerk_id":999,"debit":true,"ebt":"test ebt"},"token":"test token","apple_pay_token":{"key_id":"test key id","processor_id":"test processor id","pkpaymenttoken":{"transactionTime":"2020-02-01T00:00:00.000Z","transactionIdentifier":"test transaction id","paymentMethod":{"type":"test type","network":"test network","displayName":"test display name"},"paymentData":{"version":"test version","signature":"test signature","header":{"applicationData":"test application data","ephemeralPublicKey":"test ephemeral public key","wrappedKey":"test wrapped key","publicKeyHash":"test public key hash","transactionID":"test transaction id"},"data":"test data"}}},"apm":{"type":"test type","selling_point":"test selling point","sold_service":"test sold service","merchant_redirect_url":"test merchant redirect url","locale":"test locale","mobile_view":true,"national_id":"test national id","consumer_ref":"test consumer ref","logo_url":"test logo url","hpp_title":"test hpp title","preferred_language":"test preferred language"},"plaid":{"ref_id":"test ref id","account_id":"test account id"},"cash":{}},"card_on_file_indicator":"test card on file indicator","initiated_by":"test initiated by","initial_transaction_id":"test initial transaction id","stored_credential_indicator":"test stored credential indicator","billing_address":{"first_name":"test billing firstName","last_name":"test billing lastName","company":"test billing company","address_line_1":"test billing addressLine1","address_line_2":"test billing addressLine2","city":"test billing city","state":"test billing state","postal_code":"test billing postalCode","country":"test billing country","phone":"test billing phone","fax":"test billing fax","email":"test billing email"},"shipping_address":{"first_name":"test shipping firstName","last_name":"test shipping lastName","company":"test shipping company","address_line_1":"test shipping addressLine1","address_line_2":"test shipping addressLine2","city":"test shipping city","state":"test shipping state","postal_code":"test shipping postalCode","country":"test shipping country","phone":"test shipping phone","fax":"test shipping fax","email":"test shipping email"},"processor_specific":{"boltPay":{"recurring_cycle":"test recurring cycle"}},"custom_fields":{"test custom field key 1":["test custom field value 1","test custom field value 2"]},"group_name":"test group name","descriptor":{"name":"test name","address":"test address","city":"test city","state":"test state","postal_code":"test postalCode","email":"test email","phone":"test phone"},"line_items":[{"id":"test id","status":"rejected","type":"test type","name":"test name","description":"test description","quantity":600.0,"quantity_shipped":601.0,"product_code":"test productCode","commodity_code":"test commodityCode","unit_of_measure":"test unitOfMeasure","alternate_tax_identifier":"test alternateTaxIdentifier","taxable":true,"local_tax_rate":"test localTaxRate","local_tax":602,"national_tax_rate":"test nationalTaxRate","national_tax":603,"tax_rate":"test taxRate","tax_amount":604,"discount_amount":605,"freight_amount":606,"unit_price":607,"discount_rate":"test discountRate","subtotal":608,"amount":609}],"fingerprint":{"test fingerprint key":"test value 1"},"bypass_rule_engine":true,"void_on_success":true,"billing_method":"test billing method","mcc":"test mcc"}';
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

  request.paymentMethod = PaymentMethodRequest()
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

  request
    ..cardOnFileIndicator = 'test card on file indicator'
    ..initiatedBy = 'test initiated by'
    ..initialTransactionId = 'test initial transaction id'
    ..storedCredentialIndicator = 'test stored credential indicator';

  request
    ..billingAddress = (Address()
      ..firstName = 'test billing firstName'
      ..lastName = 'test billing lastName'
      ..company = 'test billing company'
      ..addressLine1 = 'test billing addressLine1'
      ..addressLine2 = 'test billing addressLine2'
      ..city = 'test billing city'
      ..state = 'test billing state'
      ..postalCode = 'test billing postalCode'
      ..country = 'test billing country'
      ..phone = 'test billing phone'
      ..fax = 'test billing fax'
      ..email = 'test billing email')
    ..shippingAddress = (Address()
      ..firstName = 'test shipping firstName'
      ..lastName = 'test shipping lastName'
      ..company = 'test shipping company'
      ..addressLine1 = 'test shipping addressLine1'
      ..addressLine2 = 'test shipping addressLine2'
      ..city = 'test shipping city'
      ..state = 'test shipping state'
      ..postalCode = 'test shipping postalCode'
      ..country = 'test shipping country'
      ..phone = 'test shipping phone'
      ..fax = 'test shipping fax'
      ..email = 'test shipping email');

  request.processorSpecific = ProcessorSpecificRequest()
    ..boltPay = (BoltPay()..recurringCycle = 'test recurring cycle');
  request.customFields = {
    'test custom field key 1': [
      'test custom field value 1',
      'test custom field value 2'
    ],
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
  request.lineItems = [
    LineItem()
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
    ..amount = 609
  ];
  request.fingerprint = {
    'test fingerprint key': 'test value 1'
  };
  request.bypassRuleEngine = true;
  request.voidOnSuccess = true;

  request.billingMethod = 'test billing method';
  request.mcc = 'test mcc';

  return request;
}
