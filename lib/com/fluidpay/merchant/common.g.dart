// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartDataFullProduct _$CartDataFullProductFromJson(Map<String, dynamic> json) {
  return CartDataFullProduct(
    id: json['id'] as String,
    publicHash: json['public_hash'] as String,
    merchantId: json['merchant_id'] as String,
    cardProcessorId: json['card_processor_id'] as String,
    achProcessorId: json['ach_processor_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    customFieldsGroup: json['custom_fields_group'] as String,
    products: (json['products'] as List)
        ?.map((e) =>
            e == null ? null : ProductData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    showAvailableProducts: json['show_available_products'] as bool,
    requireShippingDetails: json['require_shipping_details'] as bool,
    emailReceipt: json['email_receipt'] as bool,
    payments: json['payments'] as bool,
    shopifyHash: json['shopify_hash'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$CartDataFullProductToJson(
        CartDataFullProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'public_hash': instance.publicHash,
      'merchant_id': instance.merchantId,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'custom_fields_group': instance.customFieldsGroup,
      'products': instance.products,
      'show_available_products': instance.showAvailableProducts,
      'require_shipping_details': instance.requireShippingDetails,
      'email_receipt': instance.emailReceipt,
      'payments': instance.payments,
      'shopify_hash': instance.shopifyHash,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

CartDataStringProduct _$CartDataStringProductFromJson(
    Map<String, dynamic> json) {
  return CartDataStringProduct(
    id: json['id'] as String,
    publicHash: json['public_hash'] as String,
    merchantId: json['merchant_id'] as String,
    cardProcessorId: json['card_processor_id'] as String,
    achProcessorId: json['ach_processor_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    customFieldsGroup: json['custom_fields_group'] as String,
    products: (json['products'] as List)?.map((e) => e as String)?.toList(),
    showAvailableProducts: json['show_available_products'] as bool,
    requireShippingDetails: json['require_shipping_details'] as bool,
    emailReceipt: json['email_receipt'] as bool,
    payments: json['payments'] as bool,
    shopifyHash: json['shopify_hash'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$CartDataStringProductToJson(
        CartDataStringProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'public_hash': instance.publicHash,
      'merchant_id': instance.merchantId,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'custom_fields_group': instance.customFieldsGroup,
      'products': instance.products,
      'show_available_products': instance.showAvailableProducts,
      'require_shipping_details': instance.requireShippingDetails,
      'email_receipt': instance.emailReceipt,
      'payments': instance.payments,
      'shopify_hash': instance.shopifyHash,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData(
    productId: json['id'] as String,
    publicHash: json['public_hash'] as String,
    merchantId: json['merchant_id'] as String,
    name: json['name'] as String,
    img: json['img'] as String,
    price: json['price'] as int,
    localTax: json['local_tax'] as int,
    nationalTax: json['national_tax'] as int,
    fixedAmount: json['fixed_amount'] as bool,
    fixedQty: json['fixed_qty'] as bool,
    description: json['description'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
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
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };
