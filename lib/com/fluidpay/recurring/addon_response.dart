import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'addon_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AddOnResponse extends Responsable<AddOnResponseData> {
  AddOnResponse();

  factory AddOnResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOnResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AddOnUpdateResponse extends Responsable<dynamic> {
  AddOnUpdateResponse();

  factory AddOnUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOnUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AddOnSearchResponse extends Responsable<List<AddOnResponseData>> {
  AddOnSearchResponse();

  factory AddOnSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOnSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AddOnDeleteResponse extends Responsable<dynamic> {
  AddOnDeleteResponse();

  factory AddOnDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOnDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnDeleteResponseToJson(this);
}

@JsonSerializable()
class AddOnResponseData extends Decodable {
  String? id;
  String? name;
  String? description;
  int? amount;
  int? percentage;
  int? duration;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  AddOnResponseData();

  factory AddOnResponseData.fromJson(Map<String, dynamic> json) =>
      _$AddOnResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddOnResponseDataToJson(this);
}
