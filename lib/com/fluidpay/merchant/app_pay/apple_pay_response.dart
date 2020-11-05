import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apple_pay_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayResponse extends Responsable<ApplePayResponseData> {
  ApplePayResponse();

  factory ApplePayResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplePayResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApplePayResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePaySearchResponse extends Responsable<List<ApplePayResponseData>> {
  ApplePaySearchResponse();

  factory ApplePaySearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplePaySearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApplePaySearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayDeleteResponse extends Responsable<dynamic> {
  ApplePayDeleteResponse();

  factory ApplePayDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplePayDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApplePayDeleteResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayUpdateResponse extends Responsable<ApplePayResponseData> {
  ApplePayUpdateResponse();

  factory ApplePayUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ApplePayUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ApplePayUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayResponseData extends Decodable {
  String id;
  String merchantId;
  String applePayMerchantId;
  String domainName;
  String displayName;
  String processingCertificate;
  String processingCertificateKey;
  String merchantCertificate;
  String merchantCertificateKey;

  ApplePayResponseData();

  factory ApplePayResponseData.fromJson(Map<String, dynamic> json) =>
      _$ApplePayResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ApplePayResponseDataToJson(this);
}
