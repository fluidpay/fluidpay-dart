// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) {
  return CustomerResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : CustomerResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CustomerResponseData _$CustomerResponseDataFromJson(Map<String, dynamic> json) {
  return CustomerResponseData()
    ..id = json['id'] as String?
    ..paymentMethodType = json['paymentMethodType'] as String?
    ..paymentMethodID = json['paymentMethodID'] as String?
    ..billingAddressID = json['billingAddressID'] as String?
    ..shippingAddressID = json['shippingAddressID'] as String?;
}

Map<String, dynamic> _$CustomerResponseDataToJson(
        CustomerResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentMethodType': instance.paymentMethodType,
      'paymentMethodID': instance.paymentMethodID,
      'billingAddressID': instance.billingAddressID,
      'shippingAddressID': instance.shippingAddressID,
    };
