import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/user/response_data.dart';
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

@JsonSerializable(fieldRename: FieldRename.snake)
class UserGetResponse extends Responsable<UserResponseData> {
  UserGetResponse();
  factory UserGetResponse.fromJson(Map<String, dynamic> json) =>
      _$UserGetResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserPasswordChangeResponse extends Responsable {
  UserPasswordChangeResponse();
  factory UserPasswordChangeResponse.fromJson(Map<String, dynamic> json) =>
      _$UserPasswordChangeResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserSetTotpResponse extends Responsable {
  UserSetTotpResponse();
  factory UserSetTotpResponse.fromJson(Map<String, dynamic> json) =>
      _$UserSetTotpResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserRemoveTotpResponse extends Responsable {
  UserRemoveTotpResponse();
  factory UserRemoveTotpResponse.fromJson(Map<String, dynamic> json) =>
      _$UserRemoveTotpResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserCreateResponse extends Responsable<UserResponseData> {
  UserCreateResponse();
  factory UserCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$UserCreateResponseFromJson(json);
}

@JsonSerializable()
class UserUpdateResponse extends Responsable {
  UserUpdateResponse();
  factory UserUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateResponseFromJson(json);
}

@JsonSerializable()
class UsersResponse extends Responsable<List<UserResponseData>> {
  UsersResponse();
  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
}

@JsonSerializable()
class UserLoginAsResponse extends Responsable {
  UserLoginAsResponse();
  factory UserLoginAsResponse.fromJson(Map<String, dynamic> json) =>
      _$UserLoginAsResponseFromJson(json);
}

@JsonSerializable()
class UserDeleteResponse extends Responsable {
  UserDeleteResponse();
  factory UserDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDeleteResponseFromJson(json);
}

@JsonSerializable()
class UserCopyResponse extends Responsable<UserResponseData> {
  UserCopyResponse();
  factory UserCopyResponse.fromJson(Map<String, dynamic> json) =>
      _$UserCopyResponseFromJson(json);
}

@JsonSerializable()
class UserResendWelcomeEmailResponse extends Responsable<UserResponseData> {
  UserResendWelcomeEmailResponse();
  factory UserResendWelcomeEmailResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResendWelcomeEmailResponseFromJson(json);
}