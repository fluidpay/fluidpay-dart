import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class MerchantGetRequest extends Searchable<MerchantGetResponse> {
  @override
  MerchantGetResponse buildResponse(Map<String, dynamic> json) =>
      MerchantGetResponse.fromJson(json);

  @override
  String getUrl() => '/merchant';

  @override
  Method getRequestMethod() => Method.GET;
}