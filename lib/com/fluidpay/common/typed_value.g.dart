// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typed_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypedValue _$TypedValueFromJson(Map<String, dynamic> json) => TypedValue(
      type: json['type'] as String,
      value: (json['value'] as num).toInt(),
      include: json['include'] as bool,
    );

Map<String, dynamic> _$TypedValueToJson(TypedValue instance) =>
    <String, dynamic>{
      'type': instance.type,
      'value': instance.value,
      'include': instance.include,
    };
