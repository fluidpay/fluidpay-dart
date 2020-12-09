import 'dart:convert';

import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/merchant/cart/request.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/apple_pay.dart';
import 'package:fluidpay/com/fluidpay/transaction/payment_method/request_data.dart';
import 'package:test/test.dart';

void main() {
  test('cart get request getUrl', _testCartGetRequestGetUrl);
  test('cart search request toJson', _testCartSearchRequestToJson);
  test('cart search request getUrl', _testCartSearchRequestGetUrl);
  test('cart get all request getUrl', _testCartGetAllRequestGetUrl);
  test('cart create request toJson', _testCartCreateRequestToJson);
  test('cart create request getUrl', _testCartCreateRequestGetUrl);
  test('cart update request toJson', _testCartUpdateRequestToJson);
  test('cart update request getUrl', _testCartUpdateRequestGetUrl);
  test('cart delete request getUrl', _testCartDeleteRequestGetUrl);
  test('cart checkout request toJson', _testCartCheckoutRequestToJson);
}

void _testCartGetRequestGetUrl() {
  final request = CartGetRequest(merchantId: 'merchantId', cartId: 'cartId');
  expect('/merchant/merchantId/cart/cartId', request.getUrl());
}

void _testCartSearchRequestToJson() {
  final request = CartSearchRequest(
    merchantId: 'merchantId',
    id: QuerySearchParamString(
        operator: SearchOperator.notEquals, value: 'test value'),
    name: QuerySearchParamString(
        operator: SearchOperator.notEquals, value: 'test value'),
    product: QuerySearchParamString(
        operator: SearchOperator.notEquals, value: 'test value'),
    createdAt: QuerySearchParamDateRange(
        startDate: DateTime.utc(2020, 2), endDate: DateTime.utc(2020, 3)),
    updatedAt: QuerySearchParamDateRange(
        startDate: DateTime.utc(2020, 2), endDate: DateTime.utc(2020, 3)),
    deletedAt: QuerySearchParamDateRange(
        startDate: DateTime.utc(2020, 2), endDate: DateTime.utc(2020, 3)),
    offset: 100,
    limit: 200,
  );

  expect(_cartSearchRequestJson, jsonEncode(request.toJson()));
}

final _cartSearchRequestJson =
    '{"id":$_querySPStringJson,"name":$_querySPStringJson,"product":$_querySPStringJson,"created_at":$_searchDateRangeJson,"updated_at":$_searchDateRangeJson,"deleted_at":$_searchDateRangeJson,"offset":100,"limit":200}';
final _querySPStringJson = '{"operator":"!=","value":"test value"}';
final _searchDateRangeJson =
    '{"start_date":"2020-02-01T00:00:00.000Z","end_date":"2020-03-01T00:00:00.000Z"}';

void _testCartSearchRequestGetUrl() {
  final request = CartSearchRequest(merchantId: 'merchantId');

  expect('/merchant/merchantId/cart/search', request.getUrl());
}

void _testCartGetAllRequestGetUrl() {
  final request = CartGetAllRequest(merchantId: 'merchantId');

  expect('/merchant/merchantId/cart', request.getUrl());
}

void _testCartCreateRequestToJson() {
  final dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');
  final request = CartCreateRequest(
      merchantId: 'merchantId',
      cart: CartDataStringProduct(
        id: 'test id',
        publicHash: 'test publicHash',
        merchantId: 'test merchantId',
        cardProcessorId: 'test cardProcessorId',
        achProcessorId: 'test achProcessorId',
        name: 'test name',
        description: 'test description',
        type: 'test type',
        customFieldsGroup: 'test customFieldsGroup',
        products: [
          'test productId'
        ],
        showAvailableProducts: true,
        requireShippingDetails: true,
        emailReceipt: true,
        payments: true,
        shopifyHash: 'test shopifyHash',
        createdAt: dateTime,
        updatedAt: dateTime,
        deletedAt: dateTime,
      ));

  expect(_cartJson, jsonEncode(request.toJson()));
}

final _cartJson =
    '{"id":"test id","public_hash":"test publicHash","merchant_id":"test merchantId","card_processor_id":"test cardProcessorId","ach_processor_id":"test achProcessorId","name":"test name","description":"test description","type":"test type","custom_fields_group":"test customFieldsGroup","products":["test productId"],"show_available_products":true,"require_shipping_details":true,"email_receipt":true,"payments":true,"shopify_hash":"test shopifyHash","created_at":"2017-10-19T20:15:19.560708Z","updated_at":"2017-10-19T20:15:19.560708Z","deleted_at":"2017-10-19T20:15:19.560708Z"}';

void _testCartCreateRequestGetUrl() {
  final request = CartCreateRequest(merchantId: 'merchantId', cart: CartDataStringProduct());

  expect('/merchant/merchantId/cart', request.getUrl());
}

void _testCartUpdateRequestToJson() {
  final dateTime = DateTime.parse('2017-10-19T20:15:19.560708Z');
  final request = CartUpdateRequest(
      merchantId: 'merchantId',
      cartId: 'cartId',
      cart: CartDataStringProduct(
        id: 'test id',
        publicHash: 'test publicHash',
        merchantId: 'test merchantId',
        cardProcessorId: 'test cardProcessorId',
        achProcessorId: 'test achProcessorId',
        name: 'test name',
        description: 'test description',
        type: 'test type',
        customFieldsGroup: 'test customFieldsGroup',
        products: [
          'test productId'
        ],
        showAvailableProducts: true,
        requireShippingDetails: true,
        emailReceipt: true,
        payments: true,
        shopifyHash: 'test shopifyHash',
        createdAt: dateTime,
        updatedAt: dateTime,
        deletedAt: dateTime,
      ));

  expect(_cartJson, jsonEncode(request.toJson()));
}

void _testCartUpdateRequestGetUrl() {
  final request = CartUpdateRequest(merchantId: 'merchantId', cartId: 'cartId', cart: CartDataStringProduct());

  expect('/merchant/merchantId/cart/cartId', request.getUrl());
}

void _testCartDeleteRequestGetUrl() {
  final request = CartDeleteRequest(merchantId: 'merchantId', cartId: 'cartId');

  expect('/merchant/merchantId/cart/cartId', request.getUrl());
}

void _testCartCheckoutRequestToJson() {
  final request = CartCheckoutRequest(
    cartSessionId: 'test cartSessionId',
    cardProcessorId: 'test cardProcessorId',
    achProcessorId: 'test achProcessorId',
    paymentMethod: _createPaymentMethodRequest(),
    billingAddress: _createAddress(),
    shippingAddress: _createAddress()
  );

  expect(_cartCheckoutJson, jsonEncode(request.toJson()));
}

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

final _cartCheckoutJson = '{"cart_session_id":"test cartSessionId","card_processor_id":"test cardProcessorId","ach_processor_id":"test achProcessorId","payment_method":$_paymentMethodJson,"billing_address":$_addressJson,"shipping_address":$_addressJson}';
final _paymentMethodJson =
    '{"card":{"entry_type":"test entry type","number":"test number","expiration_date":"10/20","cvc":"123","track_1":"test track 1","track_2":"test track 2","encrypted_track_1":"test encrypted track 1","encrypted_track_2":"test encrypted track 2","ksn":"test ksn","encrypted_data":"test encrypted data","cardholder_authentication":{"eci":"test eci","cavv":"test cavv","xid":"test xid","version":"test version","ds_transaction_id":"test ds transaction id","acs_transaction_id":"test acs transaction id"},"card_present":"test card present"},"ach":{"routing_number":"test routing number","account_number":"test account number","account_type":"text account type","sec_code":"test sec code","check_number":"test check number","accountholder_authentication":{"dl_state":"test dl state","dl_number":"test dl number","ssn4":"test ssn4","dob_year":"test dob year"}},"customer":{"id":"test id","source_merchant_id":"test source merchant id","payment_method_type":"test payment method type","payment_method_id":"test payment method id","billing_address_id":"test billing address id","shipping_address_id":"test shipping address id","cvc":"test cvc"},"terminal":{"id":"test id","expiration_date":"test expiration date","cvc":"test cvc","print_receipt":"test print receipt","signature_required":true,"clerk_id":999,"debit":true,"ebt":"test ebt"},"token":"test token","apple_pay_token":{"key_id":"test key id","processor_id":"test processor id","pkpaymenttoken":{"transactionTime":"2020-02-01T00:00:00.000Z","transactionIdentifier":"test transaction id","paymentMethod":{"type":"test type","network":"test network","displayName":"test display name"},"paymentData":{"version":"test version","signature":"test signature","header":{"applicationData":"test application data","ephemeralPublicKey":"test ephemeral public key","wrappedKey":"test wrapped key","publicKeyHash":"test public key hash","transactionID":"test transaction id"},"data":"test data"}}},"apm":{"type":"test type","selling_point":"test selling point","sold_service":"test sold service","merchant_redirect_url":"test merchant redirect url","locale":"test locale","mobile_view":true,"national_id":"test national id","consumer_ref":"test consumer ref","logo_url":"test logo url","hpp_title":"test hpp title","preferred_language":"test preferred language"},"plaid":{"ref_id":"test ref id","account_id":"test account id"},"cash":{}}';
final _addressJson =
    '{"first_name":"test firstName","last_name":"test lastName","company":"test company","address_line_1":"test addressLine1","address_line_2":"test addressLine2","city":"test city","state":"test state","postal_code":"test postalCode","country":"test country","phone":"test phone","fax":"test fax","email":"test email"}';
