// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForgotUsernameRequest _$ForgotUsernameRequestFromJson(
    Map<String, dynamic> json) {
  return ForgotUsernameRequest(
    json['email'] as String,
  );
}

Map<String, dynamic> _$ForgotUsernameRequestToJson(
        ForgotUsernameRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
    };

ForgotPasswordRequest _$ForgotPasswordRequestFromJson(
    Map<String, dynamic> json) {
  return ForgotPasswordRequest(
    json['username'] as String,
  );
}

Map<String, dynamic> _$ForgotPasswordRequestToJson(
        ForgotPasswordRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
    };

ForgotPasswordResetRequest _$ForgotPasswordResetRequestFromJson(
    Map<String, dynamic> json) {
  return ForgotPasswordResetRequest(
    json['username'] as String,
    json['reset_code'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$ForgotPasswordResetRequestToJson(
        ForgotPasswordResetRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'reset_code': instance.resetCode,
      'password': instance.password,
    };

UserGetRequest _$UserGetRequestFromJson(Map<String, dynamic> json) {
  return UserGetRequest();
}

Map<String, dynamic> _$UserGetRequestToJson(UserGetRequest instance) =>
    <String, dynamic>{};

UserPasswordChangeRequest _$UserPasswordChangeRequestFromJson(
    Map<String, dynamic> json) {
  return UserPasswordChangeRequest(
    json['username'] as String,
    json['current_password'] as String,
    json['new_password'] as String,
  );
}

Map<String, dynamic> _$UserPasswordChangeRequestToJson(
        UserPasswordChangeRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };

UserSetTotpRequest _$UserSetTotpRequestFromJson(Map<String, dynamic> json) {
  return UserSetTotpRequest();
}

Map<String, dynamic> _$UserSetTotpRequestToJson(UserSetTotpRequest instance) =>
    <String, dynamic>{};

UserRemoveTotpRequest _$UserRemoveTotpRequestFromJson(
    Map<String, dynamic> json) {
  return UserRemoveTotpRequest(
    json['totp'] as String,
    json['user_id'] as String,
  );
}

Map<String, dynamic> _$UserRemoveTotpRequestToJson(
        UserRemoveTotpRequest instance) =>
    <String, dynamic>{
      'totp': instance.totp,
      'user_id': instance.userId,
    };

UserCreateRequest _$UserCreateRequestFromJson(Map<String, dynamic> json) {
  return UserCreateRequest(
    username: json['username'] as String?,
    name: json['name'] as String?,
    phone: json['phone'] as String?,
    email: json['email'] as String?,
    status: json['status'] as String?,
    role: json['role'] as String?,
    defaults: json['defaults'],
  );
}

Map<String, dynamic> _$UserCreateRequestToJson(UserCreateRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'status': instance.status,
      'role': instance.role,
      'defaults': instance.defaults,
    };

UserUpdateRequest _$UserUpdateRequestFromJson(Map<String, dynamic> json) {
  return UserUpdateRequest(
    username: json['username'] as String?,
    name: json['name'] as String?,
    phone: json['phone'] as String?,
    email: json['email'] as String?,
    status: json['status'] as String?,
    role: json['role'] as String?,
    defaults: json['defaults'],
  );
}

Map<String, dynamic> _$UserUpdateRequestToJson(UserUpdateRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'status': instance.status,
      'role': instance.role,
      'defaults': instance.defaults,
    };

UsersRequest _$UsersRequestFromJson(Map<String, dynamic> json) {
  return UsersRequest();
}

Map<String, dynamic> _$UsersRequestToJson(UsersRequest instance) =>
    <String, dynamic>{};

UserLoginAsRequest _$UserLoginAsRequestFromJson(Map<String, dynamic> json) {
  return UserLoginAsRequest();
}

Map<String, dynamic> _$UserLoginAsRequestToJson(UserLoginAsRequest instance) =>
    <String, dynamic>{};

UserDeleteRequest _$UserDeleteRequestFromJson(Map<String, dynamic> json) {
  return UserDeleteRequest(
    json['userId'] as String,
  );
}

Map<String, dynamic> _$UserDeleteRequestToJson(UserDeleteRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };

UserCopyRequest _$UserCopyRequestFromJson(Map<String, dynamic> json) {
  return UserCopyRequest(
    username: json['username'] as String?,
    name: json['name'] as String?,
    phone: json['phone'] as String?,
    email: json['email'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$UserCopyRequestToJson(UserCopyRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'status': instance.status,
    };

UserResendWelcomeEmailRequest _$UserResendWelcomeEmailRequestFromJson(
    Map<String, dynamic> json) {
  return UserResendWelcomeEmailRequest(
    json['userId'] as String,
  );
}

Map<String, dynamic> _$UserResendWelcomeEmailRequestToJson(
        UserResendWelcomeEmailRequest instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };
