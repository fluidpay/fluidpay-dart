import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/user/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ForgotUsernameRequest extends Updatable<ForgotUsernameResponse> {
  String email;

  ForgotUsernameRequest({this.email});

  @override
  ForgotUsernameResponse buildResponse(Map<String, dynamic> json) =>
      ForgotUsernameResponse.fromJson(json);

  @override
  String getUrl() => '/user/forgot-username';

  @override
  Map<String, dynamic> toJson() => _$ForgotUsernameRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ForgotPasswordRequest extends Updatable<ForgotPasswordResponse> {
  String username;

  ForgotPasswordRequest({this.username});

  @override
  ForgotPasswordResponse buildResponse(Map<String, dynamic> json) =>
      ForgotPasswordResponse.fromJson(json);

  @override
  String getUrl() => '/user/forgot-password';
  @override
  Map<String, dynamic> toJson() => _$ForgotPasswordRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ForgotPasswordResetRequest extends Updatable<ForgotPasswordResetResponse> {
  String username;
  String resetCode;
  String password;

  ForgotPasswordResetRequest({this.username, this.resetCode, this.password});

  @override
  ForgotPasswordResetResponse buildResponse(Map<String, dynamic> json) =>
      ForgotPasswordResetResponse.fromJson(json);

  @override
  String getUrl() => '/user/forgot-password/reset';
  @override
  Map<String, dynamic> toJson() => _$ForgotPasswordResetRequestToJson(this);
}