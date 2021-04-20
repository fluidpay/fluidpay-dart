import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AuthLoginResponse extends Responsable<AuthLoginResponseData> {
  AuthLoginResponse();

  factory AuthLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthLoginResponseToJson(this);
}

@JsonSerializable()
class AuthLoginResponseData extends Decodable {
  String? token;
  String? sid;

  AuthLoginResponseData();

  factory AuthLoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$AuthLoginResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AuthLoginResponseDataToJson(this);
}