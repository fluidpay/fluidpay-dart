import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_data.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserResponseData extends Decodable {
  String? id;
  String? username;
  String? name;
  String? phone;
  String? email;
  String? status;
  String? role;
  String? accountType;
  String? accountTypeId;
  dynamic? permissions;
  Notifications? notifications;
  dynamic? defaults;
  bool? twoFactorEnabled;
  DateTime? createdAt;
  DateTime? updatedAt;


  UserResponseData();
  factory UserResponseData.fromJson(Map<String, dynamic> json) =>
      _$UserResponseDataFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$UserResponseDataToJson(this);
}

@JsonSerializable()
class Notifications extends Decodable {
  NotificationsDetails? merchant;
  NotificationsDetails? partner;
  NotificationsDetails? admin;

  Notifications();
  factory Notifications.fromJson(Map<String, dynamic> json) =>
      _$NotificationsFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$NotificationsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NotificationsDetails extends Decodable {
  bool? transactionReceipts;
  bool? settlementReceipts;
  bool? triggeredRules;

  NotificationsDetails();
  factory NotificationsDetails.fromJson(Map<String, dynamic> json) =>
      _$NotificationsDetailsFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$NotificationsDetailsToJson(this);
}