// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MerchantGetResponse _$MerchantGetResponseFromJson(Map<String, dynamic> json) {
  return MerchantGetResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : MerchantData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$MerchantGetResponseToJson(MerchantGetResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

MerchantData _$MerchantDataFromJson(Map<String, dynamic> json) {
  return MerchantData()
    ..merchantId = json['id'] as String?
    ..partnerId = json['partner_id'] as String?
    ..type = json['type'] as String?
    ..name = json['name'] as String?
    ..description = json['description'] as String?
    ..website = json['website'] as String?
    ..phone = json['phone'] as String?
    ..phoneExt = json['phone_ext'] as String?
    ..receiptEmail = json['receipt_email'] as String?
    ..timezone = json['timezone'] as String?
    ..status = json['status'] as String?
    ..feeScheduleId = json['fee_schedule_id'] as String?
    ..logoUrl = json['logo_url'] as String?
    ..permissions = json['permissions'] == null
        ? null
        : Permissions.fromJson(json['permissions'] as Map<String, dynamic>)
    ..flags = json['flags'] == null
        ? null
        : AdminFlags.fromJson(json['flags'] as Map<String, dynamic>)
    ..requireds = (json['requireds'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Requireds.fromJson(e as Map<String, dynamic>)),
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
    ..parentStructure =
        (json['parent_structure'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..tosAcceptedBy = json['tos_accepted_by'] as String?
    ..tosAcceptedByUsername = json['tos_accepted_by_username'] as String?
    ..services = (json['services'] as List<dynamic>?)
        ?.map((e) => Services.fromJson(e as Map<String, dynamic>))
        .toList()
    ..createdAt = json['created_at'] as String?
    ..tosLastAcceptedAt = json['tos_last_accepted_at'] as String?;
}

Map<String, dynamic> _$MerchantDataToJson(MerchantData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.merchantId);
  writeNotNull('partner_id', instance.partnerId);
  writeNotNull('type', instance.type);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('website', instance.website);
  writeNotNull('phone', instance.phone);
  writeNotNull('phone_ext', instance.phoneExt);
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('status', instance.status);
  writeNotNull('fee_schedule_id', instance.feeScheduleId);
  writeNotNull('logo_url', instance.logoUrl);
  writeNotNull('permissions', instance.permissions);
  writeNotNull('flags', instance.flags);
  writeNotNull('requireds', instance.requireds);
  writeNotNull('default_values', instance.defaultValues);
  writeNotNull('primary_contact', instance.primaryContact);
  writeNotNull('billing_contact', instance.billingContact);
  writeNotNull('billing_details', instance.billingDetails);
  writeNotNull('parent_structure', instance.parentStructure);
  writeNotNull('tos_accepted_by', instance.tosAcceptedBy);
  writeNotNull('tos_accepted_by_username', instance.tosAcceptedByUsername);
  writeNotNull('services', instance.services);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('tos_last_accepted_at', instance.tosLastAcceptedAt);
  return val;
}
