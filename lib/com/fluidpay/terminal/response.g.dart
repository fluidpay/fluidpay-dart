// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalGetResponse _$TerminalGetResponseFromJson(Map<String, dynamic> json) {
  return TerminalGetResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map((e) => TerminalResponseData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TerminalGetResponseToJson(
        TerminalGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TerminalResponseData _$TerminalResponseDataFromJson(Map<String, dynamic> json) {
  return TerminalResponseData()
    ..id = json['id'] as String?
    ..merchantId = json['merchant_id'] as String?
    ..manufacturer = json['manufacturer'] as String?
    ..model = json['model'] as String?
    ..serialNumber = json['serial_number'] as String?
    ..tpn = json['tpn'] as String?
    ..description = json['description'] as String?
    ..status = json['status'] as String?
    ..authKey = json['auth_key'] as String?
    ..registerId = json['register_id'] as String?
    ..autoSettle = json['auto_settle'] as bool?
    ..settleAt = json['settle_at'] as String?
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
}

Map<String, dynamic> _$TerminalResponseDataToJson(
        TerminalResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'merchant_id': instance.merchantId,
      'manufacturer': instance.manufacturer,
      'model': instance.model,
      'serial_number': instance.serialNumber,
      'tpn': instance.tpn,
      'description': instance.description,
      'status': instance.status,
      'auth_key': instance.authKey,
      'register_id': instance.registerId,
      'auto_settle': instance.autoSettle,
      'settle_at': instance.settleAt,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
