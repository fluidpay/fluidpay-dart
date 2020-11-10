// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCreateRequest _$ProductCreateRequestFromJson(Map<String, dynamic> json) {
  return ProductCreateRequest(
    name: json['name'] as String,
    img: json['img'] as String,
    price: json['price'] as int,
    localTax: json['local_tax'] as int,
    nationalTax: json['national_tax'] as int,
    fixedAmount: json['fixed_amount'] as bool,
    fixedQty: json['fixed_qty'] as bool,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ProductCreateRequestToJson(
        ProductCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'price': instance.price,
      'local_tax': instance.localTax,
      'national_tax': instance.nationalTax,
      'fixed_amount': instance.fixedAmount,
      'fixed_qty': instance.fixedQty,
      'description': instance.description,
    };

ProductUpdateRequest _$ProductUpdateRequestFromJson(Map<String, dynamic> json) {
  return ProductUpdateRequest(
    name: json['name'] as String,
    img: json['img'] as String,
    price: json['price'] as int,
    localTax: json['local_tax'] as int,
    nationalTax: json['national_tax'] as int,
    fixedAmount: json['fixed_amount'] as bool,
    fixedQty: json['fixed_qty'] as bool,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ProductUpdateRequestToJson(
        ProductUpdateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'img': instance.img,
      'price': instance.price,
      'local_tax': instance.localTax,
      'national_tax': instance.nationalTax,
      'fixed_amount': instance.fixedAmount,
      'fixed_qty': instance.fixedQty,
      'description': instance.description,
    };

ProductDeleteRequest _$ProductDeleteRequestFromJson(Map<String, dynamic> json) {
  return ProductDeleteRequest();
}

Map<String, dynamic> _$ProductDeleteRequestToJson(
        ProductDeleteRequest instance) =>
    <String, dynamic>{};

ProductGetRequest _$ProductGetRequestFromJson(Map<String, dynamic> json) {
  return ProductGetRequest();
}

Map<String, dynamic> _$ProductGetRequestToJson(ProductGetRequest instance) =>
    <String, dynamic>{};

ProductGetAllRequest _$ProductGetAllRequestFromJson(Map<String, dynamic> json) {
  return ProductGetAllRequest();
}

Map<String, dynamic> _$ProductGetAllRequestToJson(
        ProductGetAllRequest instance) =>
    <String, dynamic>{};

ProductSearchRequest _$ProductSearchRequestFromJson(Map<String, dynamic> json) {
  return ProductSearchRequest(
    id: json['id'] == null
        ? null
        : QuerySearchParamString.fromJson(json['id'] as Map<String, dynamic>),
    name: json['name'] == null
        ? null
        : QuerySearchParamString.fromJson(json['name'] as Map<String, dynamic>),
    price: json['price'] == null
        ? null
        : QuerySearchParamInt.fromJson(json['price'] as Map<String, dynamic>),
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

Map<String, dynamic> _$ProductSearchRequestToJson(
        ProductSearchRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'deleted_at': instance.deletedAt,
      'offset': instance.offset,
      'limit': instance.limit,
    };
