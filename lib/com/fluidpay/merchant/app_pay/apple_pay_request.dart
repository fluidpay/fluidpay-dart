import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/app_pay/apple_pay_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apple_pay_request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayCreateRequest extends Creatable<ApplePayResponse> {
  String applePayMerchantId;
  String displayName;
  String domainName;
  String processingCertificate;
  String processingCertificateKey;
  String merchantCertificate;
  String merchantCertificateKey;

  ApplePayCreateRequest({
    this.applePayMerchantId,
    this.displayName,
    this.domainName,
    this.processingCertificate,
    this.processingCertificateKey,
    this.merchantCertificate,
    this.merchantCertificateKey,
  });

  @override
  Map<String, dynamic> toJson() => _$ApplePayCreateRequestToJson(this);

  @override
  String getUrl() => '/merchant/apple-pay';

  @override
  ApplePayResponse buildResponse(Map<String, dynamic> json) {
    return ApplePayResponse.fromJson(json);
  }
}

class ApplePaySearchRequest extends Searchable<ApplePaySearchResponse> {
  String id;

  @override
  String getUrl() => id?.isNotEmpty == true
      ? '/merchant/apple-pay/$id'
      : '/merchant/apple-pay';

  ApplePaySearchRequest({this.id});

  @override
  ApplePaySearchResponse buildResponse(Map<String, dynamic> json) {
    return ApplePaySearchResponse.fromJson(json);
  }
}

@JsonSerializable()
class ApplePayDeleteRequest extends Deletable<ApplePayDeleteResponse> {
  String id;

  ApplePayDeleteRequest(this.id);

  @override
  ApplePayDeleteResponse buildResponse(Map<String, dynamic> json) =>
      ApplePayDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/apple-pay/${id}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayUpdateRequest extends Updatable<ApplePayUpdateResponse> {
  String id;
  String applePayMerchantId;
  String displayName;
  String domainName;
  String processingCertificate;
  String processingCertificateKey;
  String merchantCertificate;
  String merchantCertificateKey;

  ApplePayUpdateRequest({
    this.id,
    this.applePayMerchantId,
    this.displayName,
    this.domainName,
    this.processingCertificate,
    this.processingCertificateKey,
    this.merchantCertificate,
    this.merchantCertificateKey,
  });

  @override
  ApplePayUpdateResponse buildResponse(Map<String, dynamic> json) =>
      ApplePayUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}';

  @override
  Map<String, dynamic> toJson() => _$ApplePayUpdateRequestToJson(this);
}
