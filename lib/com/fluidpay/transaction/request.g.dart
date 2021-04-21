// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionCreateRequest _$TransactionCreateRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionCreateRequest(
    idempotencyKey: json['idempotency_key'] as String?,
    idempotencyTime: json['idempotency_time'] as int?,
    type: _$enumDecodeNullable(_$TransactionTypeEnumMap, json['type']),
    taxExempt: json['tax_exempt'] as bool?,
    currency: json['currency'] as String?,
    description: json['description'] as String?,
    orderId: json['order_id'] as String?,
    poNumber: json['po_number'] as String?,
    ipAddress: json['ip_address'] as String?,
    emailReceipt: json['email_receipt'] as bool?,
    emailAddress: json['email_address'] as String?,
    processorId: json['processor_id'] as String?,
    allowPartialPayment: json['allow_partial_payment'] as bool?,
    createVaultRecord: json['create_vault_record'] as bool?,
    vaultRecordIdFormat: json['vault_record_id_format'] as String?,
    vendorId: json['vendor_id'] as String?,
    amount: json['amount'] as int?,
    taxAmount: json['tax_amount'] as int?,
    shippingAmount: json['shipping_amount'] as int?,
    surcharge: json['surcharge'] as int?,
    discountAmount: json['discount_amount'] as int?,
    nationalTaxAmount: json['national_tax_amount'] as int?,
    dutyAmount: json['duty_amount'] as int?,
    shipFromPostalCode: json['ship_from_postal_code'] as String?,
    summaryCommodityCode: json['summary_commodity_code'] as String?,
    merchantVatRegistrationNumber:
        json['merchant_vat_registration_number'] as String?,
    customerVatRegistrationNumber:
        json['customer_vat_registration_number'] as String?,
    paymentAdjustment: json['payment_adjustment'] == null
        ? null
        : PaymentAdjustmentRequest.fromJson(
            json['payment_adjustment'] as Map<String, dynamic>),
    additionalAmounts: json['additional_amounts'] == null
        ? null
        : AdditionalAmountsRequest.fromJson(
            json['additional_amounts'] as Map<String, dynamic>),
    paymentMethod: json['payment_method'] == null
        ? null
        : PaymentMethodRequest.fromJson(
            json['payment_method'] as Map<String, dynamic>),
    cardOnFileIndicator: json['card_on_file_indicator'] as String?,
    initiatedBy: json['initiated_by'] as String?,
    initialTransactionId: json['initial_transaction_id'] as String?,
    storedCredentialIndicator: json['stored_credential_indicator'] as String?,
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
    processorSpecific: json['processor_specific'] == null
        ? null
        : ProcessorSpecificRequest.fromJson(
            json['processor_specific'] as Map<String, dynamic>),
    customFields: (json['custom_fields'] as Map<String, dynamic>?)?.map(
      (k, e) =>
          MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
    ),
    groupName: json['group_name'] as String?,
    descriptor: json['descriptor'] == null
        ? null
        : DescriptorRequest.fromJson(
            json['descriptor'] as Map<String, dynamic>),
    lineItems: (json['line_items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    fingerprint: json['fingerprint'] as Map<String, dynamic>?,
    bypassRuleEngine: json['bypass_rule_engine'] as bool?,
    voidOnSuccess: json['void_on_success'] as bool?,
    billingMethod: json['billing_method'] as String?,
    mcc: json['mcc'] as String?,
  );
}

Map<String, dynamic> _$TransactionCreateRequestToJson(
        TransactionCreateRequest instance) =>
    <String, dynamic>{
      'idempotency_key': instance.idempotencyKey,
      'idempotency_time': instance.idempotencyTime,
      'type': _$TransactionTypeEnumMap[instance.type],
      'tax_exempt': instance.taxExempt,
      'currency': instance.currency,
      'description': instance.description,
      'order_id': instance.orderId,
      'po_number': instance.poNumber,
      'ip_address': instance.ipAddress,
      'email_receipt': instance.emailReceipt,
      'email_address': instance.emailAddress,
      'processor_id': instance.processorId,
      'allow_partial_payment': instance.allowPartialPayment,
      'create_vault_record': instance.createVaultRecord,
      'vault_record_id_format': instance.vaultRecordIdFormat,
      'vendor_id': instance.vendorId,
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'shipping_amount': instance.shippingAmount,
      'surcharge': instance.surcharge,
      'discount_amount': instance.discountAmount,
      'national_tax_amount': instance.nationalTaxAmount,
      'duty_amount': instance.dutyAmount,
      'ship_from_postal_code': instance.shipFromPostalCode,
      'summary_commodity_code': instance.summaryCommodityCode,
      'merchant_vat_registration_number':
          instance.merchantVatRegistrationNumber,
      'customer_vat_registration_number':
          instance.customerVatRegistrationNumber,
      'payment_adjustment': instance.paymentAdjustment,
      'additional_amounts': instance.additionalAmounts,
      'payment_method': instance.paymentMethod,
      'card_on_file_indicator': instance.cardOnFileIndicator,
      'initiated_by': instance.initiatedBy,
      'initial_transaction_id': instance.initialTransactionId,
      'stored_credential_indicator': instance.storedCredentialIndicator,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'processor_specific': instance.processorSpecific,
      'custom_fields': instance.customFields,
      'group_name': instance.groupName,
      'descriptor': instance.descriptor,
      'line_items': instance.lineItems,
      'fingerprint': instance.fingerprint,
      'bypass_rule_engine': instance.bypassRuleEngine,
      'void_on_success': instance.voidOnSuccess,
      'billing_method': instance.billingMethod,
      'mcc': instance.mcc,
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$TransactionTypeEnumMap = {
  TransactionType.authorize: 'authorize',
  TransactionType.sale: 'sale',
  TransactionType.credit: 'credit',
  TransactionType.capture: 'capture',
  TransactionType.refund: 'refund',
  TransactionType.verification: 'verification',
};

PaymentAdjustmentRequest _$PaymentAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return PaymentAdjustmentRequest(
    value: json['value'] as int?,
    type: json['type'] as String?,
  );
}

Map<String, dynamic> _$PaymentAdjustmentRequestToJson(
        PaymentAdjustmentRequest instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
    };

AdditionalAmountsRequest _$AdditionalAmountsRequestFromJson(
    Map<String, dynamic> json) {
  return AdditionalAmountsRequest(
    hsa: json['hsa'] == null
        ? null
        : HSAAmountsRequest.fromJson(json['hsa'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AdditionalAmountsRequestToJson(
        AdditionalAmountsRequest instance) =>
    <String, dynamic>{
      'hsa': instance.hsa,
    };

HSAAmountsRequest _$HSAAmountsRequestFromJson(Map<String, dynamic> json) {
  return HSAAmountsRequest(
    total: json['total'] as int?,
    rxAmount: json['rx_amount'] as int?,
    visionAmount: json['vision_amount'] as int?,
    clinicAmount: json['clinic_amount'] as int?,
    dentalAmount: json['dental_amount'] as int?,
    sku: json['sku'] as String?,
  );
}

Map<String, dynamic> _$HSAAmountsRequestToJson(HSAAmountsRequest instance) =>
    <String, dynamic>{
      'total': instance.total,
      'rx_amount': instance.rxAmount,
      'vision_amount': instance.visionAmount,
      'clinic_amount': instance.clinicAmount,
      'dental_amount': instance.dentalAmount,
      'sku': instance.sku,
    };

ProcessorSpecificRequest _$ProcessorSpecificRequestFromJson(
    Map<String, dynamic> json) {
  return ProcessorSpecificRequest(
    boltPay: json['boltPay'] == null
        ? null
        : BoltPay.fromJson(json['boltPay'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProcessorSpecificRequestToJson(
        ProcessorSpecificRequest instance) =>
    <String, dynamic>{
      'boltPay': instance.boltPay,
    };

BoltPay _$BoltPayFromJson(Map<String, dynamic> json) {
  return BoltPay(
    recurringCycle: json['recurring_cycle'] as String?,
  );
}

Map<String, dynamic> _$BoltPayToJson(BoltPay instance) => <String, dynamic>{
      'recurring_cycle': instance.recurringCycle,
    };

DescriptorRequest _$DescriptorRequestFromJson(Map<String, dynamic> json) {
  return DescriptorRequest(
    name: json['name'] as String?,
    address: json['address'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    postalCode: json['postal_code'] as String?,
    email: json['email'] as String?,
    phone: json['phone'] as String?,
  );
}

Map<String, dynamic> _$DescriptorRequestToJson(DescriptorRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'email': instance.email,
      'phone': instance.phone,
    };

TransactionCaptureRequest _$TransactionCaptureRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionCaptureRequest(
    json['transaction_id'] as String,
    amount: json['amount'] as int?,
    taxAmount: json['tax_amount'] as int?,
    taxExempt: json['tax_exempt'] as bool?,
    shippingAmount: json['shipping_amount'] as int?,
    orderId: json['order_id'] as String?,
    poNumber: json['po_number'] as String?,
    ipAddress: json['ip_address'] as String?,
    vendorId: json['vendor_id'] as String?,
  );
}

Map<String, dynamic> _$TransactionCaptureRequestToJson(
        TransactionCaptureRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'tax_exempt': instance.taxExempt,
      'shipping_amount': instance.shippingAmount,
      'order_id': instance.orderId,
      'po_number': instance.poNumber,
      'ip_address': instance.ipAddress,
      'vendor_id': instance.vendorId,
    };

TransactionVoidRequest _$TransactionVoidRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionVoidRequest(
    json['transaction_id'] as String,
  );
}

Map<String, dynamic> _$TransactionVoidRequestToJson(
        TransactionVoidRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
    };

TransactionRefundRequest _$TransactionRefundRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionRefundRequest(
    json['transaction_id'] as String,
    amount: json['amount'] as int?,
    ipAddress: json['ip_address'] as String?,
    terminalId: json['terminal_id'] as String?,
    vendorId: json['vendor_id'] as String?,
    printReceipt: json['print_receipt'] as String?,
    signatureRequired: json['signature_required'] as String?,
  );
}

Map<String, dynamic> _$TransactionRefundRequestToJson(
        TransactionRefundRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'amount': instance.amount,
      'ip_address': instance.ipAddress,
      'terminal_id': instance.terminalId,
      'vendor_id': instance.vendorId,
      'print_receipt': instance.printReceipt,
      'signature_required': instance.signatureRequired,
    };

TransactionCreateVaultRequest _$TransactionCreateVaultRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionCreateVaultRequest(
    json['transaction_id'] as String,
  );
}

Map<String, dynamic> _$TransactionCreateVaultRequestToJson(
        TransactionCreateVaultRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
    };

TransactionEmailReceiptRequest _$TransactionEmailReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionEmailReceiptRequest(
    json['email_address'] as String,
    json['transaction_id'] as String,
  );
}

Map<String, dynamic> _$TransactionEmailReceiptRequestToJson(
        TransactionEmailReceiptRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'email_address': instance.emailAddress,
    };

TransactionPrintReceiptRequest _$TransactionPrintReceiptRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionPrintReceiptRequest(
    json['transaction_id'] as String,
  );
}

Map<String, dynamic> _$TransactionPrintReceiptRequestToJson(
        TransactionPrintReceiptRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
    };

TransactionTipAdjustmentRequest _$TransactionTipAdjustmentRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionTipAdjustmentRequest(
    json['transaction_id'] as String,
    tip: json['tip'] as int?,
    baseAmount: json['base_amount'] as int?,
  );
}

Map<String, dynamic> _$TransactionTipAdjustmentRequestToJson(
        TransactionTipAdjustmentRequest instance) =>
    <String, dynamic>{
      'transaction_id': instance.transactionId,
      'tip': instance.tip,
      'base_amount': instance.baseAmount,
    };

TransactionMultiRequest _$TransactionMultiRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiRequest(
    createVaultRecord: json['create_vault_record'] as bool?,
    createVaultRecordMerchantId:
        json['create_vault_record_merchant_id'] as String?,
    paymentMethod: json['payment_method'] == null
        ? null
        : PaymentMethodRequest.fromJson(
            json['payment_method'] as Map<String, dynamic>),
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
    transactions: (json['transactions'] as List<dynamic>?)
        ?.map((e) =>
            TransactionMultiRequestData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TransactionMultiRequestToJson(
        TransactionMultiRequest instance) =>
    <String, dynamic>{
      'create_vault_record': instance.createVaultRecord,
      'create_vault_record_merchant_id': instance.createVaultRecordMerchantId,
      'payment_method': instance.paymentMethod,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'transactions': instance.transactions,
    };

TransactionMultiRequestData _$TransactionMultiRequestDataFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiRequestData(
    merchantId: json['merchant_id'] as String?,
    processorId: json['processor_id'] as String?,
    type: _$enumDecodeNullable(_$TransactionTypeEnumMap, json['type']),
    amount: json['amount'] as int?,
    taxAmount: json['tax_amount'] as int?,
    shippingAmount: json['shipping_amount'] as int?,
    currency: json['currency'] as String?,
    description: json['description'] as String?,
    orderId: json['order_id'] as String?,
    poNumber: json['po_number'] as String?,
    ipAddress: json['ip_address'] as String?,
    lineItems: (json['line_items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TransactionMultiRequestDataToJson(
        TransactionMultiRequestData instance) =>
    <String, dynamic>{
      'merchant_id': instance.merchantId,
      'processor_id': instance.processorId,
      'type': _$TransactionTypeEnumMap[instance.type],
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'shipping_amount': instance.shippingAmount,
      'currency': instance.currency,
      'description': instance.description,
      'order_id': instance.orderId,
      'po_number': instance.poNumber,
      'ip_address': instance.ipAddress,
      'line_items': instance.lineItems,
    };

TransactionMultiVoidRequest _$TransactionMultiVoidRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiVoidRequest(
    transactions: (json['transactions'] as List<dynamic>?)
        ?.map((e) => VoidTransactionData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TransactionMultiVoidRequestToJson(
        TransactionMultiVoidRequest instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };

VoidTransactionData _$VoidTransactionDataFromJson(Map<String, dynamic> json) {
  return VoidTransactionData(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$VoidTransactionDataToJson(
        VoidTransactionData instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

TransactionMultiRefundRequest _$TransactionMultiRefundRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiRefundRequest(
    transactions: (json['transactions'] as List<dynamic>?)
        ?.map((e) => RefundTransactionData.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TransactionMultiRefundRequestToJson(
        TransactionMultiRefundRequest instance) =>
    <String, dynamic>{
      'transactions': instance.transactions,
    };

RefundTransactionData _$RefundTransactionDataFromJson(
    Map<String, dynamic> json) {
  return RefundTransactionData(
    id: json['id'] as String?,
    amount: json['amount'] as int?,
  );
}

Map<String, dynamic> _$RefundTransactionDataToJson(
        RefundTransactionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
    };

TransactionSearchRequest _$TransactionSearchRequestFromJson(
    Map<String, dynamic> json) {
  return TransactionSearchRequest(
    transactionOrOrderId: json['transaction_or_order_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['transaction_or_order_id'] as Map<String, dynamic>),
    transactionId: json['transaction_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['transaction_id'] as Map<String, dynamic>),
    userId: json['user_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['user_id'] as Map<String, dynamic>),
    userName: json['user_name'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['user_name'] as Map<String, dynamic>),
    type: json['type'] == null
        ? null
        : QuerySearchParamString.fromJson(json['type'] as Map<String, dynamic>),
    transactionSource: json['transaction_source'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['transaction_source'] as Map<String, dynamic>),
    ipAddress: json['ip_address'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['ip_address'] as Map<String, dynamic>),
    amount: json['amount'] == null
        ? null
        : QuerySearchParamInt.fromJson(json['amount'] as Map<String, dynamic>),
    amountAuthorized: json['amount_authorized'] == null
        ? null
        : QuerySearchParamInt.fromJson(
            json['amount_authorized'] as Map<String, dynamic>),
    amountCaptured: json['amount_captured'] == null
        ? null
        : QuerySearchParamInt.fromJson(
            json['amount_captured'] as Map<String, dynamic>),
    amountSettled: json['amount_settled'] == null
        ? null
        : QuerySearchParamInt.fromJson(
            json['amount_settled'] as Map<String, dynamic>),
    taxAmount: json['tax_amount'] == null
        ? null
        : QuerySearchParamInt.fromJson(
            json['tax_amount'] as Map<String, dynamic>),
    poNumber: json['po_number'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['po_number'] as Map<String, dynamic>),
    orderId: json['order_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['order_id'] as Map<String, dynamic>),
    settlementBatchId: json['settlement_batch_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['settlement_batch_id'] as Map<String, dynamic>),
    currencyIsoCode: json['currency_iso_code'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['currency_iso_code'] as Map<String, dynamic>),
    paymentMethod: json['payment_method'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['payment_method'] as Map<String, dynamic>),
    paymentType: json['payment_type'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['payment_type'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['status'] as Map<String, dynamic>),
    state: json['state'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['state'] as Map<String, dynamic>),
    processorId: json['processor_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['processor_id'] as Map<String, dynamic>),
    processorName: json['processor_name'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['processor_name'] as Map<String, dynamic>),
    terminalId: json['terminal_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['terminal_id'] as Map<String, dynamic>),
    terminalDescription: json['terminal_description'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['terminal_description'] as Map<String, dynamic>),
    subscriptionId: json['subscription_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['subscription_id'] as Map<String, dynamic>),
    customerId: json['customer_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['customer_id'] as Map<String, dynamic>),
    fullCCNumber: json['full_cc_number'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['full_cc_number'] as Map<String, dynamic>),
    last4CCNumber: json['cc_last_four'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['cc_last_four'] as Map<String, dynamic>),
    first6CCNumber: json['cc_first_six'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['cc_first_six'] as Map<String, dynamic>),
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
    customFields: (json['custom_fields'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, QuerySearchParamString.fromJson(e as Map<String, dynamic>)),
    ),
    createdAt: json['created_at'] == null
        ? null
        : SearchDateRange.fromJson(json['created_at'] as Map<String, dynamic>),
    updatedAt: json['updated_at'] == null
        ? null
        : SearchDateRange.fromJson(json['updated_at'] as Map<String, dynamic>),
    capturedAt: json['captured_at'] == null
        ? null
        : SearchDateRange.fromJson(json['captured_at'] as Map<String, dynamic>),
    settledAt: json['settled_at'] == null
        ? null
        : SearchDateRange.fromJson(json['settled_at'] as Map<String, dynamic>),
    limit: json['limit'] as int?,
    offset: json['offset'] as int?,
  );
}

Map<String, dynamic> _$TransactionSearchRequestToJson(
        TransactionSearchRequest instance) =>
    <String, dynamic>{
      'transaction_or_order_id': instance.transactionOrOrderId,
      'transaction_id': instance.transactionId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'type': instance.type,
      'transaction_source': instance.transactionSource,
      'ip_address': instance.ipAddress,
      'amount': instance.amount,
      'amount_authorized': instance.amountAuthorized,
      'amount_captured': instance.amountCaptured,
      'amount_settled': instance.amountSettled,
      'tax_amount': instance.taxAmount,
      'po_number': instance.poNumber,
      'order_id': instance.orderId,
      'settlement_batch_id': instance.settlementBatchId,
      'currency_iso_code': instance.currencyIsoCode,
      'payment_method': instance.paymentMethod,
      'payment_type': instance.paymentType,
      'status': instance.status,
      'state': instance.state,
      'processor_id': instance.processorId,
      'processor_name': instance.processorName,
      'terminal_id': instance.terminalId,
      'terminal_description': instance.terminalDescription,
      'subscription_id': instance.subscriptionId,
      'customer_id': instance.customerId,
      'full_cc_number': instance.fullCCNumber,
      'cc_last_four': instance.last4CCNumber,
      'cc_first_six': instance.first6CCNumber,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
      'custom_fields': instance.customFields,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'captured_at': instance.capturedAt,
      'settled_at': instance.settledAt,
      'limit': instance.limit,
      'offset': instance.offset,
    };

SearchDateRange _$SearchDateRangeFromJson(Map<String, dynamic> json) {
  return SearchDateRange(
    startDate: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    endDate: json['end_date'] == null
        ? null
        : DateTime.parse(json['end_date'] as String),
    duration: _$enumDecodeNullable(
        _$SearchDateRangeDurationEnumMap, json['duration']),
  );
}

Map<String, dynamic> _$SearchDateRangeToJson(SearchDateRange instance) =>
    <String, dynamic>{
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
      'duration': _$SearchDateRangeDurationEnumMap[instance.duration],
    };

const _$SearchDateRangeDurationEnumMap = {
  SearchDateRangeDuration.today: 'today',
  SearchDateRangeDuration.yesterday: 'yesterday',
  SearchDateRangeDuration.thisMonth: 'this_month',
  SearchDateRangeDuration.lastMonth: 'last_month',
  SearchDateRangeDuration.thisYear: 'this_year',
  SearchDateRangeDuration.lastYear: 'last_year',
};
