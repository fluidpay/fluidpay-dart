import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/branding/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class BrandingCreateRequest extends Creatable<BrandingCreateResponse> {
  String id;
  String accountType;
  String accountTypeId;
  String styles;

  BrandingCreateRequest({
    this.id,
    this.accountType,
    this.accountTypeId,
    this.styles,
  });

  @override
  BrandingCreateResponse buildResponse(Map<String, dynamic> json) =>
      BrandingCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/branding';

  @override
  Map<String, dynamic> toJson() => _$BrandingCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BrandingUpdateRequest extends Updatable<BrandingUpdateResponse> {
  String id;
  String accountType;
  String accountTypeId;
  String styles;

  BrandingUpdateRequest({
    this.id,
    this.accountType,
    this.accountTypeId,
    this.styles,
  });

  @override
  BrandingUpdateResponse buildResponse(Map<String, dynamic> json) =>
      BrandingUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/branding';

  @override
  Map<String, dynamic> toJson() => _$BrandingUpdateRequestToJson(this);
}

@JsonSerializable()
class BrandingDeleteRequest extends Deletable<BrandingDeleteResponse> {
  String brandId;

  BrandingDeleteRequest({
    this.brandId,
  });

  @override
  BrandingDeleteResponse buildResponse(Map<String, dynamic> json) =>
      BrandingDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/branding/delete/${brandId}';
}
