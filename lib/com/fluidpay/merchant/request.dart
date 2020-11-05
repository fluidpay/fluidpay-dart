import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:fluidpay/com/fluidpay/merchant/defaults/defaults.dart';
import 'package:fluidpay/com/fluidpay/merchant/requireds/requireds.dart';
import 'package:fluidpay/com/fluidpay/merchant/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

// TODO add MerchantLogoPost

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantCreateRequest extends Creatable<MerchantCreateResponse> {
  String partnerId;
  String name;
  String description;
  String website;
  String phone;
  String phoneExt;
  String receiptEmail;
  String timezone;
  String feeScheduleId;
  Contact primaryContact;
  Contact billingContact;
  @JsonKey(name: 'billing')
  BillingDetails billingDetails;
  String user;
  @JsonKey(name: 'accept_tos')
  String acceptTOS;
  String inheritCustomOutputs;

  @override
  Map<String, dynamic> toJson() => _$MerchantCreateRequestToJson(this);

  @override
  String getUrl() => '/merchant';

  @override
  MerchantCreateResponse buildResponse(Map<String, dynamic> json) {
    return MerchantCreateResponse.fromJson(json);
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantUpdateRequest extends Updatable<MerchantUpdateResponse> {
  String id;
  String name;
  String description;
  String website;
  String phone;
  String phoneExt;
  String receiptEmail;
  String timezone;
  String feeScheduleId;
  Contact primaryContact;
  Contact billingContact;
  @JsonKey(name: 'billing')
  BillingDetails billingDetails;
  Permissions permissions;
  AdminFlags flags;

  MerchantUpdateRequest(
      {this.id,
      this.name,
      this.description,
      this.website,
      this.phone,
      this.phoneExt,
      this.receiptEmail,
      this.timezone,
      this.feeScheduleId,
      this.primaryContact,
      this.billingContact,
      this.billingDetails,
      this.permissions,
      this.flags});

  @override
  MerchantUpdateResponse buildResponse(Map<String, dynamic> json) =>
      MerchantUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${id}';

  @override
  Map<String, dynamic> toJson() => _$MerchantUpdateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantStatusSearchRequest
    extends Searchable<MerchantStatusSearchResponse> {
  String merchantId;
  String action;

  MerchantStatusSearchRequest({this.merchantId, this.action});

  @override
  MerchantStatusSearchResponse buildResponse(Map<String, dynamic> json) =>
      MerchantStatusSearchResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/status/${action}';

  @override
  Map<String, dynamic> toJson() => _$MerchantStatusSearchRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantSearchRequest extends Searchable<MerchantSearchResponse> {
  bool directOnly;
  QuerySearchParamString name;
  int offset;
  int limit;

  MerchantSearchRequest({
    this.directOnly,
    this.name,
    this.offset,
    this.limit,
  });

  @override
  MerchantSearchResponse buildResponse(Map<String, dynamic> json) =>
      MerchantSearchResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/search';

  @override
  Map<String, dynamic> toJson() => _$MerchantSearchRequestToJson(this);
}

class MerchantConsentSearchRequest
    extends Searchable<MerchantConsentSearchResponse> {
  @override
  String getUrl() => '/merchant/consent';

  MerchantConsentSearchRequest();

  @override
  MerchantConsentSearchResponse buildResponse(Map<String, dynamic> json) {
    return MerchantConsentSearchResponse.fromJson(json);
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantUserCreateRequest extends Creatable<MerchantUserCreateResponse> {
  String id;
  String username;
  String name;
  String phone;
  String email;
  String status;
  String role;
  dynamic defaults;

  MerchantUserCreateRequest({
    this.id,
    this.username,
    this.name,
    this.phone,
    this.email,
    this.status,
    this.role,
    this.defaults,
  });

  @override
  MerchantUserCreateResponse buildResponse(Map<String, dynamic> json) =>
      MerchantUserCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${id}/user';

  @override
  Map<String, dynamic> toJson() => _$MerchantUserCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantRequiredsUpdateRequest
    extends Updatable<MerchantRequiredsUpdateResponse> {
  String id;
  Map<String, Requireds> requireds;

  MerchantRequiredsUpdateRequest({
    this.id,
    this.requireds,
  });

  @override
  MerchantRequiredsUpdateResponse buildResponse(Map<String, dynamic> json) =>
      MerchantRequiredsUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${id}/requireds';

  @override
  Map<String, dynamic> toJson() => _$MerchantRequiredsUpdateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantDefaultsUpdateRequest
    extends Updatable<MerchantDefaultsUpdateResponse> {
  String id;
  DefaultValues defaultValues;

  MerchantDefaultsUpdateRequest({this.id, this.defaultValues});

  @override
  MerchantDefaultsUpdateResponse buildResponse(Map<String, dynamic> json) =>
      MerchantDefaultsUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${id}/defaults';

  @override
  Map<String, dynamic> toJson() => _$MerchantDefaultsUpdateRequestToJson(this);
}
