// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addon_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOnResponse _$AddOnResponseFromJson(Map<String, dynamic> json) {
  return AddOnResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : AddOnResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$AddOnResponseToJson(AddOnResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

AddOnSearchResponse _$AddOnSearchResponseFromJson(Map<String, dynamic> json) {
  return AddOnSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : AddOnResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$AddOnSearchResponseToJson(
        AddOnSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

AddOnResponseData _$AddOnResponseDataFromJson(Map<String, dynamic> json) {
  return AddOnResponseData()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..amount = json['amount'] as int
    ..percentage = json['percentage'] as int
    ..duration = json['duration'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$AddOnResponseDataToJson(AddOnResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'percentage': instance.percentage,
      'duration': instance.duration,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
