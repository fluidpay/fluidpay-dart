// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerRequest _$CustomerRequestFromJson(Map<String, dynamic> json) {
  return CustomerRequest(
    id: json['id'] as String,
    paymentMethodType: json['paymentMethodType'] as String,
    paymentMethodID: json['paymentMethodID'] as String,
    billingAddressID: json['billingAddressID'] as String,
    shippingAddressID: json['shippingAddressID'] as String,
  );
}

Map<String, dynamic> _$CustomerRequestToJson(CustomerRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentMethodType': instance.paymentMethodType,
      'paymentMethodID': instance.paymentMethodID,
      'billingAddressID': instance.billingAddressID,
      'shippingAddressID': instance.shippingAddressID,
    };
