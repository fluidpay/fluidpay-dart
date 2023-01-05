import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/mba/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MBAUnit {
  String? id;
  String? userId;
  String physicalId;
  String physicalType;
  String passcode;

  MBAUnit(this.physicalId, this.physicalType, this.passcode, {this.id, this.userId});
}

class MBARegisterRequest extends Creatable<MBARegisterResponse> {
  MBAUnit unit;

  MBARegisterRequest(this.unit);

  @override
  MBARegisterResponse buildResponse(Map<String, dynamic> json) => MBARegisterResponse.fromJson(json);

  @override
  String getPath() => '/mba/units';

  @override
  Map<String, dynamic> toJson() => _$MBAUnitToJson(unit);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MBAAuthLoginRequest extends Searchable<MBAAuthLoginResponse> {
  String? authKey;
  String username;
  String password;
  String? totp;
  String physicalId;

  MBAAuthLoginRequest(this.username, this.password, this.physicalId, {this.authKey, this.totp});

  @override
  Map<String, dynamic> toJson() => _$MBAAuthLoginRequestToJson(this);

  @override
  MBAAuthLoginResponse buildResponse(Map<String, dynamic> json) => MBAAuthLoginResponse.fromJson(json);

  @override
  String getPath() => '/token-auth';
}

class MBAAuthRevokeRequest extends Updatable<MBAAuthRevokeResponse> {
  final String unitId;

  MBAAuthRevokeRequest(this.unitId);

  @override
  MBAAuthRevokeResponse buildResponse(Map<String, dynamic> json) => MBAAuthRevokeResponse.fromJson(json);

  @override
  String getPath() => '/auth/mba/revoke/$unitId';

  @override
  Method getRequestMethod() => Method.GET;
}

@JsonSerializable()
class MBAAuthRefreshRequest extends Updatable<MBAAuthRefreshResponse> {
  final String token;

  MBAAuthRefreshRequest(this.token);

  @override
  MBAAuthRefreshResponse buildResponse(Map<String, dynamic> json) => MBAAuthRefreshResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MBAAuthRefreshRequestToJson(this);

  @override
  String getPath() => '/auth/mba/refresh';
}

class MBAUpdateRequest extends Updatable<MBAUpdateResponse> {
  final MBAUnit unit;
  final bool onlyPasscodeUpdate;

  MBAUpdateRequest(this.unit, {this.onlyPasscodeUpdate = false}) {
    if (unit.id == null) {
      throw ArgumentError.notNull('Unit Id');
    }
  }

  @override
  MBAUpdateResponse buildResponse(Map<String, dynamic> json) => MBAUpdateResponse.fromJson(json);

  @override
  String getPath() => '/mba/units/${unit.id}';

  @override
  Method getRequestMethod() => Method.PUT;

  @override
  Map<String, dynamic> toJson() {
    if (onlyPasscodeUpdate) {
      return {'passcode': unit.passcode};
    } else {
      return _$MBAUnitToJson(unit);
    }
  }
}

class MBADeleteRequest extends Deletable<MBADeleteResponse> {
  final String unitId;

  MBADeleteRequest(this.unitId);

  @override
  MBADeleteResponse buildResponse(Map<String, dynamic> json) => MBADeleteResponse.fromJson(json);

  @override
  String getPath() => '/mba/units/$unitId';
}
