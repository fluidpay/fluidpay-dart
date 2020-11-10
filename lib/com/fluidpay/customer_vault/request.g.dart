// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerCreateRequest _$CustomerCreateRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerCreateRequest(
    id: json['id'] as String,
    idFormat: json['id_format'] as String,
    description: json['description'] as String,
    defaultBillingAddress: json['default_billing_address'] == null
        ? null
        : CustomerAddress.fromJson(
            json['default_billing_address'] as Map<String, dynamic>),
    defaultShippingAddress: json['default_shipping_address'] == null
        ? null
        : CustomerAddress.fromJson(
            json['default_shipping_address'] as Map<String, dynamic>),
    defaultPayment: json['default_payment'] == null
        ? null
        : CustomerPaymentCreate.fromJson(
            json['default_payment'] as Map<String, dynamic>),
    flags: (json['flags'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CustomerCreateRequestToJson(
        CustomerCreateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'id_format': instance.idFormat,
      'description': instance.description,
      'default_billing_address': instance.defaultBillingAddress,
      'default_shipping_address': instance.defaultShippingAddress,
      'default_payment': instance.defaultPayment,
      'flags': instance.flags,
    };

CustomerPaymentCreate _$CustomerPaymentCreateFromJson(
    Map<String, dynamic> json) {
  return CustomerPaymentCreate(
    card: json['card'] == null
        ? null
        : CustomerCard.fromJson(json['card'] as Map<String, dynamic>),
    ach: json['ach'] == null
        ? null
        : CustomerACH.fromJson(json['ach'] as Map<String, dynamic>),
    token: json['token'] as String,
  );
}

Map<String, dynamic> _$CustomerPaymentCreateToJson(
        CustomerPaymentCreate instance) =>
    <String, dynamic>{
      'card': instance.card,
      'ach': instance.ach,
      'token': instance.token,
    };

CustomerGetRequest _$CustomerGetRequestFromJson(Map<String, dynamic> json) {
  return CustomerGetRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CustomerGetRequestToJson(CustomerGetRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CustomerDeleteRequest _$CustomerDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerDeleteRequest(
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$CustomerDeleteRequestToJson(
        CustomerDeleteRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

CustomerUpdateRequest _$CustomerUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerUpdateRequest(
    json['id'] as String,
    description: json['description'] as String,
    notes: json['notes'] as String,
    defaults: json['defaults'] == null
        ? null
        : CustomerDefaults.fromJson(json['defaults'] as Map<String, dynamic>),
    flags: (json['flags'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$CustomerUpdateRequestToJson(
        CustomerUpdateRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'notes': instance.notes,
      'defaults': instance.defaults,
      'flags': instance.flags,
    };

CustomerSearchRequest _$CustomerSearchRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerSearchRequest(
    id: json['id'] == null
        ? null
        : QuerySearchParamString.fromJson(json['id'] as Map<String, dynamic>),
    paymentMethodType: json['payment_method_type'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['payment_method_type'] as Map<String, dynamic>),
    paymentMethodId: json['payment_method_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['payment_method_id'] as Map<String, dynamic>),
    billingAddressId: json['billing_address_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['billing_address_id'] as Map<String, dynamic>),
    shippingAddressId: json['shipping_address_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['shipping_address_id'] as Map<String, dynamic>),
    addressId: json['address_id'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['address_id'] as Map<String, dynamic>),
    firstName: json['first_name'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['first_name'] as Map<String, dynamic>),
    lastName: json['last_name'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['last_name'] as Map<String, dynamic>),
    company: json['company'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['company'] as Map<String, dynamic>),
    addressLine1: json['address_line_1'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['address_line_1'] as Map<String, dynamic>),
    addressLine2: json['address_line_2'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['address_line_2'] as Map<String, dynamic>),
    city: json['city'] == null
        ? null
        : QuerySearchParamString.fromJson(json['city'] as Map<String, dynamic>),
    state: json['state'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['state'] as Map<String, dynamic>),
    postalCode: json['postal_code'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['postal_code'] as Map<String, dynamic>),
    country: json['country'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['country'] as Map<String, dynamic>),
    email: json['email'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['email'] as Map<String, dynamic>),
    phone: json['phone'] == null
        ? null
        : QuerySearchParamString.fromJson(
            json['phone'] as Map<String, dynamic>),
    fax: json['fax'] == null
        ? null
        : QuerySearchParamString.fromJson(json['fax'] as Map<String, dynamic>),
    createdAt: json['created_at'] == null
        ? null
        : QuerySearchParamDateRange.fromJson(
            json['created_at'] as Map<String, dynamic>),
    updatedAt: json['updated_at'] == null
        ? null
        : QuerySearchParamDateRange.fromJson(
            json['updated_at'] as Map<String, dynamic>),
    limit: json['limit'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$CustomerSearchRequestToJson(
        CustomerSearchRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'payment_method_type': instance.paymentMethodType,
      'payment_method_id': instance.paymentMethodId,
      'billing_address_id': instance.billingAddressId,
      'shipping_address_id': instance.shippingAddressId,
      'address_id': instance.addressId,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'email': instance.email,
      'phone': instance.phone,
      'fax': instance.fax,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'limit': instance.limit,
      'offset': instance.offset,
    };

CustomerAddressCreateRequest _$CustomerAddressCreateRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressCreateRequest(
    json['customer_id'] as String,
    address: json['address'] == null
        ? null
        : CustomerAddress.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CustomerAddressCreateRequestToJson(
        CustomerAddressCreateRequest instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'address': instance.address,
    };

CustomerAddressUpdateRequest _$CustomerAddressUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressUpdateRequest(
    json['customer_id'] as String,
    json['address_id'] as String,
    address: json['address'] == null
        ? null
        : CustomerAddress.fromJson(json['address'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CustomerAddressUpdateRequestToJson(
        CustomerAddressUpdateRequest instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'address_id': instance.addressId,
      'address': instance.address,
    };

CustomerAddressDeleteRequest _$CustomerAddressDeleteRequestFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressDeleteRequest(
    json['customer_id'] as String,
    json['address_id'] as String,
  );
}

Map<String, dynamic> _$CustomerAddressDeleteRequestToJson(
        CustomerAddressDeleteRequest instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'address_id': instance.addressId,
    };

Map<String, dynamic> _$CustomerPaymentTypeCreateRequestToJson(
        CustomerPaymentTypeCreateRequest instance) =>
    <String, dynamic>{
      'payment_type': _$CustomerPaymentTypeEnumMap[instance.paymentType],
      'data': instance.data,
    };

const _$CustomerPaymentTypeEnumMap = {
  CustomerPaymentType.card: 'card',
  CustomerPaymentType.ach: 'ach',
  CustomerPaymentType.token: 'token',
};

Map<String, dynamic> _$CustomerPaymentTypeUpdateRequestToJson(
        CustomerPaymentTypeUpdateRequest instance) =>
    <String, dynamic>{
      'payment_type': _$CustomerPaymentTypeEnumMap[instance.paymentType],
      'data': instance.data,
    };

Map<String, dynamic> _$CustomerPaymentTypeDeleteRequestToJson(
        CustomerPaymentTypeDeleteRequest instance) =>
    <String, dynamic>{
      'payment_type': _$CustomerPaymentTypeEnumMap[instance.paymentType],
    };
