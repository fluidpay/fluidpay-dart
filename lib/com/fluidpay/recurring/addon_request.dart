import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/recurring/addon_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'addon_request.g.dart';

@JsonSerializable()
class AddOnCreateRequest extends Creatable<AddOnResponse> {
  String? name;
  String? description;
  int? amount;
  int? percentage;
  int? duration;

  AddOnCreateRequest(
      {this.name,
      this.description,
      this.amount,
      this.percentage,
      this.duration});

  @override
  Map<String, dynamic> toJson() => _$AddOnCreateRequestToJson(this);

  @override
  String getPath() => '/recurring/addon';

  @override
  AddOnResponse buildResponse(Map<String, dynamic> json) {
    return AddOnResponse.fromJson(json);
  }
}

@JsonSerializable()
class AddOnUpdateRequest extends Updatable<AddOnUpdateResponse> {
  @JsonKey(ignore: true)
  String? id;
  String? name;
  String? description;
  int? amount;
  int? percentage;
  int? duration;

  AddOnUpdateRequest(
      {this.id,
      this.name,
      this.description,
      this.amount,
      this.percentage,
      this.duration});

  @override
  AddOnUpdateResponse buildResponse(Map<String, dynamic> json) =>
      AddOnUpdateResponse.fromJson(json);

  @override
  String getPath() => '/recurring/addon/${id}';

  @override
  Map<String, dynamic> toJson() => _$AddOnUpdateRequestToJson(this);
}

class AddOnSearchRequest extends Searchable<AddOnSearchResponse> {
  String? id;

  @override
  String getPath() =>
      id?.isNotEmpty == true ? '/recurring/addon/$id' : '/recurring/addons';

  @override
  Method getRequestMethod() => Method.GET;

  AddOnSearchRequest({this.id});

  @override
  AddOnSearchResponse buildResponse(Map<String, dynamic> json) {
    return AddOnSearchResponse.fromJson(json);
  }
}

@JsonSerializable(createFactory: false)
class AddOnDeleteRequest extends Deletable<AddOnDeleteResponse> {
  @JsonKey(ignore: true)
  String id;

  AddOnDeleteRequest(this.id);

  @override
  AddOnDeleteResponse buildResponse(Map<String, dynamic> json) =>
      AddOnDeleteResponse.fromJson(json);

  @override
  String getPath() => '/recurring/addon/$id';
}

@JsonSerializable()
class AddOnRequest extends Creatable<AddOnResponse> {
  String? id;
  String? description;
  int? amount;
  int? percentage;
  int? duration;

  AddOnRequest(
      {this.id, this.description, this.amount, this.percentage, this.duration});

  @override
  Map<String, dynamic> toJson() => _$AddOnRequestToJson(this);

  factory AddOnRequest.fromJson(Map<String, dynamic> json) =>
      _$AddOnRequestFromJson(json);

  @override
  String getPath() => '';

  @override
  AddOnResponse buildResponse(Map<String, dynamic> json) {
    return AddOnResponse.fromJson(json);
  }
}
