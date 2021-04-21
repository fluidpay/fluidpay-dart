// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceBillTo _$InvoiceBillToFromJson(Map<String, dynamic> json) {
  return InvoiceBillTo(
    id: json['id'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    company: json['company'] as String?,
    addressLine1: json['address_line_1'] as String?,
    addressLine2: json['address_line_2'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    postalCode: json['postal_code'] as String?,
    country: json['country'] as String?,
    phone: json['phone'] as String?,
    fax: json['fax'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$InvoiceBillToToJson(InvoiceBillTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
    };

InvoicePayableTo _$InvoicePayableToFromJson(Map<String, dynamic> json) {
  return InvoicePayableTo(
    id: json['id'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    company: json['company'] as String?,
    addressLine1: json['address_line_1'] as String?,
    addressLine2: json['address_line_2'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    postalCode: json['postal_code'] as String?,
    country: json['country'] as String?,
    phone: json['phone'] as String?,
    fax: json['fax'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$InvoicePayableToToJson(InvoicePayableTo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
    };
