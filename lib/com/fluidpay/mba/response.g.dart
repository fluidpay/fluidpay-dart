// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MBARegisterResponse _$MBARegisterResponseFromJson(Map<String, dynamic> json) {
  return MBARegisterResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$MBARegisterResponseToJson(MBARegisterResponse instance) {
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

MBAAuthLoginResponse _$MBAAuthLoginResponseFromJson(Map<String, dynamic> json) {
  return MBAAuthLoginResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : MBAAuthLoginResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MBAAuthLoginResponseToJson(
    MBAAuthLoginResponse instance) {
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

MBAAuthLoginResponseData _$MBAAuthLoginResponseDataFromJson(
    Map<String, dynamic> json) {
  return MBAAuthLoginResponseData()
    ..token = json['token'] as String?
    ..sid = json['sid'] as String?
    ..unitStatus =
        _$enumDecodeNullable(_$MBAUnitStatusEnumMap, json['unit_status']);
}

Map<String, dynamic> _$MBAAuthLoginResponseDataToJson(
    MBAAuthLoginResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  writeNotNull('sid', instance.sid);
  writeNotNull('unit_status', _$MBAUnitStatusEnumMap[instance.unitStatus]);
  return val;
}

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

const _$MBAUnitStatusEnumMap = {
  MBAUnitStatus.registered: 'registered',
  MBAUnitStatus.unregistered: 'unregistered',
};

MBAAuthRevokeResponse _$MBAAuthRevokeResponseFromJson(
    Map<String, dynamic> json) {
  return MBAAuthRevokeResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$MBAAuthRevokeResponseToJson(
    MBAAuthRevokeResponse instance) {
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

MBAAuthRefreshResponse _$MBAAuthRefreshResponseFromJson(
    Map<String, dynamic> json) {
  return MBAAuthRefreshResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : MBAAuthRefreshResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MBAAuthRefreshResponseToJson(
    MBAAuthRefreshResponse instance) {
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

MBAAuthRefreshResponseData _$MBAAuthRefreshResponseDataFromJson(
    Map<String, dynamic> json) {
  return MBAAuthRefreshResponseData()..token = json['token'] as String?;
}

Map<String, dynamic> _$MBAAuthRefreshResponseDataToJson(
    MBAAuthRefreshResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  return val;
}

MBAUpdateResponse _$MBAUpdateResponseFromJson(Map<String, dynamic> json) {
  return MBAUpdateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$MBAUpdateResponseToJson(MBAUpdateResponse instance) {
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

MBADeleteResponse _$MBADeleteResponseFromJson(Map<String, dynamic> json) {
  return MBADeleteResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$MBADeleteResponseToJson(MBADeleteResponse instance) {
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
