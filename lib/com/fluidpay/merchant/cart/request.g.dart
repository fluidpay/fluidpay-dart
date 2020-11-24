// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartGetRequest _$CartGetRequestFromJson(Map<String, dynamic> json) {
  return CartGetRequest();
}

Map<String, dynamic> _$CartGetRequestToJson(CartGetRequest instance) =>
    <String, dynamic>{};

CartSearchRequest _$CartSearchRequestFromJson(Map<String, dynamic> json) {
  return CartSearchRequest(
    id: json['id'] == null
        ? null
        : QuerySearchParamString.fromJson(json['id'] as Map<String, dynamic>),
    name: json['name'] == null
        ? null
        : QuerySearchParamString.fromJson(json['name'] as Map<String, dynamic>),
    product: json['product'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['product'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : QuerySearchParamDateRange.fromJson(
            json['created_at'] as Map<String, dynamic>),
    updatedAt: json['updated_at'] == null
        ? null
        : QuerySearchParamDateRange.fromJson(
            json['updated_at'] as Map<String, dynamic>),
    deletedAt: json['deleted_at'] == null
        ? null
        : QuerySearchParamDateRange.fromJson(
            json['deleted_at'] as Map<String, dynamic>),
    offset: json['offset'] as int,
    limit: json['limit'] as int,
  );
}

Map<String, dynamic> _$CartSearchRequestToJson(CartSearchRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'product': instance.product,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'offset': instance.offset,
      'limit': instance.limit,
    };

CartGetAllRequest _$CartGetAllRequestFromJson(Map<String, dynamic> json) {
  return CartGetAllRequest();
}

Map<String, dynamic> _$CartGetAllRequestToJson(CartGetAllRequest instance) =>
    <String, dynamic>{};

CartDeleteRequest _$CartDeleteRequestFromJson(Map<String, dynamic> json) {
  return CartDeleteRequest();
}

Map<String, dynamic> _$CartDeleteRequestToJson(CartDeleteRequest instance) =>
    <String, dynamic>{};
