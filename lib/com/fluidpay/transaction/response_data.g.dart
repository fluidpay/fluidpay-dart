// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionResponseData _$TransactionResponseDataFromJson(Map<String, dynamic> json) {
  return TransactionResponseData(
    id: json['id'] as String?,
    userId: json['user_id'] as String?,
    userName: json['user_name'] as String?,
    merchantId: json['merchant_id'] as String?,
    merchantName: json['merchant_name'] as String?,
    idempotencyKey: json['idempotency_key'] as String?,
    idempotencyTime: (json['idempotency_time'] as num?)?.toInt(),
    type: json['type'] as String?,
    amount: (json['amount'] as num?)?.toInt(),
    baseAmount: (json['base_amount'] as num?)?.toInt(),
    amountAuthorized: (json['amount_authorized'] as num?)?.toInt(),
    amountCaptured: (json['amount_captured'] as num?)?.toInt(),
    amountSettled: (json['amount_settled'] as num?)?.toInt(),
    amountRefunded: (json['amount_refunded'] as num?)?.toInt(),
    paymentAdjustment: (json['payment_adjustment'] as num?)?.toInt(),
    tipAmount: (json['tip_amount'] as num?)?.toInt(),
    settlementBatchId: json['settlement_batch_id'] as String?,
    processorId: json['processor_id'] as String?,
    processorType: json['processor_type'] as String?,
    processorName: json['processor_name'] as String?,
    paymentMethod: json['payment_method'] as String?,
    paymentType: json['payment_type'] as String?,
    features: (json['features'] as List<dynamic>?)?.map((e) => e as String).toList(),
    nationalTaxAmount: (json['national_tax_amount'] as num?)?.toInt(),
    dutyAmount: (json['duty_amount'] as num?)?.toInt(),
    shipFromPostalCode: json['ship_from_postal_code'] as String?,
    summaryCommodityCode: json['summary_commodity_code'] as String?,
    merchantVatRegistrationNumber: json['merchant_vat_registration_number'] as String?,
    customerVatRegistrationNumber: json['customer_vat_registration_number'] as String?,
    taxAmount: (json['tax_amount'] as num?)?.toInt(),
    taxExempt: json['tax_exempt'] as bool?,
    shippingAmount: (json['shipping_amount'] as num?)?.toInt(),
    surcharge: (json['surcharge'] as num?)?.toInt(),
    discountAmount: (json['discount_amount'] as num?)?.toInt(),
    currency: json['currency'] as String?,
    description: json['description'] as String?,
    orderId: json['order_id'] as String?,
    poNumber: json['po_number'] as String?,
    ipAddress: json['ip_address'] as String?,
    transactionSource: json['transaction_source'] as String?,
    emailReceipt: json['email_receipt'] as bool?,
    emailAddress: json['email_address'] as String?,
    customerId: json['customer_id'] as String?,
    customerPaymentType: json['customer_payment_type'] as String?,
    customerPaymentId: json['customer_payment_id'] as String?,
    subscriptionId: json['subscription_id'] as String?,
    referencedTransactionId: json['referenced_transaction_id'] as String?,
    responseBody: json['response_body'] == null
        ? null
        : TransactionResponseBody.fromJson(json['response_body'] as Map<String, dynamic>),
    customFields: (json['custom_fields'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
    ),
    lineItems: (json['line_items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: json['status'] as String?,
    response: json['response'] as String?,
    responseCode: (json['response_code'] as num?)?.toInt(),
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
    capturedAt: json['captured_at'] == null ? null : DateTime.parse(json['captured_at'] as String),
    settledAt: json['settled_at'] == null ? null : DateTime.parse(json['settled_at'] as String),
  );
}

Map<String, dynamic> _$TransactionResponseDataToJson(TransactionResponseData instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'merchant_id': instance.merchantId,
      'merchant_name': instance.merchantName,
      'idempotency_key': instance.idempotencyKey,
      'idempotency_time': instance.idempotencyTime,
      'type': instance.type,
      'amount': instance.amount,
      'base_amount': instance.baseAmount,
      'amount_authorized': instance.amountAuthorized,
      'amount_captured': instance.amountCaptured,
      'amount_settled': instance.amountSettled,
      'amount_refunded': instance.amountRefunded,
      'payment_adjustment': instance.paymentAdjustment,
      'tip_amount': instance.tipAmount,
      'settlement_batch_id': instance.settlementBatchId,
      'processor_id': instance.processorId,
      'processor_type': instance.processorType,
      'processor_name': instance.processorName,
      'payment_method': instance.paymentMethod,
      'payment_type': instance.paymentType,
      'features': instance.features,
      'national_tax_amount': instance.nationalTaxAmount,
      'duty_amount': instance.dutyAmount,
      'ship_from_postal_code': instance.shipFromPostalCode,
      'summary_commodity_code': instance.summaryCommodityCode,
      'merchant_vat_registration_number': instance.merchantVatRegistrationNumber,
      'customer_vat_registration_number': instance.customerVatRegistrationNumber,
      'tax_amount': instance.taxAmount,
      'tax_exempt': instance.taxExempt,
      'shipping_amount': instance.shippingAmount,
      'surcharge': instance.surcharge,
      'discount_amount': instance.discountAmount,
      'currency': instance.currency,
      'description': instance.description,
      'order_id': instance.orderId,
      'po_number': instance.poNumber,
      'ip_address': instance.ipAddress,
      'transaction_source': instance.transactionSource,
      'email_receipt': instance.emailReceipt,
      'email_address': instance.emailAddress,
      'customer_id': instance.customerId,
      'customer_payment_type': instance.customerPaymentType,
      'customer_payment_id': instance.customerPaymentId,
      'subscription_id': instance.subscriptionId,
      'referenced_transaction_id': instance.referencedTransactionId,
      'response_body': instance.responseBody,
      'custom_fields': instance.customFields,
      'line_items': instance.lineItems,
      'status': instance.status,
      'response': instance.response,
      'response_code': instance.responseCode,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'captured_at': instance.capturedAt?.toIso8601String(),
      'settled_at': instance.settledAt?.toIso8601String(),
    };

TransactionResponseBody _$TransactionResponseBodyFromJson(Map<String, dynamic> json) {
  return TransactionResponseBody(
    card: json['card'] == null ? null : CreditCardResponse.fromJson(json['card'] as Map<String, dynamic>),
    terminal:
        json['terminal'] == null ? null : TerminalResponse.fromJson(json['terminal'] as Map<String, dynamic>),
    ach: json['ach'] == null ? null : ACHResponse.fromJson(json['ach'] as Map<String, dynamic>),
    apm: json['apm'] == null ? null : APMResponse.fromJson(json['apm'] as Map<String, dynamic>),
    cash: json['cash'] == null ? null : CashResponse.fromJson(json['cash'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TransactionResponseBodyToJson(TransactionResponseBody instance) => <String, dynamic>{
      'card': instance.card,
      'terminal': instance.terminal,
      'ach': instance.ach,
      'apm': instance.apm,
      'cash': instance.cash,
    };

TokenCardResponse _$TokenCardResponseFromJson(Map<String, dynamic> json) {
  return TokenCardResponse(
    id: json['id'] as String?,
    cardType: json['card_type'] as String?,
    firstSix: json['first_six'] as String?,
    lastFour: json['last_four'] as String?,
    maskedCard: json['masked_card'] as String?,
    expirationDate: json['expiration_date'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    processorId: json['processor_id'] as String?,
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$TokenCardResponseToJson(TokenCardResponse instance) => <String, dynamic>{
      'id': instance.id,
      'card_type': instance.cardType,
      'first_six': instance.firstSix,
      'last_four': instance.lastFour,
      'masked_card': instance.maskedCard,
      'expiration_date': instance.expirationDate,
      'flags': instance.flags,
      'processor_id': instance.processorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

CreditCardResponse _$CreditCardResponseFromJson(Map<String, dynamic> json) {
  return CreditCardResponse(
    response: json['response'] as String?,
    responseCode: (json['response_code'] as num?)?.toInt(),
    authCode: json['auth_code'] as String?,
    processorResponseCode: json['processor_response_code'] as String?,
    processorResponseText: json['processor_response_text'] as String?,
    processorTransactionId: json['processor_transaction_id'] as String?,
    processorType: json['processor_type'] as String?,
    bin_type: json['bin_type'] as String?,
    type: json['type'] as String?,
    avsResponseCode: json['avs_response_code'] as String?,
    cvvResponseCode: json['cvv_response_code'] as String?,
    processorSpecific: json['processor_specific'],
    id: json['id'] as String?,
    cardType: json['card_type'] as String?,
    firstSix: json['first_six'] as String?,
    lastFour: json['last_four'] as String?,
    maskedCard: json['masked_card'] as String?,
    expirationDate: json['expiration_date'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    processorId: json['processor_id'] as String?,
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$CreditCardResponseToJson(CreditCardResponse instance) => <String, dynamic>{
      'id': instance.id,
      'card_type': instance.cardType,
      'first_six': instance.firstSix,
      'last_four': instance.lastFour,
      'masked_card': instance.maskedCard,
      'expiration_date': instance.expirationDate,
      'flags': instance.flags,
      'processor_id': instance.processorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'response': instance.response,
      'response_code': instance.responseCode,
      'auth_code': instance.authCode,
      'processor_response_code': instance.processorResponseCode,
      'processor_response_text': instance.processorResponseText,
      'processor_transaction_id': instance.processorTransactionId,
      'processor_type': instance.processorType,
      'bin_type': instance.bin_type,
      'type': instance.type,
      'avs_response_code': instance.avsResponseCode,
      'cvv_response_code': instance.cvvResponseCode,
      'processor_specific': instance.processorSpecific,
    };

TerminalResponse _$TerminalResponseFromJson(Map<String, dynamic> json) {
  return TerminalResponse(
    id: json['id'] as String?,
    terminalId: json['terminal_id'] as String?,
    terminalDescription: json['terminal_description'] as String?,
    cardType: json['card_type'] as String?,
    paymentType: json['payment_type'] as String?,
    entryType: json['entry_type'] as String?,
    firstFour: json['first_four'] as String?,
    lastFour: json['last_four'] as String?,
    maskedCard: json['masked_card'] as String?,
    cardholderName: json['cardholder_name'] as String?,
    authCode: json['auth_code'] as String?,
    responseCode: (json['response_code'] as num?)?.toInt(),
    processorResponseText: json['processor_response_text'] as String?,
    processorSpecific: json['processor_specific'] as Map<String, dynamic>?,
    emvAid: json['emv_aid'] as String?,
    emvAppName: json['emv_app_name'] as String?,
    emvTvr: json['emv_tvr'] as String?,
    emvTsi: json['emv_tsi'] as String?,
    signatureData: json['signature_data'] as String?,
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$TerminalResponseToJson(TerminalResponse instance) => <String, dynamic>{
      'id': instance.id,
      'terminal_id': instance.terminalId,
      'terminal_description': instance.terminalDescription,
      'card_type': instance.cardType,
      'payment_type': instance.paymentType,
      'entry_type': instance.entryType,
      'first_four': instance.firstFour,
      'last_four': instance.lastFour,
      'masked_card': instance.maskedCard,
      'cardholder_name': instance.cardholderName,
      'auth_code': instance.authCode,
      'response_code': instance.responseCode,
      'processor_response_text': instance.processorResponseText,
      'processor_specific': instance.processorSpecific,
      'emv_aid': instance.emvAid,
      'emv_app_name': instance.emvAppName,
      'emv_tvr': instance.emvTvr,
      'emv_tsi': instance.emvTsi,
      'signature_data': instance.signatureData,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

TokenACHResponse _$TokenACHResponseFromJson(Map<String, dynamic> json) {
  return TokenACHResponse(
    id: json['id'] as String?,
    maskedAccountNumber: json['masked_account_number'] as String?,
    routingNumber: json['routing_number'] as String?,
    accountType: json['account_type'] as String?,
    secCode: json['sec_code'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    processorId: json['processor_id'] as String?,
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$TokenACHResponseToJson(TokenACHResponse instance) => <String, dynamic>{
      'id': instance.id,
      'masked_account_number': instance.maskedAccountNumber,
      'routing_number': instance.routingNumber,
      'account_type': instance.accountType,
      'sec_code': instance.secCode,
      'flags': instance.flags,
      'processor_id': instance.processorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

ACHResponse _$ACHResponseFromJson(Map<String, dynamic> json) {
  return ACHResponse(
    authCode: json['auth_code'] as String?,
    response: json['response'] as String?,
    responseCode: (json['response_code'] as num?)?.toInt(),
    processorResponseCode: json['processor_response_code'] as String?,
    processorResponseText: json['processor_response_text'] as String?,
    processorType: json['processor_type'] as String?,
    processorSpecific: json['processor_specific'],
    id: json['id'] as String?,
    maskedAccountNumber: json['masked_account_number'] as String?,
    routingNumber: json['routing_number'] as String?,
    accountType: json['account_type'] as String?,
    secCode: json['sec_code'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    processorId: json['processor_id'] as String?,
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$ACHResponseToJson(ACHResponse instance) => <String, dynamic>{
      'id': instance.id,
      'masked_account_number': instance.maskedAccountNumber,
      'routing_number': instance.routingNumber,
      'account_type': instance.accountType,
      'sec_code': instance.secCode,
      'flags': instance.flags,
      'processor_id': instance.processorId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'auth_code': instance.authCode,
      'response': instance.response,
      'response_code': instance.responseCode,
      'processor_response_code': instance.processorResponseCode,
      'processor_response_text': instance.processorResponseText,
      'processor_type': instance.processorType,
      'processor_specific': instance.processorSpecific,
    };

APMResponse _$APMResponseFromJson(Map<String, dynamic> json) {
  return APMResponse(
    status: json['status'] as String?,
    processorTransactionId: json['processor_transaction_id'] as String?,
    transactionId: json['transaction_id'] as String?,
    fundingStatus: json['funding_status'] as String?,
    flags: json['flags'] as String?,
    errorMsg: json['error_msg'] as String?,
    redirectUrl: json['redirect_url'] as String?,
    failReason: json['fail_reason'] as String?,
    channel: json['channel'] as String?,
    tag: json['tag'] as String?,
    documentCode: json['document_code'] as String?,
  );
}

Map<String, dynamic> _$APMResponseToJson(APMResponse instance) => <String, dynamic>{
      'status': instance.status,
      'processor_transaction_id': instance.processorTransactionId,
      'transaction_id': instance.transactionId,
      'funding_status': instance.fundingStatus,
      'flags': instance.flags,
      'error_msg': instance.errorMsg,
      'redirect_url': instance.redirectUrl,
      'fail_reason': instance.failReason,
      'channel': instance.channel,
      'tag': instance.tag,
      'document_code': instance.documentCode,
    };

CashResponse _$CashResponseFromJson(Map<String, dynamic> json) {
  return CashResponse();
}

Map<String, dynamic> _$CashResponseToJson(CashResponse instance) => <String, dynamic>{};

TransactionVoidResponseData _$TransactionVoidResponseDataFromJson(Map<String, dynamic> json) {
  return TransactionVoidResponseData(
    id: json['id'] as String?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$TransactionVoidResponseDataToJson(TransactionVoidResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

TransactionCreateVaultResponseData _$TransactionCreateVaultResponseDataFromJson(Map<String, dynamic> json) {
  return TransactionCreateVaultResponseData(
    id: json['id'] as String?,
    description: json['description'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    paymentMethod: json['payment_method'] == null
        ? null
        : TokenPaymentMethodResponse.fromJson(json['payment_method'] as Map<String, dynamic>),
    paymentMethodType: json['payment_method_type'] as String?,
    billingAddress: json['billing_address'] == null
        ? null
        : TokenAddressResponse.fromJson(json['billing_address'] as Map<String, dynamic>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : TokenAddressResponse.fromJson(json['shipping_address'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$TransactionCreateVaultResponseDataToJson(
        TransactionCreateVaultResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'flags': instance.flags,
      'payment_method': instance.paymentMethod,
      'payment_method_type': instance.paymentMethodType,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

TokenPaymentMethodResponse _$TokenPaymentMethodResponseFromJson(Map<String, dynamic> json) {
  return TokenPaymentMethodResponse(
    cardToken: json['card'] == null ? null : TokenCardResponse.fromJson(json['card'] as Map<String, dynamic>),
    achToken: json['ach'] == null ? null : TokenACHResponse.fromJson(json['ach'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TokenPaymentMethodResponseToJson(TokenPaymentMethodResponse instance) =>
    <String, dynamic>{
      'card': instance.cardToken,
      'ach': instance.achToken,
    };

TokenAddressResponse _$TokenAddressResponseFromJson(Map<String, dynamic> json) {
  return TokenAddressResponse(
    id: json['id'] as String?,
    customerId: json['customer_id'] as String?,
    createdAt: json['created_at'] == null ? null : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null ? null : DateTime.parse(json['updated_at'] as String),
  )
    ..firstName = json['first_name'] as String?
    ..lastName = json['last_name'] as String?
    ..company = json['company'] as String?
    ..addressLine1 = json['address_line_1'] as String?
    ..addressLine2 = json['address_line_2'] as String?
    ..city = json['city'] as String?
    ..state = json['state'] as String?
    ..postalCode = json['postal_code'] as String?
    ..country = json['country'] as String?
    ..phone = json['phone'] as String?
    ..fax = json['fax'] as String?
    ..email = json['email'] as String?;
}

Map<String, dynamic> _$TokenAddressResponseToJson(TokenAddressResponse instance) => <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
      'id': instance.id,
      'customer_id': instance.customerId,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

TransactionMultiVoidResponseData _$TransactionMultiVoidResponseDataFromJson(Map<String, dynamic> json) {
  return TransactionMultiVoidResponseData(
    transactionId: json['transaction_id'] as String?,
    status: json['status'] as String?,
    orderId: json['order_id'] as String?,
    msg: json['msg'] as String?,
  );
}

Map<String, dynamic> _$TransactionMultiVoidResponseDataToJson(TransactionMultiVoidResponseData instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'status': instance.status,
      'order_id': instance.orderId,
      'msg': instance.msg,
    };
