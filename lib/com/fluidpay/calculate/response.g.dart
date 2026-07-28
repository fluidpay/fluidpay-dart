// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateAmountsResponse _$CalculateAmountsResponseFromJson(
        Map<String, dynamic> json) =>
    CalculateAmountsResponse()
      ..status = json['status'] as String?
      ..msg = json['msg'] as String?
      ..statusCode = (json['status_code'] as num?)?.toInt()
      ..totalCount = (json['total_count'] as num?)?.toInt()
      ..data = json['data'] == null
          ? null
          : CalculateAmountsResponseData.fromJson(
              json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$CalculateAmountsResponseToJson(
        CalculateAmountsResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CalculateFeesResponse _$CalculateFeesResponseFromJson(
        Map<String, dynamic> json) =>
    CalculateFeesResponse()
      ..status = json['status'] as String?
      ..msg = json['msg'] as String?
      ..statusCode = (json['status_code'] as num?)?.toInt()
      ..totalCount = (json['total_count'] as num?)?.toInt()
      ..data = json['data'] == null
          ? null
          : CalculateFeesResponseData.fromJson(
              json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$CalculateFeesResponseToJson(
        CalculateFeesResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CalculateAmountsResponseData _$CalculateAmountsResponseDataFromJson(
        Map<String, dynamic> json) =>
    CalculateAmountsResponseData(
      base: (json['base'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      shipping: (json['shipping'] as num?)?.toInt(),
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
      amountsIncluded: json['amounts_included'] == null
          ? null
          : AmountsIncluded.fromJson(
              json['amounts_included'] as Map<String, dynamic>),
      subtotal: (json['subtotal'] as num?)?.toInt(),
      serviceFee: (json['service_fee'] as num?)?.toInt(),
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
      tipAmount: (json['tip_amount'] as num?)?.toInt(),
      taxAmount: (json['tax_amount'] as num?)?.toInt(),
      surcharge: (json['surcharge'] as num?)?.toInt(),
      paymentAdj: (json['payment_adj'] as num?)?.toInt(),
      tax: (json['tax'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CalculateAmountsResponseDataToJson(
        CalculateAmountsResponseData instance) =>
    <String, dynamic>{
      'base': instance.base,
      'items': instance.items,
      'shipping': instance.shipping,
      'tax_rate': instance.taxRate,
      'amounts_included': instance.amountsIncluded,
      'subtotal': instance.subtotal,
      'service_fee': instance.serviceFee,
      'discount_amount': instance.discountAmount,
      'tip_amount': instance.tipAmount,
      'tax_amount': instance.taxAmount,
      'surcharge': instance.surcharge,
      'payment_adj': instance.paymentAdj,
      'tax': instance.tax,
      'total': instance.total,
    };

CalculateFeesResponseData _$CalculateFeesResponseDataFromJson(
        Map<String, dynamic> json) =>
    CalculateFeesResponseData(
      serviceFee: (json['service_fee'] as num?)?.toInt(),
      paymentAdjustment: json['payment_adjustment'] == null
          ? null
          : PaymentAdjustmentRequest.fromJson(
              json['payment_adjustment'] as Map<String, dynamic>),
      paymentTypeTotals:
          (json['payment_type_totals'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      paymentTypeTaxes:
          (json['payment_type_taxes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, (e as num).toInt()),
      ),
      requestedAmount: (json['requested_amount'] as num?)?.toInt(),
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
      surcharge: (json['surcharge'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CalculateFeesResponseDataToJson(
        CalculateFeesResponseData instance) =>
    <String, dynamic>{
      'service_fee': instance.serviceFee,
      'payment_adjustment': instance.paymentAdjustment,
      'payment_type_totals': instance.paymentTypeTotals,
      'payment_type_taxes': instance.paymentTypeTaxes,
      'requested_amount': instance.requestedAmount,
      'discount_amount': instance.discountAmount,
      'surcharge': instance.surcharge,
    };
