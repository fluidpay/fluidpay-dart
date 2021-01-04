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

CartSessionCreateRequest _$CartSessionCreateRequestFromJson(
    Map<String, dynamic> json) {
  return CartSessionCreateRequest(
    checkoutUrl: json['checkout_url'] as String,
    cancelUrl: json['cancel_url'] as String,
    successUrl: json['success_url'] as String,
  );
}

Map<String, dynamic> _$CartSessionCreateRequestToJson(
        CartSessionCreateRequest instance) =>
    <String, dynamic>{
      'checkout_url': instance.checkoutUrl,
      'cancel_url': instance.cancelUrl,
      'success_url': instance.successUrl,
    };

CartCheckoutRequest _$CartCheckoutRequestFromJson(Map<String, dynamic> json) {
  return CartCheckoutRequest(
    cartSessionId: json['cart_session_id'] as String,
    cardProcessorId: json['card_processor_id'] as String,
    achProcessorId: json['ach_processor_id'] as String,
    customFields: (json['custom_fields'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, (e as List)?.map((e) => e as String)?.toList()),
    ),
    paymentMethod: json['payment_method'] == null
        ? null
        : PaymentMethodRequest.fromJson(
            json['payment_method'] as Map<String, dynamic>),
    billingAddress: json['billing_address'] == null
        ? null
        : Address.fromJson(json['billing_address'] as Map<String, dynamic>),
    shippingAddress: json['shipping_address'] == null
        ? null
        : Address.fromJson(json['shipping_address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CartCheckoutRequestToJson(
        CartCheckoutRequest instance) =>
    <String, dynamic>{
      'cart_session_id': instance.cartSessionId,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'custom_fields': instance.customFields,
      'payment_method': instance.paymentMethod,
      'billing_address': instance.billingAddress,
      'shipping_address': instance.shippingAddress,
    };
