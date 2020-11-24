// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCreateResponse _$ProductCreateResponseFromJson(
    Map<String, dynamic> json) {
  return ProductCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : ProductData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductCreateResponseToJson(
        ProductCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

ProductUpdateResponse _$ProductUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return ProductUpdateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : ProductData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductUpdateResponseToJson(
        ProductUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

ProductGetResponse _$ProductGetResponseFromJson(Map<String, dynamic> json) {
  return ProductGetResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : ProductData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$ProductGetResponseToJson(ProductGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

ProductGetAllResponse _$ProductGetAllResponseFromJson(
    Map<String, dynamic> json) {
  return ProductGetAllResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ProductData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ProductGetAllResponseToJson(
        ProductGetAllResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

ProductSearchResponse _$ProductSearchResponseFromJson(
    Map<String, dynamic> json) {
  return ProductSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) =>
            e == null ? null : ProductData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$ProductSearchResponseToJson(
        ProductSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

ProductDeleteResponse _$ProductDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return ProductDeleteResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'];
}

Map<String, dynamic> _$ProductDeleteResponseToJson(
        ProductDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };
