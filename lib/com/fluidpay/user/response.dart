import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ForgotUsernameResponse extends Responsable {
ForgotUsernameResponse();
factory ForgotUsernameResponse.fromJson(Map<String, dynamic> json) =>
    _$ForgotUsernameResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ForgotPasswordResponse extends Responsable {
ForgotPasswordResponse();
factory ForgotPasswordResponse.fromJson(Map<String, dynamic> json) =>
    _$ForgotPasswordResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ForgotPasswordResetResponse extends Responsable {
ForgotPasswordResetResponse();
factory ForgotPasswordResetResponse.fromJson(Map<String, dynamic> json) =>
    _$ForgotPasswordResetResponseFromJson(json);
}