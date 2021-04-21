// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscountResponse _$DiscountResponseFromJson(Map<String, dynamic> json) {
  return DiscountResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : DiscountResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DiscountResponseToJson(DiscountResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

DiscountUpdateResponse _$DiscountUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return DiscountUpdateResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$DiscountUpdateResponseToJson(
        DiscountUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

DiscountSearchResponse _$DiscountSearchResponseFromJson(
    Map<String, dynamic> json) {
  return DiscountSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map((e) => DiscountResponseData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$DiscountSearchResponseToJson(
        DiscountSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

DiscountDeleteResponse _$DiscountDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return DiscountDeleteResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'];
}

Map<String, dynamic> _$DiscountDeleteResponseToJson(
        DiscountDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

DiscountResponseData _$DiscountResponseDataFromJson(Map<String, dynamic> json) {
  return DiscountResponseData()
    ..id = json['id'] as String?
    ..name = json['name'] as String?
    ..description = json['description'] as String?
    ..amount = json['amount'] as int?
    ..percentage = json['percentage'] as int?
    ..duration = json['duration'] as int?
    ..createdAt = json['created_at'] as String?
    ..updatedAt = json['updated_at'] as String?;
}

Map<String, dynamic> _$DiscountResponseDataToJson(
        DiscountResponseData instance) =>
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
