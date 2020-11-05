import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Contact extends Decodable {
  String id;
  String firstName;
  String lastName;
  String company;
  @JsonKey(name: 'address_line_1')
  String addressLine1;
  @JsonKey(name: 'address_line_2')
  String addressLine2;
  String city;
  String state;
  String postalCode;
  String country;
  String phone;
  String fax;
  String email;

  Contact(
      {this.id,
      this.firstName,
      this.lastName,
      this.company,
      this.addressLine1,
      this.addressLine2,
      this.city,
      this.state,
      this.postalCode,
      this.country,
      this.phone,
      this.fax,
      this.email});

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BillingDetails extends Decodable {
  @JsonKey(name: 'ach')
  ACHDetails achDetails;

  BillingDetails(this.achDetails);

  factory BillingDetails.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BillingDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHDetails extends Decodable {
  String type;
  String routingNumber;
  String accountNumber;
  String maskedAccountNumber;
  String accountType;

  ACHDetails(
      {this.type,
      this.routingNumber,
      this.accountNumber,
      this.maskedAccountNumber,
      this.accountType});

  factory ACHDetails.fromJson(Map<String, dynamic> json) =>
      _$ACHDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreateUser extends Decodable {
  String username;
  String name;
  String phone;
  String email;
  String password;
  UserStatus status;
  UserRole role;
  String sendWelcome;
  String createApiKey;
  String createPubApiKey;

  CreateUser(
      {this.username,
      this.name,
      this.phone,
      this.email,
      this.password,
      this.status,
      this.role,
      this.sendWelcome,
      this.createApiKey,
      this.createPubApiKey});

  factory CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreateUserToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Permissions extends Decodable {
  bool supportBlindCredits;
  bool allowRuleEngineAccess;
  bool allowInvoiceAccess;
  bool allowCustomerVaultAccess;
  bool allowRecurringBilling_access;
  bool allowCart_access;
  bool allowDeveloperHubLink;
  bool allowAdvancedFields;
  bool enableTerminalDebitTransactions;
  bool allowDefaultsPopulation;
  bool allowBillingAccess;
  bool allowDashboardStats;
  bool allowFileBatch;
  bool allowCardSync;
  bool allowIbxBinLookup;

  Permissions({
    this.supportBlindCredits,
    this.allowRuleEngineAccess,
    this.allowInvoiceAccess,
    this.allowCustomerVaultAccess,
    this.allowRecurringBilling_access,
    this.allowCart_access,
    this.allowDeveloperHubLink,
    this.allowAdvancedFields,
    this.enableTerminalDebitTransactions,
    this.allowDefaultsPopulation,
    this.allowBillingAccess,
    this.allowDashboardStats,
    this.allowFileBatch,
    this.allowCardSync,
    this.allowIbxBinLookup,
  });

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AdminFlags extends Decodable {
  bool perProcessorBilling;
  bool cashDiscountEnabled;
  bool surchargeEnabled;
  bool splitPaymentAdjustment;
  bool surchargeFallback;
  bool genericCashDiscount;
  bool skipBilling;
  bool itFallback;

  AdminFlags({
    this.perProcessorBilling,
    this.cashDiscountEnabled,
    this.surchargeEnabled,
    this.splitPaymentAdjustment,
    this.surchargeFallback,
    this.genericCashDiscount,
    this.skipBilling,
    this.itFallback,
  });

  factory AdminFlags.fromJson(Map<String, dynamic> json) =>
      _$AdminFlagsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminFlagsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Services extends Decodable {
  String id;
  String type;
  String status;
  dynamic data;
  String createdAt;
  String updatedAt;
  String activatedAt;
  String deactivatedAt;
  String agreementUrl;

  Services({
    this.id,
    this.type,
    this.status,
    this.data,
    this.createdAt,
    this.updatedAt,
    this.activatedAt,
    this.deactivatedAt,
    this.agreementUrl,
  });

  factory Services.fromJson(Map<String, dynamic> json) =>
      _$ServicesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}

enum UserStatus {
  @JsonValue('active')
  active,
  @JsonValue('disabled')
  disabled,
}

enum UserRole {
  @JsonValue('admin')
  admin,
  @JsonValue('standard')
  standard,
}

enum MerchantAction {
  @JsonValue('enable')
  Enable,
  @JsonValue('disable')
  Disable,
  @JsonValue('suspend')
  Suspend,
}

abstract class QuerySearchParam<Value> extends Decodable {
  SearchOperator operator;
  Value value;

  QuerySearchParam(this.operator, this.value);
}

@JsonSerializable()
class QuerySearchParamString extends QuerySearchParam<String> {
  QuerySearchParamString({SearchOperator operator, String value})
      : super(operator, value);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamStringToJson(this);

  factory QuerySearchParamString.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamStringFromJson(json);
}

@JsonSerializable()
class QuerySearchParamInt extends QuerySearchParam<int> {
  QuerySearchParamInt({SearchOperator operator, int value})
      : super(operator, value);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamIntToJson(this);

  factory QuerySearchParamInt.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamIntFromJson(json);
}

enum SearchOperator {
  @JsonValue('=')
  equals,
  @JsonValue('!=')
  notEquals,
  @JsonValue('%')
  like,
  @JsonValue('>')
  greaterThan,
  @JsonValue('<')
  lessThan,
}

@JsonSerializable(fieldRename: FieldRename.snake)
class QuerySearchParamDateRange extends Decodable {
  DateTime startDate;
  DateTime endDate;

  QuerySearchParamDateRange({this.startDate, this.endDate});

  factory QuerySearchParamDateRange.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamDateRangeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamDateRangeToJson(this);
}
