// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BinLookupResponse _$BinLookupResponseFromJson(Map<String, dynamic> json) =>
    BinLookupResponse()
      ..status = json['status'] as String?
      ..msg = json['msg'] as String?
      ..statusCode = (json['status_code'] as num?)?.toInt()
      ..totalCount = (json['total_count'] as num?)?.toInt()
      ..data = json['data'] == null
          ? null
          : BinLookupData.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$BinLookupResponseToJson(BinLookupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

BinLookupData _$BinLookupDataFromJson(Map<String, dynamic> json) =>
    BinLookupData(
      json['bin'] as String,
      json['card_brand'] as String,
      json['issuing_bank'] as String,
      json['card_type'] as String,
      json['card_level_generic'] as String,
      json['country'] as String,
      json['is_surchargeable'] as bool,
    );

Map<String, dynamic> _$BinLookupDataToJson(BinLookupData instance) =>
    <String, dynamic>{
      'bin': instance.bin,
      'card_brand': instance.cardBrand,
      'issuing_bank': instance.issuingBank,
      'card_type': instance.cardType,
      'card_level_generic': instance.cardLevelGeneric,
      'country': instance.country,
      'is_surchargeable': instance.isSurchargeable,
    };

FeeLookupResponse _$FeeLookupResponseFromJson(Map<String, dynamic> json) =>
    FeeLookupResponse()
      ..status = json['status'] as String?
      ..msg = json['msg'] as String?
      ..statusCode = (json['status_code'] as num?)?.toInt()
      ..totalCount = (json['total_count'] as num?)?.toInt()
      ..data = json['data'] == null
          ? null
          : FeeLookupData.fromJson(json['data'] as Map<String, dynamic>);

Map<String, dynamic> _$FeeLookupResponseToJson(FeeLookupResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

FeeLookupData _$FeeLookupDataFromJson(Map<String, dynamic> json) =>
    FeeLookupData(
      serviceFee: (json['service_fee'] as num?)?.toInt(),
      paymentAdjustment: json['payment_adjustment'] == null
          ? null
          : PaymentAdjustmentRequest.fromJson(
              json['payment_adjustment'] as Map<String, dynamic>),
      requestedAmount: (json['requested_amount'] as num?)?.toInt(),
      discountAmount: (json['discount_amount'] as num?)?.toInt(),
      surcharge: (json['surcharge'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeeLookupDataToJson(FeeLookupData instance) =>
    <String, dynamic>{
      'service_fee': instance.serviceFee,
      'payment_adjustment': instance.paymentAdjustment,
      'requested_amount': instance.requestedAmount,
      'discount_amount': instance.discountAmount,
      'surcharge': instance.surcharge,
    };
