// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceCreateRequest _$InvoiceCreateRequestFromJson(Map<String, dynamic> json) {
  return InvoiceCreateRequest(
    currency: json['currency'] as String?,
    companyName: json['company_name'] as String?,
    customerNumber: json['customer_number'] as String?,
    invoiceNumber: json['invoice_number'] as String?,
    customerId: json['customer_id'] as String?,
    payableTo: json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>),
    billTo: json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>),
    dateDue: json['date_due'] as String?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    advancedFields: json['advanced_fields'] as bool?,
    enableTax: json['enable_tax'] as bool?,
    enableShipping: json['enable_shipping'] as bool?,
    requireShippingDetails: json['require_shipping_details'] as bool?,
    requireBillingDetailsOnPaymentOnly:
        json['require_billing_details_on_payment_only'] as bool?,
    taxPercent: json['tax_percent'] as String?,
    shipping: json['shipping'] as int?,
    amountPaid: json['amount_paid'] as int?,
    adjustment: json['adjustment'] as int?,
    allowPartialPayment: json['allow_partial_payment'] as bool?,
    transactionType: json['transaction_type'] as String?,
    paymentMethods: (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    cardProcessorId: json['card_processor_id'] as String?,
    achProcessorId: json['ach_processor_id'] as String?,
    message: json['message'] as String?,
    sendVia: _$enumDecodeNullable(_$SendViaEnumMap, json['send_via']),
    emailTo: json['email_to'] as String?,
  );
}

Map<String, dynamic> _$InvoiceCreateRequestToJson(
        InvoiceCreateRequest instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'company_name': instance.companyName,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'customer_id': instance.customerId,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'shipping': instance.shipping,
      'amount_paid': instance.amountPaid,
      'adjustment': instance.adjustment,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'message': instance.message,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
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

const _$SendViaEnumMap = {
  SendVia.none: 'none',
  SendVia.text: 'text',
  SendVia.email: 'email',
  SendVia.both: 'both',
};

InvoiceUpdateRequest _$InvoiceUpdateRequestFromJson(Map<String, dynamic> json) {
  return InvoiceUpdateRequest(
    json['id'] as String?,
    currency: json['currency'] as String?,
    companyName: json['company_name'] as String?,
    customerNumber: json['customer_number'] as String?,
    invoiceNumber: json['invoice_number'] as String?,
    customerId: json['customer_id'] as String?,
    payableTo: json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>),
    billTo: json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>),
    dateDue: json['date_due'] as String?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    advancedFields: json['advanced_fields'] as bool?,
    enableTax: json['enable_tax'] as bool?,
    enableShipping: json['enable_shipping'] as bool?,
    requireShippingDetails: json['require_shipping_details'] as bool?,
    requireBillingDetailsOnPaymentOnly:
        json['require_billing_details_on_payment_only'] as bool?,
    taxPercent: json['tax_percent'] as String?,
    shipping: json['shipping'] as int?,
    amountPaid: json['amount_paid'] as int?,
    adjustment: json['adjustment'] as int?,
    allowPartialPayment: json['allow_partial_payment'] as bool?,
    transactionType: json['transaction_type'] as String?,
    paymentMethods: (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    cardProcessorId: json['card_processor_id'] as String?,
    achProcessorId: json['ach_processor_id'] as String?,
    message: json['message'] as String?,
    sendVia: _$enumDecodeNullable(_$SendViaEnumMap, json['send_via']),
    emailTo: json['email_to'] as String?,
    markAsPaid: json['mark_as_paid'] as bool?,
    reactivate: json['reactivate'] as bool?,
  );
}

Map<String, dynamic> _$InvoiceUpdateRequestToJson(
        InvoiceUpdateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'customer_id': instance.customerId,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'shipping': instance.shipping,
      'amount_paid': instance.amountPaid,
      'adjustment': instance.adjustment,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'message': instance.message,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'mark_as_paid': instance.markAsPaid,
      'reactivate': instance.reactivate,
    };

InvoiceResendRequest _$InvoiceResendRequestFromJson(Map<String, dynamic> json) {
  return InvoiceResendRequest(
    json['id'] as String,
  );
}

Map<String, dynamic> _$InvoiceResendRequestToJson(
        InvoiceResendRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InvoiceMarkAsPaidRequest _$InvoiceMarkAsPaidRequestFromJson(
    Map<String, dynamic> json) {
  return InvoiceMarkAsPaidRequest(
    json['id'] as String,
  );
}

Map<String, dynamic> _$InvoiceMarkAsPaidRequestToJson(
        InvoiceMarkAsPaidRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InvoiceReactivateRequest _$InvoiceReactivateRequestFromJson(
    Map<String, dynamic> json) {
  return InvoiceReactivateRequest(
    json['id'] as String,
  );
}

Map<String, dynamic> _$InvoiceReactivateRequestToJson(
        InvoiceReactivateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InvoiceDeleteRequest _$InvoiceDeleteRequestFromJson(Map<String, dynamic> json) {
  return InvoiceDeleteRequest(
    json['id'] as String,
  );
}

Map<String, dynamic> _$InvoiceDeleteRequestToJson(
        InvoiceDeleteRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InvoiceGetRequest _$InvoiceGetRequestFromJson(Map<String, dynamic> json) {
  return InvoiceGetRequest(
    json['id'] as String,
  );
}

Map<String, dynamic> _$InvoiceGetRequestToJson(InvoiceGetRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

InvoiceSearchRequest _$InvoiceSearchRequestFromJson(Map<String, dynamic> json) {
  return InvoiceSearchRequest(
    id: json['id'] == null
        ? null
        : QuerySearchParamString.fromJson(json['id'] as Map<String, dynamic>),
    customerId: json['customer_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['customer_id'] as Map<String, dynamic>),
    invoiceNumber: json['invoice_number'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['invoice_number'] as Map<String, dynamic>),
    dateDue: json['date_due'] == null
        ? null
        : QuerySearchParamDateRange.fromJson(
            json['date_due'] as Map<String, dynamic>),
    amountDue: json['amount_due'] == null
        ? null
        : QuerySearchParamInt.fromJson(
            json['amount_due'] as Map<String, dynamic>),
    status: json['status'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['status'] as Map<String, dynamic>),
    offset: json['offset'] as int?,
    limit: json['limit'] as int?,
  );
}

Map<String, dynamic> _$InvoiceSearchRequestToJson(
        InvoiceSearchRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'invoice_number': instance.invoiceNumber,
      'date_due': instance.dateDue,
      'amount_due': instance.amountDue,
      'status': instance.status,
      'offset': instance.offset,
      'limit': instance.limit,
    };
