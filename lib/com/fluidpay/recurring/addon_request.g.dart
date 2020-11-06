// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOnCreateRequest _$AddOnCreateRequestFromJson(Map<String, dynamic> json) {
  return AddOnCreateRequest(
    name: json['name'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
    percentage: json['percentage'] as int,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$AddOnCreateRequestToJson(AddOnCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'duration': instance.duration,
    };

AddOnRequest _$AddOnRequestFromJson(Map<String, dynamic> json) {
  return AddOnRequest(
    id: json['id'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
    percentage: json['percentage'] as int,
    duration: json['duration'] as int,
  );
}

Map<String, dynamic> _$AddOnRequestToJson(AddOnRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'duration': instance.duration,
    };
