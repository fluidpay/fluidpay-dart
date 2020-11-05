import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notifications.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Notifications extends Decodable {
  MerchantNotifications merchantNotifications;
  PartnerNotifications partnerNotifications;
  AdminNotifications adminNotifications;

  Notifications({
    this.merchantNotifications,
    this.partnerNotifications,
    this.adminNotifications,
  });

  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NotificationsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantNotifications extends Decodable {
  bool transactionReceipts;
  bool settlementReports;
  bool triggeredRules;

  MerchantNotifications({
    this.transactionReceipts,
    this.settlementReports,
    this.triggeredRules,
  });

  factory MerchantNotifications.fromJson(Map<String, dynamic> json) =>
      _$MerchantNotificationsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantNotificationsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PartnerNotifications extends Decodable {
  factory PartnerNotifications.fromJson(Map<String, dynamic> json) =>
      _$PartnerNotificationsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PartnerNotificationsToJson(this);

  PartnerNotifications();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AdminNotifications extends Decodable {
  factory AdminNotifications.fromJson(Map<String, dynamic> json) =>
      _$AdminNotificationsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminNotificationsToJson(this);

  AdminNotifications();
}
