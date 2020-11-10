// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerCreateResponse _$CustomerCreateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CustomerCreateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerCreateResponseToJson(
        CustomerCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerCreateResponseData _$CustomerCreateResponseDataFromJson(
    Map<String, dynamic> json) {
  return CustomerCreateResponseData()
    ..id = json['id'] as String
    ..data = json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>)
    ..createAt = json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String)
    ..updateAt = json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String);
}

Map<String, dynamic> _$CustomerCreateResponseDataToJson(
        CustomerCreateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerGetResponse _$CustomerGetResponseFromJson(Map<String, dynamic> json) {
  return CustomerGetResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CustomerGetResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerGetResponseToJson(
        CustomerGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerGetResponseData _$CustomerGetResponseDataFromJson(
    Map<String, dynamic> json) {
  return CustomerGetResponseData()
    ..id = json['id'] as String
    ..data = json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>)
    ..createAt = json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String)
    ..updateAt = json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String);
}

Map<String, dynamic> _$CustomerGetResponseDataToJson(
        CustomerGetResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerSearchResponse _$CustomerSearchResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : CustomerResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CustomerSearchResponseToJson(
        CustomerSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerAddressCreateResponse _$CustomerAddressCreateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CustomerAddressCreateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerAddressCreateResponseToJson(
        CustomerAddressCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerAddressCreateResponseData _$CustomerAddressCreateResponseDataFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressCreateResponseData()
    ..id = json['id'] as String
    ..data = json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>)
    ..createAt = json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String)
    ..updateAt = json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String);
}

Map<String, dynamic> _$CustomerAddressCreateResponseDataToJson(
        CustomerAddressCreateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerAddressUpdateResponse _$CustomerAddressUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressUpdateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CustomerAddressUpdateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerAddressUpdateResponseToJson(
        CustomerAddressUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerAddressUpdateResponseData _$CustomerAddressUpdateResponseDataFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressUpdateResponseData()
    ..id = json['id'] as String
    ..data = json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>)
    ..createAt = json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String)
    ..updateAt = json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String);
}

Map<String, dynamic> _$CustomerAddressUpdateResponseDataToJson(
        CustomerAddressUpdateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerPaymentTypeCreateResponse _$CustomerPaymentTypeCreateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerPaymentTypeCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CustomerPaymentTypeCreateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerPaymentTypeCreateResponseToJson(
        CustomerPaymentTypeCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerPaymentTypeCreateResponseData
    _$CustomerPaymentTypeCreateResponseDataFromJson(Map<String, dynamic> json) {
  return CustomerPaymentTypeCreateResponseData()
    ..id = json['id'] as String
    ..data = json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>)
    ..createAt = json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String)
    ..updateAt = json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String);
}

Map<String, dynamic> _$CustomerPaymentTypeCreateResponseDataToJson(
        CustomerPaymentTypeCreateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerPaymentTypeUpdateResponse _$CustomerPaymentTypeUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerPaymentTypeUpdateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CustomerPaymentTypeUpdateResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerPaymentTypeUpdateResponseToJson(
        CustomerPaymentTypeUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerPaymentTypeUpdateResponseData
    _$CustomerPaymentTypeUpdateResponseDataFromJson(Map<String, dynamic> json) {
  return CustomerPaymentTypeUpdateResponseData()
    ..id = json['id'] as String
    ..data = json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>)
    ..createAt = json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String)
    ..updateAt = json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String);
}

Map<String, dynamic> _$CustomerPaymentTypeUpdateResponseDataToJson(
        CustomerPaymentTypeUpdateResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerDeleteResponse _$CustomerDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerDeleteResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'];
}

Map<String, dynamic> _$CustomerDeleteResponseToJson(
        CustomerDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerAddressDeleteResponse _$CustomerAddressDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerAddressDeleteResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'];
}

Map<String, dynamic> _$CustomerAddressDeleteResponseToJson(
        CustomerAddressDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerUpdateResponse _$CustomerUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerUpdateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'];
}

Map<String, dynamic> _$CustomerUpdateResponseToJson(
        CustomerUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerPaymentTypeDeleteResponse _$CustomerPaymentTypeDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return CustomerPaymentTypeDeleteResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'];
}

Map<String, dynamic> _$CustomerPaymentTypeDeleteResponseToJson(
        CustomerPaymentTypeDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerResponseData _$CustomerResponseDataFromJson(Map<String, dynamic> json) {
  return CustomerResponseData(
    id: json['id'] as String,
    data: json['data'] == null
        ? null
        : CustomerDataContainer.fromJson(json['data'] as Map<String, dynamic>),
    createAt: json['create_at'] == null
        ? null
        : DateTime.parse(json['create_at'] as String),
    updateAt: json['update_at'] == null
        ? null
        : DateTime.parse(json['update_at'] as String),
  );
}

Map<String, dynamic> _$CustomerResponseDataToJson(
        CustomerResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'create_at': instance.createAt?.toIso8601String(),
      'update_at': instance.updateAt?.toIso8601String(),
    };

CustomerDataContainer _$CustomerDataContainerFromJson(
    Map<String, dynamic> json) {
  return CustomerDataContainer(
    customer: json['customer'] == null
        ? null
        : Customer.fromJson(json['customer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CustomerDataContainerToJson(
        CustomerDataContainer instance) =>
    <String, dynamic>{
      'customer': instance.customer,
    };

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
    description: json['description'] as String,
    defaults: json['defaults'] == null
        ? null
        : CustomerDefaults.fromJson(json['defaults'] as Map<String, dynamic>),
    payments: json['payments'] == null
        ? null
        : CustomerPayments.fromJson(json['payments'] as Map<String, dynamic>),
    addresses: (json['addresses'] as List)
        ?.map((e) => e == null
            ? null
            : CustomerAddress.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    flags: (json['flags'] as List)?.map((e) => e as String)?.toList(),
    notes: json['notes'] as String,
  );
}

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'description': instance.description,
      'defaults': instance.defaults,
      'payments': instance.payments,
      'addresses': instance.addresses,
      'flags': instance.flags,
      'notes': instance.notes,
    };

CustomerPayments _$CustomerPaymentsFromJson(Map<String, dynamic> json) {
  return CustomerPayments(
    cards: (json['cards'] as List)
        ?.map((e) =>
            e == null ? null : CustomerCard.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    ach: (json['ach'] as List)
        ?.map((e) =>
            e == null ? null : CustomerACH.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CustomerPaymentsToJson(CustomerPayments instance) =>
    <String, dynamic>{
      'cards': instance.cards,
      'ach': instance.ach,
    };

CustomerDefaults _$CustomerDefaultsFromJson(Map<String, dynamic> json) {
  return CustomerDefaults(
    billingAddressId: json['billing_address_id'] as String,
    shippingAddressId: json['shipping_address_id'] as String,
    paymentMethodType: json['payment_method_type'] as String,
    paymentMethodId: json['payment_method_id'] as String,
  );
}

Map<String, dynamic> _$CustomerDefaultsToJson(CustomerDefaults instance) =>
    <String, dynamic>{
      'billing_address_id': instance.billingAddressId,
      'shipping_address_id': instance.shippingAddressId,
      'payment_method_type': instance.paymentMethodType,
      'payment_method_id': instance.paymentMethodId,
    };
