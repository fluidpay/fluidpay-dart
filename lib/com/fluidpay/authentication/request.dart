import 'package:fluidpay/com/fluidpay/authentication/response.dart';
import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AuthLoginRequest extends Searchable<AuthLoginResponse> {
  String? authKey;
  String username;
  String password;
  String? totp;

  AuthLoginRequest(this.username, this.password, {this.authKey, this.totp});

  @override
  AuthLoginResponse buildResponse(Map<String, dynamic> json) =>
      AuthLoginResponse.fromJson(json);

  @override
  String getPath() => '/token-auth';

  @override
  Map<String, dynamic> toJson() => _$AuthLoginRequestToJson(this);
}
