// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BinLookupRequest _$BinLookupRequestFromJson(Map<String, dynamic> json) =>
    BinLookupRequest(
      bin: json['bin'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$BinLookupRequestToJson(BinLookupRequest instance) =>
    <String, dynamic>{
      'bin': instance.bin,
      'state': instance.state,
    };

FeeLookupRequest _$FeeLookupRequestFromJson(Map<String, dynamic> json) =>
    FeeLookupRequest(
      bin: json['bin'] as String?,
      state: json['state'] as String?,
      paymentMethod: json['payment_method'] as String?,
      baseAmount: (json['base_amount'] as num?)?.toInt(),
      processorId: json['processor_id'] as String?,
      surcharge: json['surcharge'] == null
          ? null
          : PaymentAdjustmentRequest.fromJson(
              json['surcharge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FeeLookupRequestToJson(FeeLookupRequest instance) =>
    <String, dynamic>{
      'bin': instance.bin,
      'state': instance.state,
      'payment_method': instance.paymentMethod,
      'base_amount': instance.baseAmount,
      'processor_id': instance.processorId,
      'surcharge': instance.surcharge,
    };
