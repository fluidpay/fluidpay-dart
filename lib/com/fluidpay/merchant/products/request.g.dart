// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductCreateRequest _$ProductCreateRequestFromJson(Map<String, dynamic> json) {
  return ProductCreateRequest(
    json['merchant_id'] as String,
    name: json['name'] as String?,
    img: json['img'] as String?,
    price: json['price'] as int?,
    localTax: json['local_tax'] as int?,
    nationalTax: json['national_tax'] as int?,
    fixedAmount: json['fixed_amount'] as bool?,
    fixedQty: json['fixed_qty'] as bool?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$ProductCreateRequestToJson(
    ProductCreateRequest instance) {
  final val = <String, dynamic>{
    'merchant_id': instance.merchantId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('img', instance.img);
  writeNotNull('price', instance.price);
  writeNotNull('local_tax', instance.localTax);
  writeNotNull('national_tax', instance.nationalTax);
  writeNotNull('fixed_amount', instance.fixedAmount);
  writeNotNull('fixed_qty', instance.fixedQty);
  writeNotNull('description', instance.description);
  return val;
}

ProductUpdateRequest _$ProductUpdateRequestFromJson(Map<String, dynamic> json) {
  return ProductUpdateRequest(
    json['merchant_id'] as String,
    json['product_id'] as String,
    name: json['name'] as String?,
    img: json['img'] as String?,
    price: json['price'] as int?,
    localTax: json['local_tax'] as int?,
    nationalTax: json['national_tax'] as int?,
    fixedAmount: json['fixed_amount'] as bool?,
    fixedQty: json['fixed_qty'] as bool?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$ProductUpdateRequestToJson(
    ProductUpdateRequest instance) {
  final val = <String, dynamic>{
    'merchant_id': instance.merchantId,
    'product_id': instance.productId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('img', instance.img);
  writeNotNull('price', instance.price);
  writeNotNull('local_tax', instance.localTax);
  writeNotNull('national_tax', instance.nationalTax);
  writeNotNull('fixed_amount', instance.fixedAmount);
  writeNotNull('fixed_qty', instance.fixedQty);
  writeNotNull('description', instance.description);
  return val;
}

ProductSearchRequest _$ProductSearchRequestFromJson(Map<String, dynamic> json) {
  return ProductSearchRequest(
    json['merchant_id'] as String,
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
    offset: json['offset'] as int?,
    limit: json['limit'] as int?,
  );
}

Map<String, dynamic> _$ProductSearchRequestToJson(
    ProductSearchRequest instance) {
  final val = <String, dynamic>{
    'merchant_id': instance.merchantId,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('price', instance.price);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('deleted_at', instance.deletedAt);
  writeNotNull('offset', instance.offset);
  writeNotNull('limit', instance.limit);
  return val;
}
