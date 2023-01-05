// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MBAUnit _$MBAUnitFromJson(Map<String, dynamic> json) {
  return MBAUnit(
    json['physical_id'] as String,
    json['physical_type'] as String,
    json['passcode'] as String,
    id: json['id'] as String?,
    userId: json['user_id'] as String?,
  );
}

Map<String, dynamic> _$MBAUnitToJson(MBAUnit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('user_id', instance.userId);
  val['physical_id'] = instance.physicalId;
  val['physical_type'] = instance.physicalType;
  val['passcode'] = instance.passcode;
  return val;
}

MBAAuthLoginRequest _$MBAAuthLoginRequestFromJson(Map<String, dynamic> json) {
  return MBAAuthLoginRequest(
    json['username'] as String,
    json['password'] as String,
    json['physical_id'] as String,
    authKey: json['auth_key'] as String?,
    totp: json['totp'] as String?,
  );
}

Map<String, dynamic> _$MBAAuthLoginRequestToJson(MBAAuthLoginRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auth_key', instance.authKey);
  val['username'] = instance.username;
  val['password'] = instance.password;
  writeNotNull('totp', instance.totp);
  val['physical_id'] = instance.physicalId;
  return val;
}

MBAAuthRefreshRequest _$MBAAuthRefreshRequestFromJson(
    Map<String, dynamic> json) {
  return MBAAuthRefreshRequest(
    json['token'] as String,
  );
}

Map<String, dynamic> _$MBAAuthRefreshRequestToJson(
        MBAAuthRefreshRequest instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
