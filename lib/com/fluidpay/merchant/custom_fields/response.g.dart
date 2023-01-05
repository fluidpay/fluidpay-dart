// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomFieldCreateResponse _$CustomFieldCreateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomFieldCreateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$CustomFieldCreateResponseToJson(
    CustomFieldCreateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

CustomFieldUpdateResponse _$CustomFieldUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomFieldUpdateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$CustomFieldUpdateResponseToJson(
    CustomFieldUpdateResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

CustomFieldGetResponse _$CustomFieldGetResponseFromJson(
    Map<String, dynamic> json) {
  return CustomFieldGetResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : CustomFieldResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomFieldGetResponseToJson(
    CustomFieldGetResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

CustomFieldSearchResponse _$CustomFieldSearchResponseFromJson(
    Map<String, dynamic> json) {
  return CustomFieldSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map(
            (e) => CustomFieldResponseData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CustomFieldSearchResponseToJson(
    CustomFieldSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

CustomFieldDeleteResponse _$CustomFieldDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return CustomFieldDeleteResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$CustomFieldDeleteResponseToJson(
    CustomFieldDeleteResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

CustomFieldResponseData _$CustomFieldResponseDataFromJson(
    Map<String, dynamic> json) {
  return CustomFieldResponseData(
    json['id'] as String?,
    json['name'] as String?,
    json['group_name'] as String?,
    json['type'] as String?,
    json['required'] as bool?,
    json['validation_type'] as String?,
    (json['values'] as List<dynamic>?)
        ?.map((e) => Value.fromJson(e as Map<String, dynamic>))
        .toList(),
    json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$CustomFieldResponseDataToJson(
    CustomFieldResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('group_name', instance.groupName);
  writeNotNull('type', instance.type);
  writeNotNull('required', instance.required);
  writeNotNull('validation_type', instance.validationType);
  writeNotNull('values', instance.values);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

Value _$ValueFromJson(Map<String, dynamic> json) {
  return Value(
    json['name'] as String?,
    json['value'] as String?,
  );
}

Map<String, dynamic> _$ValueToJson(Value instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('value', instance.value);
  return val;
}
