// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLoginRequest _$AuthLoginRequestFromJson(Map<String, dynamic> json) {
  return AuthLoginRequest(
    json['username'] as String,
    json['password'] as String,
    authKey: json['auth_key'] as String?,
    totp: json['totp'] as String?,
  );
}

Map<String, dynamic> _$AuthLoginRequestToJson(AuthLoginRequest instance) =>
    <String, dynamic>{
      'auth_key': instance.authKey,
      'username': instance.username,
      'password': instance.password,
      'totp': instance.totp,
    };
