// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserResponseData _$UserResponseDataFromJson(Map<String, dynamic> json) {
  return UserResponseData()
    ..id = json['id'] as String
    ..username = json['username'] as String
    ..name = json['name'] as String
    ..phone = json['phone'] as String
    ..email = json['email'] as String
    ..status = json['status'] as String
    ..role = json['role'] as String
    ..accountType = json['account_type'] as String
    ..accountTypeId = json['account_type_id'] as String
    ..permissions = json['permissions']
    ..notifications = json['notifications'] == null
        ? null
        : Notifications.fromJson(json['notifications'] as Map<String, dynamic>)
    ..defaults = json['defaults']
    ..twoFactorEnabled = json['two_factor_enabled'] as bool
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
}

Map<String, dynamic> _$UserResponseDataToJson(UserResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'status': instance.status,
      'role': instance.role,
      'account_type': instance.accountType,
      'account_type_id': instance.accountTypeId,
      'permissions': instance.permissions,
      'notifications': instance.notifications,
      'defaults': instance.defaults,
      'two_factor_enabled': instance.twoFactorEnabled,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

Notifications _$NotificationsFromJson(Map<String, dynamic> json) {
  return Notifications()
    ..merchant = json['merchant'] == null
        ? null
        : NotificationsDetails.fromJson(
            json['merchant'] as Map<String, dynamic>)
    ..partner = json['partner'] == null
        ? null
        : NotificationsDetails.fromJson(json['partner'] as Map<String, dynamic>)
    ..admin = json['admin'] == null
        ? null
        : NotificationsDetails.fromJson(json['admin'] as Map<String, dynamic>);
}

Map<String, dynamic> _$NotificationsToJson(Notifications instance) =>
    <String, dynamic>{
      'merchant': instance.merchant,
      'partner': instance.partner,
      'admin': instance.admin,
    };

NotificationsDetails _$NotificationsDetailsFromJson(Map<String, dynamic> json) {
  return NotificationsDetails()
    ..transactionReceipts = json['transaction_receipts'] as bool
    ..settlementReceipts = json['settlement_receipts'] as bool
    ..triggeredRules = json['triggered_rules'] as bool;
}

Map<String, dynamic> _$NotificationsDetailsToJson(
        NotificationsDetails instance) =>
    <String, dynamic>{
      'transaction_receipts': instance.transactionReceipts,
      'settlement_receipts': instance.settlementReceipts,
      'triggered_rules': instance.triggeredRules,
    };
