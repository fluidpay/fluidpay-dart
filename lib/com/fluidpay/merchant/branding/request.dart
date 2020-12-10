import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/branding/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class BrandingGetRequest extends Searchable<BrandingGetResponse> {
  String merchantId;

  @override
  String getUrl() =>
      '/merchant/branding/$merchantId';

  @override
  Method getRequestMethod() => Method.GET;

  BrandingGetRequest({this.merchantId}) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
  }

  @override
  BrandingGetResponse buildResponse(Map<String, dynamic> json) {
    return BrandingGetResponse.fromJson(json);
  }
}