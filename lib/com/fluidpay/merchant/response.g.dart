// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchantGetResponse _$MerchantGetResponseFromJson(Map<String, dynamic> json) {
  return MerchantGetResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : MerchantData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MerchantGetResponseToJson(
        MerchantGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

MerchantData _$MerchantDataFromJson(Map<String, dynamic> json) {
  return MerchantData()
    ..merchantId = json['id'] as String
    ..partnerId = json['partner_id'] as String
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..website = json['website'] as String
    ..phone = json['phone'] as String
    ..phoneExt = json['phone_ext'] as String
    ..receiptEmail = json['receipt_email'] as String
    ..timezone = json['timezone'] as String
    ..status = json['status'] as String
    ..feeScheduleId = json['fee_schedule_id'] as String
    ..logoUrl = json['logo_url'] as String
    ..permissions = json['permissions'] == null
        ? null
        : Permissions.fromJson(json['permissions'] as Map<String, dynamic>)
    ..flags = json['flags'] == null
        ? null
        : AdminFlags.fromJson(json['flags'] as Map<String, dynamic>)
    ..requireds = (json['requireds'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Requireds.fromJson(e as Map<String, dynamic>)),
    )
    ..defaultValues = json['default_values'] == null
        ? null
        : DefaultValues.fromJson(json['default_values'] as Map<String, dynamic>)
    ..primaryContact = json['primary_contact'] == null
        ? null
        : Contact.fromJson(json['primary_contact'] as Map<String, dynamic>)
    ..billingContact = json['billing_contact'] == null
        ? null
        : Contact.fromJson(json['billing_contact'] as Map<String, dynamic>)
    ..billingDetails = json['billing_details'] == null
        ? null
        : BillingDetails.fromJson(
            json['billing_details'] as Map<String, dynamic>)
    ..parentStructure = (json['parent_structure'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..tosAcceptedBy = json['tos_accepted_by'] as String
    ..tosAcceptedByUsername = json['tos_accepted_by_username'] as String
    ..services = (json['services'] as List)
        ?.map((e) =>
            e == null ? null : Services.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..createdAt = json['created_at'] as String
    ..tosLastAcceptedAt = json['tos_last_accepted_at'] as String;
}

Map<String, dynamic> _$MerchantDataToJson(MerchantData instance) =>
    <String, dynamic>{
      'id': instance.merchantId,
      'partner_id': instance.partnerId,
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'website': instance.website,
      'phone': instance.phone,
      'phone_ext': instance.phoneExt,
      'receipt_email': instance.receiptEmail,
      'timezone': instance.timezone,
      'status': instance.status,
      'fee_schedule_id': instance.feeScheduleId,
      'logo_url': instance.logoUrl,
      'permissions': instance.permissions,
      'flags': instance.flags,
      'requireds': instance.requireds,
      'default_values': instance.defaultValues,
      'primary_contact': instance.primaryContact,
      'billing_contact': instance.billingContact,
      'billing_details': instance.billingDetails,
      'parent_structure': instance.parentStructure,
      'tos_accepted_by': instance.tosAcceptedBy,
      'tos_accepted_by_username': instance.tosAcceptedByUsername,
      'services': instance.services,
      'created_at': instance.createdAt,
      'tos_last_accepted_at': instance.tosLastAcceptedAt,
    };
