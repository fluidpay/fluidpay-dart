// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthLoginResponse _$AuthLoginResponseFromJson(Map<String, dynamic> json) {
  return AuthLoginResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : AuthLoginResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AuthLoginResponseToJson(AuthLoginResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

AuthLoginResponseData _$AuthLoginResponseDataFromJson(
    Map<String, dynamic> json) {
  return AuthLoginResponseData()
    ..token = json['token'] as String
    ..sid = json['sid'] as String;
}

Map<String, dynamic> _$AuthLoginResponseDataToJson(
        AuthLoginResponseData instance) =>
    <String, dynamic>{
      'token': instance.token,
      'sid': instance.sid,
    };
