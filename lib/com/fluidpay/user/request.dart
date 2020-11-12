import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
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
class ForgotPasswordResetRequest
    extends Updatable<ForgotPasswordResetResponse> {
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

@JsonSerializable()
class UserGetRequest extends Searchable<UserGetResponse> {
  @JsonKey(ignore: true)
  final String userId;

  UserGetRequest([this.userId]);

  @override
  UserGetResponse buildResponse(Map<String, dynamic> json) =>
      UserGetResponse.fromJson(json);

  @override
  String getUrl() => '/user${userId != null ? '/$userId' : ''}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserPasswordChangeRequest extends Updatable<UserPasswordChangeResponse> {
  String username;
  String currentPassword;
  String newPassword;

  UserPasswordChangeRequest(
      {this.username, this.currentPassword, this.newPassword});

  @override
  UserPasswordChangeResponse buildResponse(Map<String, dynamic> json) =>
      UserPasswordChangeResponse.fromJson(json);

  @override
  String getUrl() => '/user/change-password';

  @override
  Map<String, dynamic> toJson() => _$UserPasswordChangeRequestToJson(this);
}

@JsonSerializable()
class UserSetTotpRequest extends Updatable<UserSetTotpResponse> {
  @override
  UserSetTotpResponse buildResponse(Map<String, dynamic> json) =>
      UserSetTotpResponse.fromJson(json);

  @override
  String getUrl() => '/user/set-two-factor-auth';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserRemoveTotpRequest extends Deletable<UserRemoveTotpResponse> {
  String totp;
  String userId;

  UserRemoveTotpRequest({this.totp, this.userId});

  @override
  UserRemoveTotpResponse buildResponse(Map<String, dynamic> json) =>
      UserRemoveTotpResponse.fromJson(json);

  @override
  String getUrl() => '/user/remove-two-factor-auth';

  @override
  Map<String, dynamic> toJson() => _$UserRemoveTotpRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserCreateRequest extends Creatable<UserCreateResponse> {
  String username;
  String name;
  String phone;
  String email;
  String status;
  String role;
  dynamic defaults;

  UserCreateRequest({
    this.username,
    this.name,
    this.phone,
    this.email,
    this.status,
    this.role,
    this.defaults,
  });

  @override
  UserCreateResponse buildResponse(Map<String, dynamic> json) =>
      UserCreateResponse.fromJson(json);

  @override
  String getUrl() => '/user';

  @override
  Map<String, dynamic> toJson() => _$UserCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class UserUpdateRequest extends Updatable<UserUpdateResponse> {
  @JsonKey(ignore: true)
  String userId;
  String username;
  String name;
  String phone;
  String email;
  String status;
  String role;
  dynamic defaults;

  UserUpdateRequest({
    this.userId,
    this.username,
    this.name,
    this.phone,
    this.email,
    this.status,
    this.role,
    this.defaults,
  }) {
    if (userId?.isNotEmpty != true) {
      throw ArgumentError('userId must not be null or empty');
    }
  }

  @override
  UserUpdateResponse buildResponse(Map<String, dynamic> json) =>
      UserUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/user/$userId';

  @override
  Map<String, dynamic> toJson() => _$UserUpdateRequestToJson(this);
}

@JsonSerializable()
class UsersRequest extends Searchable<UsersResponse> {
  @JsonKey(ignore: true)
  final String accountType;
  @JsonKey(ignore: true)
  final String accountTypeId;

  UsersRequest({this.accountType, this.accountTypeId}) {
    if ((accountType == null) ^ (accountTypeId == null)) {
      throw ArgumentError(
          'accountType and accountTypeId both must be null or both must be filled');
    }

    if (accountType?.isEmpty == true) {
      throw ArgumentError('accountType must not be null');
    }
    if (accountTypeId?.isEmpty == true) {
      throw ArgumentError('accountTypeId must not be null');
    }
  }

  @override
  UsersResponse buildResponse(Map<String, dynamic> json) =>
      UsersResponse.fromJson(json);

  @override
  String getUrl() {
    if (accountType != null && accountTypeId != null) {
      return '/users/$accountType/$accountTypeId';
    }

    return '/users';
  }

  @override
  Map<String, dynamic> toJson() => _$UsersRequestToJson(this);
}

@JsonSerializable()
class UserLoginAsRequest extends Searchable<UserLoginAsResponse> {
  @JsonKey(ignore: true)
  final String userId;

  UserLoginAsRequest({this.userId}) {
    if (userId?.isNotEmpty != true) {
      throw ArgumentError('userId must not be null or empty');
    }
  }

  @override
  UserLoginAsResponse buildResponse(Map<String, dynamic> json) =>
      UserLoginAsResponse.fromJson(json);

  @override
  String getUrl() => '/user/loginas/$userId';
}

@JsonSerializable()
class UserDeleteRequest extends Deletable<UserDeleteResponse> {
  @JsonKey(ignore: true)
  final String userId;

  UserDeleteRequest({this.userId}) {
    if (userId?.isNotEmpty != true) {
      throw ArgumentError('userId must not be null or empty');
    }
  }

  @override
  UserDeleteResponse buildResponse(Map<String, dynamic> json) =>
      UserDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/user/$userId';
}

@JsonSerializable()
class UserCopyRequest extends Creatable<UserCopyResponse> {
  @JsonKey(ignore: true)
  final String userId;
  String username;
  String name;
  String phone;
  String email;
  String status;

  UserCopyRequest({
    this.userId,
    this.username,
    this.name,
    this.phone,
    this.email,
    this.status,
  }) {
    if (userId?.isNotEmpty != true) {
      throw ArgumentError('userId must not be null or empty');
    }
  }

  @override
  UserCopyResponse buildResponse(Map<String, dynamic> json) =>
      UserCopyResponse.fromJson(json);

  @override
  String getUrl() => '/user/$userId/copy';

  @override
  Map<String, dynamic> toJson() => _$UserCopyRequestToJson(this);
}

@JsonSerializable()
class UserResendWelcomeEmailRequest extends Updatable<UserResendWelcomeEmailResponse> {
  @JsonKey(ignore: true)
  final String userId;

  UserResendWelcomeEmailRequest({this.userId}) {
    if (userId?.isNotEmpty != true) {
      throw ArgumentError('userId must not be null or empty');
    }
  }

  @override
  UserResendWelcomeEmailResponse buildResponse(Map<String, dynamic> json) =>
      UserResendWelcomeEmailResponse.fromJson(json);

  @override
  String getUrl() => '/user/$userId/resend-welcome';
}