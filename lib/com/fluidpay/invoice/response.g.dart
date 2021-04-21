// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceCreateResponseData _$InvoiceCreateResponseDataFromJson(
    Map<String, dynamic> json) {
  return InvoiceCreateResponseData()
    ..id = json['id'] as String?
    ..currency = json['currency'] as String?
    ..companyName = json['company_name'] as String?
    ..companyLogoUrl = json['company_logo_url'] as String?
    ..customerNumber = json['customer_number'] as String?
    ..invoiceNumber = json['invoice_number'] as String?
    ..payableTo = json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>)
    ..billTo = json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String?
    ..dateDue = json['date_due'] as String?
    ..items = (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..advancedFields = json['advanced_fields'] as bool?
    ..subtotal = json['subtotal'] as int?
    ..enableTax = json['enable_tax'] as bool?
    ..enableShipping = json['enable_shipping'] as bool?
    ..requireShippingDetails = json['require_shipping_details'] as bool?
    ..requireBillingDetailsOnPaymentOnly =
        json['require_billing_details_on_payment_only'] as bool?
    ..taxPercent = json['tax_percent'] as String?
    ..tax = json['tax'] as int?
    ..shipping = json['shipping'] as int?
    ..total = json['total'] as int?
    ..amountPaid = json['amount_paid'] as int?
    ..serviceFeesPaid = json['service_fees_paid'] as int?
    ..surchargePaid = json['surcharge_paid'] as int?
    ..discountCredited = json['discount_credited'] as int?
    ..adjustment = json['adjustment'] as int?
    ..amountDue = json['amount_due'] as int?
    ..allowPartialPayment = json['allow_partial_payment'] as bool?
    ..transactionType = json['transaction_type'] as String?
    ..paymentMethods = (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..cardProcessorId = json['card_processor_id'] as String?
    ..achProcessorId = json['ach_processor_id'] as String?
    ..status = _$enumDecodeNullable(_$InvoiceStatusEnumMap, json['status'])
    ..message = json['message'] as String?
    ..rejectMessage = json['reject_message'] as String?
    ..sendVia = _$enumDecodeNullable(_$SendViaEnumMap, json['send_via'])
    ..emailTo = json['email_to'] as String?
    ..lastSentAt = json['last_sent_at'] as String?
    ..updatedAt = json['updated_at'] as String?
    ..publicHash = json['public_hash'] as String?
    ..hostedUrl = json['hosted_url'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..customerId = json['customer_id'] as String?;
}

Map<String, dynamic> _$InvoiceCreateResponseDataToJson(
        InvoiceCreateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'company_logo_url': instance.companyLogoUrl,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'created_at': instance.createdAt,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'subtotal': instance.subtotal,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'service_fees_paid': instance.serviceFeesPaid,
      'surcharge_paid': instance.surchargePaid,
      'discount_credited': instance.discountCredited,
      'adjustment': instance.adjustment,
      'amount_due': instance.amountDue,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'message': instance.message,
      'reject_message': instance.rejectMessage,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'last_sent_at': instance.lastSentAt,
      'updated_at': instance.updatedAt,
      'public_hash': instance.publicHash,
      'hosted_url': instance.hostedUrl,
      'merchant_id': instance.merchantId,
      'customer_id': instance.customerId,
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

const _$InvoiceStatusEnumMap = {
  InvoiceStatus.paid: 'paid',
  InvoiceStatus.authorized: 'authorized',
  InvoiceStatus.payingViaMail: 'paying_via_mail',
  InvoiceStatus.partiallyPaid: 'partially_paid',
  InvoiceStatus.pending: 'pending',
  InvoiceStatus.declined: 'declined',
  InvoiceStatus.failed: 'failed',
  InvoiceStatus.rejected: 'rejected',
};

const _$SendViaEnumMap = {
  SendVia.none: 'none',
  SendVia.text: 'text',
  SendVia.email: 'email',
  SendVia.both: 'both',
};

InvoiceCreateResponse _$InvoiceCreateResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceCreateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : InvoiceCreateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceCreateResponseToJson(
        InvoiceCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceUpdateResponse _$InvoiceUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceUpdateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : InvoiceUpdateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceUpdateResponseToJson(
        InvoiceUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceUpdateResponseData _$InvoiceUpdateResponseDataFromJson(
    Map<String, dynamic> json) {
  return InvoiceUpdateResponseData()
    ..id = json['id'] as String?
    ..currency = json['currency'] as String?
    ..companyName = json['company_name'] as String?
    ..companyLogoUrl = json['company_logo_url'] as String?
    ..customerNumber = json['customer_number'] as String?
    ..invoiceNumber = json['invoice_number'] as String?
    ..payableTo = json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>)
    ..billTo = json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String?
    ..dateDue = json['date_due'] as String?
    ..items = (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..advancedFields = json['advanced_fields'] as bool?
    ..subtotal = json['subtotal'] as int?
    ..enableTax = json['enable_tax'] as bool?
    ..enableShipping = json['enable_shipping'] as bool?
    ..requireShippingDetails = json['require_shipping_details'] as bool?
    ..requireBillingDetailsOnPaymentOnly =
        json['require_billing_details_on_payment_only'] as bool?
    ..taxPercent = json['tax_percent'] as String?
    ..tax = json['tax'] as int?
    ..shipping = json['shipping'] as int?
    ..total = json['total'] as int?
    ..amountPaid = json['amount_paid'] as int?
    ..serviceFeesPaid = json['service_fees_paid'] as int?
    ..surchargePaid = json['surcharge_paid'] as int?
    ..discountCredited = json['discount_credited'] as int?
    ..adjustment = json['adjustment'] as int?
    ..amountDue = json['amount_due'] as int?
    ..allowPartialPayment = json['allow_partial_payment'] as bool?
    ..transactionType = json['transaction_type'] as String?
    ..paymentMethods = (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..cardProcessorId = json['card_processor_id'] as String?
    ..achProcessorId = json['ach_processor_id'] as String?
    ..status = _$enumDecodeNullable(_$InvoiceStatusEnumMap, json['status'])
    ..message = json['message'] as String?
    ..rejectMessage = json['reject_message'] as String?
    ..sendVia = _$enumDecodeNullable(_$SendViaEnumMap, json['send_via'])
    ..emailTo = json['email_to'] as String?
    ..lastSentAt = json['last_sent_at'] as String?
    ..updatedAt = json['updated_at'] as String?
    ..publicHash = json['public_hash'] as String?
    ..hostedUrl = json['hosted_url'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..customerId = json['customer_id'] as String?;
}

Map<String, dynamic> _$InvoiceUpdateResponseDataToJson(
        InvoiceUpdateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'company_logo_url': instance.companyLogoUrl,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'created_at': instance.createdAt,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'subtotal': instance.subtotal,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'service_fees_paid': instance.serviceFeesPaid,
      'surcharge_paid': instance.surchargePaid,
      'discount_credited': instance.discountCredited,
      'adjustment': instance.adjustment,
      'amount_due': instance.amountDue,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'message': instance.message,
      'reject_message': instance.rejectMessage,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'last_sent_at': instance.lastSentAt,
      'updated_at': instance.updatedAt,
      'public_hash': instance.publicHash,
      'hosted_url': instance.hostedUrl,
      'merchant_id': instance.merchantId,
      'customer_id': instance.customerId,
    };

InvoiceMarkAsPaidResponse _$InvoiceMarkAsPaidResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceMarkAsPaidResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : InvoiceMarkAsPaidResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceMarkAsPaidResponseToJson(
        InvoiceMarkAsPaidResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceMarkAsPaidResponseData _$InvoiceMarkAsPaidResponseDataFromJson(
    Map<String, dynamic> json) {
  return InvoiceMarkAsPaidResponseData()
    ..id = json['id'] as String?
    ..currency = json['currency'] as String?
    ..companyName = json['company_name'] as String?
    ..companyLogoUrl = json['company_logo_url'] as String?
    ..customerNumber = json['customer_number'] as String?
    ..invoiceNumber = json['invoice_number'] as String?
    ..payableTo = json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>)
    ..billTo = json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String?
    ..dateDue = json['date_due'] as String?
    ..items = (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..advancedFields = json['advanced_fields'] as bool?
    ..subtotal = json['subtotal'] as int?
    ..enableTax = json['enable_tax'] as bool?
    ..enableShipping = json['enable_shipping'] as bool?
    ..requireShippingDetails = json['require_shipping_details'] as bool?
    ..requireBillingDetailsOnPaymentOnly =
        json['require_billing_details_on_payment_only'] as bool?
    ..taxPercent = json['tax_percent'] as String?
    ..tax = json['tax'] as int?
    ..shipping = json['shipping'] as int?
    ..total = json['total'] as int?
    ..amountPaid = json['amount_paid'] as int?
    ..serviceFeesPaid = json['service_fees_paid'] as int?
    ..surchargePaid = json['surcharge_paid'] as int?
    ..discountCredited = json['discount_credited'] as int?
    ..adjustment = json['adjustment'] as int?
    ..amountDue = json['amount_due'] as int?
    ..allowPartialPayment = json['allow_partial_payment'] as bool?
    ..transactionType = json['transaction_type'] as String?
    ..paymentMethods = (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..cardProcessorId = json['card_processor_id'] as String?
    ..achProcessorId = json['ach_processor_id'] as String?
    ..status = _$enumDecodeNullable(_$InvoiceStatusEnumMap, json['status'])
    ..message = json['message'] as String?
    ..rejectMessage = json['reject_message'] as String?
    ..sendVia = _$enumDecodeNullable(_$SendViaEnumMap, json['send_via'])
    ..emailTo = json['email_to'] as String?
    ..lastSentAt = json['last_sent_at'] as String?
    ..updatedAt = json['updated_at'] as String?
    ..publicHash = json['public_hash'] as String?
    ..hostedUrl = json['hosted_url'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..customerId = json['customer_id'] as String?;
}

Map<String, dynamic> _$InvoiceMarkAsPaidResponseDataToJson(
        InvoiceMarkAsPaidResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'company_logo_url': instance.companyLogoUrl,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'created_at': instance.createdAt,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'subtotal': instance.subtotal,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'service_fees_paid': instance.serviceFeesPaid,
      'surcharge_paid': instance.surchargePaid,
      'discount_credited': instance.discountCredited,
      'adjustment': instance.adjustment,
      'amount_due': instance.amountDue,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'message': instance.message,
      'reject_message': instance.rejectMessage,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'last_sent_at': instance.lastSentAt,
      'updated_at': instance.updatedAt,
      'public_hash': instance.publicHash,
      'hosted_url': instance.hostedUrl,
      'merchant_id': instance.merchantId,
      'customer_id': instance.customerId,
    };

InvoiceReactivateResponse _$InvoiceReactivateResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceReactivateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : InvoiceResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceReactivateResponseToJson(
        InvoiceReactivateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceReactivateResponseData _$InvoiceReactivateResponseDataFromJson(
    Map<String, dynamic> json) {
  return InvoiceReactivateResponseData()
    ..id = json['id'] as String?
    ..currency = json['currency'] as String?
    ..companyName = json['company_name'] as String?
    ..companyLogoUrl = json['company_logo_url'] as String?
    ..customerNumber = json['customer_number'] as String?
    ..invoiceNumber = json['invoice_number'] as String?
    ..payableTo = json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>)
    ..billTo = json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String?
    ..dateDue = json['date_due'] as String?
    ..items = (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..advancedFields = json['advanced_fields'] as bool?
    ..subtotal = json['subtotal'] as int?
    ..enableTax = json['enable_tax'] as bool?
    ..enableShipping = json['enable_shipping'] as bool?
    ..requireShippingDetails = json['require_shipping_details'] as bool?
    ..requireBillingDetailsOnPaymentOnly =
        json['require_billing_details_on_payment_only'] as bool?
    ..taxPercent = json['tax_percent'] as String?
    ..tax = json['tax'] as int?
    ..shipping = json['shipping'] as int?
    ..total = json['total'] as int?
    ..amountPaid = json['amount_paid'] as int?
    ..serviceFeesPaid = json['service_fees_paid'] as int?
    ..surchargePaid = json['surcharge_paid'] as int?
    ..discountCredited = json['discount_credited'] as int?
    ..adjustment = json['adjustment'] as int?
    ..amountDue = json['amount_due'] as int?
    ..allowPartialPayment = json['allow_partial_payment'] as bool?
    ..transactionType = json['transaction_type'] as String?
    ..paymentMethods = (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..cardProcessorId = json['card_processor_id'] as String?
    ..achProcessorId = json['ach_processor_id'] as String?
    ..status = _$enumDecodeNullable(_$InvoiceStatusEnumMap, json['status'])
    ..message = json['message'] as String?
    ..rejectMessage = json['reject_message'] as String?
    ..sendVia = _$enumDecodeNullable(_$SendViaEnumMap, json['send_via'])
    ..emailTo = json['email_to'] as String?
    ..lastSentAt = json['last_sent_at'] as String?
    ..updatedAt = json['updated_at'] as String?
    ..publicHash = json['public_hash'] as String?
    ..hostedUrl = json['hosted_url'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..customerId = json['customer_id'] as String?;
}

Map<String, dynamic> _$InvoiceReactivateResponseDataToJson(
        InvoiceReactivateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'company_logo_url': instance.companyLogoUrl,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'created_at': instance.createdAt,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'subtotal': instance.subtotal,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'service_fees_paid': instance.serviceFeesPaid,
      'surcharge_paid': instance.surchargePaid,
      'discount_credited': instance.discountCredited,
      'adjustment': instance.adjustment,
      'amount_due': instance.amountDue,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'message': instance.message,
      'reject_message': instance.rejectMessage,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'last_sent_at': instance.lastSentAt,
      'updated_at': instance.updatedAt,
      'public_hash': instance.publicHash,
      'hosted_url': instance.hostedUrl,
      'merchant_id': instance.merchantId,
      'customer_id': instance.customerId,
    };

InvoiceGetResponse _$InvoiceGetResponseFromJson(Map<String, dynamic> json) {
  return InvoiceGetResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : InvoiceGetResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceGetResponseToJson(InvoiceGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceGetResponseData _$InvoiceGetResponseDataFromJson(
    Map<String, dynamic> json) {
  return InvoiceGetResponseData()
    ..id = json['id'] as String?
    ..currency = json['currency'] as String?
    ..companyName = json['company_name'] as String?
    ..companyLogoUrl = json['company_logo_url'] as String?
    ..customerNumber = json['customer_number'] as String?
    ..invoiceNumber = json['invoice_number'] as String?
    ..payableTo = json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>)
    ..billTo = json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String?
    ..dateDue = json['date_due'] as String?
    ..items = (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..advancedFields = json['advanced_fields'] as bool?
    ..subtotal = json['subtotal'] as int?
    ..enableTax = json['enable_tax'] as bool?
    ..enableShipping = json['enable_shipping'] as bool?
    ..requireShippingDetails = json['require_shipping_details'] as bool?
    ..requireBillingDetailsOnPaymentOnly =
        json['require_billing_details_on_payment_only'] as bool?
    ..taxPercent = json['tax_percent'] as String?
    ..tax = json['tax'] as int?
    ..shipping = json['shipping'] as int?
    ..total = json['total'] as int?
    ..amountPaid = json['amount_paid'] as int?
    ..serviceFeesPaid = json['service_fees_paid'] as int?
    ..surchargePaid = json['surcharge_paid'] as int?
    ..discountCredited = json['discount_credited'] as int?
    ..adjustment = json['adjustment'] as int?
    ..amountDue = json['amount_due'] as int?
    ..allowPartialPayment = json['allow_partial_payment'] as bool?
    ..transactionType = json['transaction_type'] as String?
    ..paymentMethods = (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..cardProcessorId = json['card_processor_id'] as String?
    ..achProcessorId = json['ach_processor_id'] as String?
    ..status = _$enumDecodeNullable(_$InvoiceStatusEnumMap, json['status'])
    ..message = json['message'] as String?
    ..rejectMessage = json['reject_message'] as String?
    ..sendVia = _$enumDecodeNullable(_$SendViaEnumMap, json['send_via'])
    ..emailTo = json['email_to'] as String?
    ..lastSentAt = json['last_sent_at'] as String?
    ..updatedAt = json['updated_at'] as String?
    ..publicHash = json['public_hash'] as String?
    ..hostedUrl = json['hosted_url'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..customerId = json['customer_id'] as String?;
}

Map<String, dynamic> _$InvoiceGetResponseDataToJson(
        InvoiceGetResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'company_logo_url': instance.companyLogoUrl,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'created_at': instance.createdAt,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'subtotal': instance.subtotal,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'service_fees_paid': instance.serviceFeesPaid,
      'surcharge_paid': instance.surchargePaid,
      'discount_credited': instance.discountCredited,
      'adjustment': instance.adjustment,
      'amount_due': instance.amountDue,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'message': instance.message,
      'reject_message': instance.rejectMessage,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'last_sent_at': instance.lastSentAt,
      'updated_at': instance.updatedAt,
      'public_hash': instance.publicHash,
      'hosted_url': instance.hostedUrl,
      'merchant_id': instance.merchantId,
      'customer_id': instance.customerId,
    };

InvoiceSearchResponse _$InvoiceSearchResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map((e) => InvoiceResponseData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$InvoiceSearchResponseToJson(
        InvoiceSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceResponseData _$InvoiceResponseDataFromJson(Map<String, dynamic> json) {
  return InvoiceResponseData()
    ..id = json['id'] as String?
    ..currency = json['currency'] as String?
    ..companyName = json['company_name'] as String?
    ..companyLogoUrl = json['company_logo_url'] as String?
    ..customerNumber = json['customer_number'] as String?
    ..invoiceNumber = json['invoice_number'] as String?
    ..payableTo = json['payable_to'] == null
        ? null
        : InvoicePayableTo.fromJson(json['payable_to'] as Map<String, dynamic>)
    ..billTo = json['bill_to'] == null
        ? null
        : InvoiceBillTo.fromJson(json['bill_to'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] as String?
    ..dateDue = json['date_due'] as String?
    ..items = (json['items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList()
    ..advancedFields = json['advanced_fields'] as bool?
    ..subtotal = json['subtotal'] as int?
    ..enableTax = json['enable_tax'] as bool?
    ..enableShipping = json['enable_shipping'] as bool?
    ..requireShippingDetails = json['require_shipping_details'] as bool?
    ..requireBillingDetailsOnPaymentOnly =
        json['require_billing_details_on_payment_only'] as bool?
    ..taxPercent = json['tax_percent'] as String?
    ..tax = json['tax'] as int?
    ..shipping = json['shipping'] as int?
    ..total = json['total'] as int?
    ..amountPaid = json['amount_paid'] as int?
    ..serviceFeesPaid = json['service_fees_paid'] as int?
    ..surchargePaid = json['surcharge_paid'] as int?
    ..discountCredited = json['discount_credited'] as int?
    ..adjustment = json['adjustment'] as int?
    ..amountDue = json['amount_due'] as int?
    ..allowPartialPayment = json['allow_partial_payment'] as bool?
    ..transactionType = json['transaction_type'] as String?
    ..paymentMethods = (json['payment_methods'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList()
    ..cardProcessorId = json['card_processor_id'] as String?
    ..achProcessorId = json['ach_processor_id'] as String?
    ..status = _$enumDecodeNullable(_$InvoiceStatusEnumMap, json['status'])
    ..message = json['message'] as String?
    ..rejectMessage = json['reject_message'] as String?
    ..sendVia = _$enumDecodeNullable(_$SendViaEnumMap, json['send_via'])
    ..emailTo = json['email_to'] as String?
    ..lastSentAt = json['last_sent_at'] as String?
    ..updatedAt = json['updated_at'] as String?
    ..publicHash = json['public_hash'] as String?
    ..hostedUrl = json['hosted_url'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..customerId = json['customer_id'] as String?;
}

Map<String, dynamic> _$InvoiceResponseDataToJson(
        InvoiceResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'currency': instance.currency,
      'company_name': instance.companyName,
      'company_logo_url': instance.companyLogoUrl,
      'customer_number': instance.customerNumber,
      'invoice_number': instance.invoiceNumber,
      'payable_to': instance.payableTo,
      'bill_to': instance.billTo,
      'created_at': instance.createdAt,
      'date_due': instance.dateDue,
      'items': instance.items,
      'advanced_fields': instance.advancedFields,
      'subtotal': instance.subtotal,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'require_shipping_details': instance.requireShippingDetails,
      'require_billing_details_on_payment_only':
          instance.requireBillingDetailsOnPaymentOnly,
      'tax_percent': instance.taxPercent,
      'tax': instance.tax,
      'shipping': instance.shipping,
      'total': instance.total,
      'amount_paid': instance.amountPaid,
      'service_fees_paid': instance.serviceFeesPaid,
      'surcharge_paid': instance.surchargePaid,
      'discount_credited': instance.discountCredited,
      'adjustment': instance.adjustment,
      'amount_due': instance.amountDue,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'payment_methods': instance.paymentMethods,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'status': _$InvoiceStatusEnumMap[instance.status],
      'message': instance.message,
      'reject_message': instance.rejectMessage,
      'send_via': _$SendViaEnumMap[instance.sendVia],
      'email_to': instance.emailTo,
      'last_sent_at': instance.lastSentAt,
      'updated_at': instance.updatedAt,
      'public_hash': instance.publicHash,
      'hosted_url': instance.hostedUrl,
      'merchant_id': instance.merchantId,
      'customer_id': instance.customerId,
    };

InvoiceResendResponse _$InvoiceResendResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceResendResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$InvoiceResendResponseToJson(
        InvoiceResendResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceDeleteResponse _$InvoiceDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceDeleteResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$InvoiceDeleteResponseToJson(
        InvoiceDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };
