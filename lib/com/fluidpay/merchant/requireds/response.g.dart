// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequiredsUpdateResponse _$RequiredsUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return RequiredsUpdateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : MerchantData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RequiredsUpdateResponseToJson(
    RequiredsUpdateResponse instance) {
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
