// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodRequest _$PaymentMethodRequestFromJson(Map<String, dynamic> json) {
  return PaymentMethodRequest(
    card: json['card'] == null
        ? null
        : CreditCardRequest.fromJson(json['card'] as Map<String, dynamic>),
    ach: json['ach'] == null
        ? null
        : ACHRequest.fromJson(json['ach'] as Map<String, dynamic>),
    customer: json['customer'] == null
        ? null
        : CustomerTransactionRequest.fromJson(
            json['customer'] as Map<String, dynamic>),
    terminal: json['terminal'] == null
        ? null
        : TerminalTransactionRequest.fromJson(
            json['terminal'] as Map<String, dynamic>),
    token: json['token'] as String?,
    applePayToken: json['apple_pay_token'] == null
        ? null
        : ApplePayTokenRequest.fromJson(
            json['apple_pay_token'] as Map<String, dynamic>),
    apm: json['apm'] == null
        ? null
        : APMRequest.fromJson(json['apm'] as Map<String, dynamic>),
    plaid: json['plaid'] == null
        ? null
        : PlaidRequest.fromJson(json['plaid'] as Map<String, dynamic>),
    cash: json['cash'] == null
        ? null
        : CashRequest.fromJson(json['cash'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PaymentMethodRequestToJson(
        PaymentMethodRequest instance) =>
    <String, dynamic>{
      'card': instance.card,
      'ach': instance.ach,
      'customer': instance.customer,
      'terminal': instance.terminal,
      'token': instance.token,
      'apple_pay_token': instance.applePayToken,
      'apm': instance.apm,
      'plaid': instance.plaid,
      'cash': instance.cash,
    };

CreditCardRequest _$CreditCardRequestFromJson(Map<String, dynamic> json) {
  return CreditCardRequest(
    entryType: json['entry_type'] as String?,
    number: json['number'] as String?,
    expirationDate: json['expiration_date'] as String?,
    cvc: json['cvc'] as String?,
    track1: json['track_1'] as String?,
    track2: json['track_2'] as String?,
    encryptedTrack1: json['encrypted_track_1'] as String?,
    encryptedTrack2: json['encrypted_track_2'] as String?,
    ksn: json['ksn'] as String?,
    encryptedData: json['encrypted_data'] as String?,
    cardholderAuthentication: json['cardholder_authentication'] == null
        ? null
        : CardholderAuthenticationRequest.fromJson(
            json['cardholder_authentication'] as Map<String, dynamic>),
    cardPresent: json['card_present'] as String?,
    signatureData: json['signature_data'] as String?,
  );
}

Map<String, dynamic> _$CreditCardRequestToJson(CreditCardRequest instance) =>
    <String, dynamic>{
      'entry_type': instance.entryType,
      'number': instance.number,
      'expiration_date': instance.expirationDate,
      'cvc': instance.cvc,
      'track_1': instance.track1,
      'track_2': instance.track2,
      'encrypted_track_1': instance.encryptedTrack1,
      'encrypted_track_2': instance.encryptedTrack2,
      'ksn': instance.ksn,
      'encrypted_data': instance.encryptedData,
      'cardholder_authentication': instance.cardholderAuthentication,
      'card_present': instance.cardPresent,
      'signature_data': instance.signatureData,
    };

CardholderAuthenticationRequest _$CardholderAuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return CardholderAuthenticationRequest(
    eci: json['eci'] as String?,
    cavv: json['cavv'] as String?,
    xid: json['xid'] as String?,
    version: json['version'] as String?,
    dsTransactionId: json['ds_transaction_id'] as String?,
    acsTransactionId: json['acs_transaction_id'] as String?,
  );
}

Map<String, dynamic> _$CardholderAuthenticationRequestToJson(
        CardholderAuthenticationRequest instance) =>
    <String, dynamic>{
      'eci': instance.eci,
      'cavv': instance.cavv,
      'xid': instance.xid,
      'version': instance.version,
      'ds_transaction_id': instance.dsTransactionId,
      'acs_transaction_id': instance.acsTransactionId,
    };

ACHRequest _$ACHRequestFromJson(Map<String, dynamic> json) {
  return ACHRequest(
    routingNumber: json['routing_number'] as String?,
    accountNumber: json['account_number'] as String?,
    accountType: json['account_type'] as String?,
    secCode: json['sec_code'] as String?,
    checkNumber: json['check_number'] as String?,
    accountHolderAuthentication: json['accountholder_authentication'] == null
        ? null
        : ACHAuthenticationRequest.fromJson(
            json['accountholder_authentication'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ACHRequestToJson(ACHRequest instance) =>
    <String, dynamic>{
      'routing_number': instance.routingNumber,
      'account_number': instance.accountNumber,
      'account_type': instance.accountType,
      'sec_code': instance.secCode,
      'check_number': instance.checkNumber,
      'accountholder_authentication': instance.accountHolderAuthentication,
    };

ACHAuthenticationRequest _$ACHAuthenticationRequestFromJson(
    Map<String, dynamic> json) {
  return ACHAuthenticationRequest(
    dlState: json['dl_state'] as String?,
    dlNumber: json['dl_number'] as String?,
    ssn4: json['ssn4'] as String?,
    dobYear: json['dob_year'] as String?,
  );
}

Map<String, dynamic> _$ACHAuthenticationRequestToJson(
        ACHAuthenticationRequest instance) =>
    <String, dynamic>{
      'dl_state': instance.dlState,
      'dl_number': instance.dlNumber,
      'ssn4': instance.ssn4,
      'dob_year': instance.dobYear,
    };

CustomerTransactionRequest _$CustomerTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerTransactionRequest(
    id: json['id'] as String?,
    sourceMerchantId: json['source_merchant_id'] as String?,
    paymentMethodType: json['payment_method_type'] as String?,
    paymentMethodId: json['payment_method_id'] as String?,
    billingAddressId: json['billing_address_id'] as String?,
    shippingAddressId: json['shipping_address_id'] as String?,
    cvc: json['cvc'] as String?,
    terminalId: json['terminal_id'] as String?,
  );
}

Map<String, dynamic> _$CustomerTransactionRequestToJson(
        CustomerTransactionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_merchant_id': instance.sourceMerchantId,
      'payment_method_type': instance.paymentMethodType,
      'payment_method_id': instance.paymentMethodId,
      'billing_address_id': instance.billingAddressId,
      'shipping_address_id': instance.shippingAddressId,
      'cvc': instance.cvc,
      'terminal_id': instance.terminalId,
    };

TerminalTransactionRequest _$TerminalTransactionRequestFromJson(
    Map<String, dynamic> json) {
  return TerminalTransactionRequest(
    id: json['id'] as String?,
    expirationDate: json['expiration_date'] as String?,
    cvc: json['cvc'] as String?,
    printReceipt: json['print_receipt'] as String?,
    signatureRequired: json['signature_required'] as bool?,
    clerkId: json['clerk_id'] as int?,
    debit: json['debit'] as bool?,
    ebt: json['ebt'] as String?,
    traceNum: json['trace_num'] as String?,
    hostToken: json['host_token'] as String?,
  );
}

Map<String, dynamic> _$TerminalTransactionRequestToJson(
        TerminalTransactionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expiration_date': instance.expirationDate,
      'cvc': instance.cvc,
      'print_receipt': instance.printReceipt,
      'signature_required': instance.signatureRequired,
      'clerk_id': instance.clerkId,
      'debit': instance.debit,
      'ebt': instance.ebt,
      'trace_num': instance.traceNum,
      'host_token': instance.hostToken,
    };

APMRequest _$APMRequestFromJson(Map<String, dynamic> json) {
  return APMRequest(
    type: json['type'] as String?,
    sellingPoint: json['selling_point'] as String?,
    soldService: json['sold_service'] as String?,
    merchantRedirectUrl: json['merchant_redirect_url'] as String?,
    locale: json['locale'] as String?,
    mobileView: json['mobile_view'] as bool?,
    nationalId: json['national_id'] as String?,
    consumerRef: json['consumer_ref'] as String?,
    logoUrl: json['logo_url'] as String?,
    hppTitle: json['hpp_title'] as String?,
    preferredLanguage: json['preferred_language'] as String?,
  );
}

Map<String, dynamic> _$APMRequestToJson(APMRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'selling_point': instance.sellingPoint,
      'sold_service': instance.soldService,
      'merchant_redirect_url': instance.merchantRedirectUrl,
      'locale': instance.locale,
      'mobile_view': instance.mobileView,
      'national_id': instance.nationalId,
      'consumer_ref': instance.consumerRef,
      'logo_url': instance.logoUrl,
      'hpp_title': instance.hppTitle,
      'preferred_language': instance.preferredLanguage,
    };

PlaidRequest _$PlaidRequestFromJson(Map<String, dynamic> json) {
  return PlaidRequest(
    refId: json['ref_id'] as String?,
    accountId: json['account_id'] as String?,
  );
}

Map<String, dynamic> _$PlaidRequestToJson(PlaidRequest instance) =>
    <String, dynamic>{
      'ref_id': instance.refId,
      'account_id': instance.accountId,
    };

CashRequest _$CashRequestFromJson(Map<String, dynamic> json) {
  return CashRequest();
}

Map<String, dynamic> _$CashRequestToJson(CashRequest instance) =>
    <String, dynamic>{};
