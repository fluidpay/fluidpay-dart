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
        : ProductResponseData.fromJson(json['data'] as Map<String, dynamic>);
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
        : ProductResponseData.fromJson(json['data'] as Map<String, dynamic>);
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
        : ProductResponseData.fromJson(json['data'] as Map<String, dynamic>);
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
        ?.map((e) => e == null
            ? null
            : ProductResponseData.fromJson(e as Map<String, dynamic>))
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
        ?.map((e) => e == null
            ? null
            : ProductResponseData.fromJson(e as Map<String, dynamic>))
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

ProductResponseData _$ProductResponseDataFromJson(Map<String, dynamic> json) {
  return ProductResponseData()
    ..productId = json['id'] as String
    ..publicHash = json['public_hash'] as String
    ..merchantId = json['merchant_id'] as String
    ..name = json['name'] as String
    ..img = json['img'] as String
    ..price = json['price'] as int
    ..localTax = json['local_tax'] as int
    ..nationalTax = json['national_tax'] as int
    ..fixedAmount = json['fixed_amount'] as bool
    ..fixedQty = json['fixed_qty'] as bool
    ..description = json['description'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String
    ..deletedAt = json['deleted_at'] as String;
}

Map<String, dynamic> _$ProductResponseDataToJson(
        ProductResponseData instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'public_hash': instance.publicHash,
      'merchant_id': instance.merchantId,
      'name': instance.name,
      'img': instance.img,
      'price': instance.price,
      'local_tax': instance.localTax,
      'national_tax': instance.nationalTax,
      'fixed_amount': instance.fixedAmount,
      'fixed_qty': instance.fixedQty,
      'description': instance.description,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
    };
