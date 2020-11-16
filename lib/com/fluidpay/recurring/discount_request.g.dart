// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountCreateRequest _$DiscountCreateRequestFromJson(
    Map<String, dynamic> json) {
  return DiscountCreateRequest(
    name: json['name'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
    percentage: json['percentage'] as int,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$DiscountCreateRequestToJson(
        DiscountCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'duration': instance.duration,
    };

DiscountUpdateRequest _$DiscountUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return DiscountUpdateRequest(
    name: json['name'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
    percentage: json['percentage'] as int,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$DiscountUpdateRequestToJson(
        DiscountUpdateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'duration': instance.duration,
    };

Map<String, dynamic> _$DiscountDeleteRequestToJson(
        DiscountDeleteRequest instance) =>
    <String, dynamic>{};

DiscountRequest _$DiscountRequestFromJson(Map<String, dynamic> json) {
  return DiscountRequest(
    id: json['id'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
    percentage: json['percentage'] as int,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$DiscountRequestToJson(DiscountRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'duration': instance.duration,
    };
