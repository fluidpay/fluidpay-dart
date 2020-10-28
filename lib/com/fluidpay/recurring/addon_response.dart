import 'package:fluidpay_dart/com/fluidpay/common/base.dart';

import 'package:json_annotation/json_annotation.dart';

part 'addon_response.g.dart';

@JsonSerializable()
class AddOnResponse extends BaseResponse<AddOnResponseData> {
  AddOnResponse();

  factory AddOnResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOnResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnResponseToJson(this);
}

@JsonSerializable()
class AddOnSearchResponse extends BaseResponse<List<AddOnResponseData>> {

  AddOnSearchResponse();

  factory AddOnSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$AddOnSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AddOnSearchResponseToJson(this);
}

@JsonSerializable()
class AddOnResponseData extends BaseData {
  String id;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  AddOnResponseData();

  factory AddOnResponseData.fromJson(Map<String, dynamic> json) =>
      _$AddOnResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddOnResponseDataToJson(this);
}