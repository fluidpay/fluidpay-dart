import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:fluidpay/com/fluidpay/merchant/defaults/defaults.dart';
import 'package:fluidpay/com/fluidpay/merchant/notifications/notifications.dart';
import 'package:fluidpay/com/fluidpay/merchant/requireds/requireds.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantCreateResponse extends Responsable<MerchantCreateResponseData> {
  MerchantCreateResponse();

  factory MerchantCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantUpdateResponse extends Responsable<MerchantResponseData> {
  MerchantUpdateResponse();

  factory MerchantUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantStatusSearchResponse extends Responsable<MerchantResponseData> {
  MerchantStatusSearchResponse();

  factory MerchantStatusSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantStatusSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantStatusSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantSearchResponse extends Responsable<List<MerchantResponseData>> {
  MerchantSearchResponse();

  factory MerchantSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantConsentSearchResponse
    extends Responsable<MerchantConsentSearchResponseData> {
  MerchantConsentSearchResponse();

  factory MerchantConsentSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantConsentSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantConsentSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantUserCreateResponse
    extends Responsable<MerchantUserCreateResponseData> {
  MerchantUserCreateResponse();

  factory MerchantUserCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantUserCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantUserCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantRequiredsUpdateResponse
    extends Responsable<MerchantResponseData> {
  MerchantRequiredsUpdateResponse();

  factory MerchantRequiredsUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantRequiredsUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$MerchantRequiredsUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantDefaultsUpdateResponse extends Responsable<MerchantResponseData> {
  MerchantDefaultsUpdateResponse();

  factory MerchantDefaultsUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$MerchantDefaultsUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MerchantDefaultsUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantCreateResponseData extends Decodable {
  @JsonKey(name: 'id')
  String merchantID;
  String partnerID;
  String name;
  String description;
  String website;
  String phone;
  String phoneExt;
  String receiptEmail;
  String timezone;
  String status;
  String feeScheduleId;
  String logoUrl;
  Contact primaryContact;
  Contact billingContact;
  BillingDetails billingDetails;
  String apiKey;
  String pubApiKey;
  String tosAcceptedBy;
  String tosAcceptedByUsername;
  String createdAt;
  String tosLastAcceptedAt;

  MerchantCreateResponseData();

  factory MerchantCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$MerchantCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantCreateResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantResponseData extends Decodable {
  @JsonKey(name: 'id')
  String merchantId;
  String partnerID;
  String type;
  String name;
  String description;
  String website;
  String phone;
  String phoneExt;
  String receiptEmail;
  String timezone;
  String status;
  String feeScheduleId;
  String logoUrl;
  Permissions permissions;
  AdminFlags flags;
  Map<String, Requireds> requireds;
  DefaultValues defaultValues;
  Contact primaryContact;
  Contact billingContact;
  BillingDetails billingDetails;
  Map<String, String> parentStructure;
  String tosAcceptedBy;
  String tosAcceptedByUsername;
  List<Services> services;
  String createdAt;
  String tosLastAcceptedAt;

  MerchantResponseData();

  factory MerchantResponseData.fromJson(Map<String, dynamic> json) =>
      _$MerchantResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantConsentSearchResponseData extends Decodable {
  bool consentRequired;
  bool tangible;
  bool nonTangible;
  bool freeTrialContinuity;
  bool continuityOnly;
  bool straightSale;
  String mcc;

  MerchantConsentSearchResponseData();

  factory MerchantConsentSearchResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$MerchantConsentSearchResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$MerchantConsentSearchResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantUserCreateResponseData extends Decodable {
  String id;
  String username;
  String name;
  String phone;
  String email;
  String status;
  String role;
  String accountType;
  String accountTypeId;
  dynamic permissions;
  Notifications notifications;
  dynamic defaults;
  bool twoFactorEnabled;
  String createdAt;
  String updatedAt;

  MerchantUserCreateResponseData();

  factory MerchantUserCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$MerchantUserCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantUserCreateResponseDataToJson(this);
}
