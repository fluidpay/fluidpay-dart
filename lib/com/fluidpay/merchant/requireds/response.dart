import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class RequiredsUpdateResponse extends Responsable<MerchantData> {
  factory RequiredsUpdateResponse.fromJson(Map<String, dynamic> json) => _$RequiredsUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RequiredsUpdateResponseToJson(this);

  RequiredsUpdateResponse();
}
