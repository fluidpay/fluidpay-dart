// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomFieldCreateRequest _$CustomFieldCreateRequestFromJson(
    Map<String, dynamic> json) {
  return CustomFieldCreateRequest(
    name: json['name'] as String?,
    type: json['type'] as String?,
    groupName: json['group_name'] as String?,
    required: json['required'] as bool?,
    validationType: json['validation_type'] as String?,
    values: (json['values'] as List<dynamic>?)
        ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CustomFieldCreateRequestToJson(
    CustomFieldCreateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('group_name', instance.groupName);
  writeNotNull('required', instance.required);
  writeNotNull('validation_type', instance.validationType);
  writeNotNull('values', instance.values);
  return val;
}

CustomFieldUpdateRequest _$CustomFieldUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return CustomFieldUpdateRequest(
    name: json['name'] as String?,
    type: json['type'] as String?,
    groupName: json['group_name'] as String?,
    required: json['required'] as bool?,
    validationType: json['validation_type'] as String?,
    values: (json['values'] as List<dynamic>?)
        ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CustomFieldUpdateRequestToJson(
    CustomFieldUpdateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('type', instance.type);
  writeNotNull('group_name', instance.groupName);
  writeNotNull('required', instance.required);
  writeNotNull('validation_type', instance.validationType);
  writeNotNull('values', instance.values);
  return val;
}

CustomFieldGetRequest _$CustomFieldGetRequestFromJson(
    Map<String, dynamic> json) {
  return CustomFieldGetRequest(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$CustomFieldGetRequestToJson(
    CustomFieldGetRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}

CustomFieldDeleteRequest _$CustomFieldDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return CustomFieldDeleteRequest(
    id: json['id'] as String?,
  );
}

Map<String, dynamic> _$CustomFieldDeleteRequestToJson(
    CustomFieldDeleteRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  return val;
}
