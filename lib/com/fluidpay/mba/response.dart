import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class MBARegisterResponse extends Responsable {
  factory MBARegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$MBARegisterResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MBARegisterResponseToJson(this);

  MBARegisterResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MBAAuthLoginResponse extends Responsable<MBAAuthLoginResponseData> {
  MBAAuthLoginResponse();

  factory MBAAuthLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$MBAAuthLoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MBAAuthLoginResponseToJson(this);
}

enum MBAUnitStatus { registered, unregistered }

@JsonSerializable(fieldRename: FieldRename.snake)
class MBAAuthLoginResponseData extends Decodable {
  String? token;
  String? sid;
  MBAUnitStatus? unitStatus;

  MBAAuthLoginResponseData();

  factory MBAAuthLoginResponseData.fromJson(Map<String, dynamic> json) =>
      _$MBAAuthLoginResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MBAAuthLoginResponseDataToJson(this);
}

@JsonSerializable()
class MBAAuthRevokeResponse extends Responsable {
  MBAAuthRevokeResponse();

  factory MBAAuthRevokeResponse.fromJson(Map<String, dynamic> json) =>
      _$MBAAuthRevokeResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MBAAuthRefreshResponse extends Responsable<MBAAuthRefreshResponseData> {
  MBAAuthRefreshResponse();

  factory MBAAuthRefreshResponse.fromJson(Map<String, dynamic> json) =>
      _$MBAAuthRefreshResponseFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MBAAuthRefreshResponseData {
  String? token;

  MBAAuthRefreshResponseData();

  factory MBAAuthRefreshResponseData.fromJson(Map<String, dynamic> json) =>
      _$MBAAuthRefreshResponseDataFromJson(json);
}

@JsonSerializable()
class MBAUpdateResponse extends Responsable {
  MBAUpdateResponse();

  factory MBAUpdateResponse.fromJson(Map<String, dynamic> json) => _$MBAUpdateResponseFromJson(json);
}

@JsonSerializable()
class MBADeleteResponse extends Responsable {
  MBADeleteResponse();

  factory MBADeleteResponse.fromJson(Map<String, dynamic> json) => _$MBADeleteResponseFromJson(json);
}