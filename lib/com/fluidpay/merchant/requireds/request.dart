import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:fluidpay/com/fluidpay/merchant/requireds/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RequiredsUpdateRequest extends Updatable<RequiredsUpdateResponse> {
  @JsonKey(ignore: true)
  String? merchantID;
  @JsonKey()
  Map<String, Requireds>? requireds;

  RequiredsUpdateRequest(
      {this.merchantID, this.requireds});

  @override
  RequiredsUpdateResponse buildResponse(Map<String, dynamic> json) => RequiredsUpdateResponse.fromJson(json);

  @override
  String getPath() => '/merchant/$merchantID/requireds';

  @override
  Map<String, dynamic> toJson() => requireds as Map<String, dynamic>;
}
