import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/custom_fields/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomFieldCreateRequest extends Creatable<CustomFieldCreateResponse> {
  String? name;
  String? type;
  String? groupName;
  bool? required;
  String? validationType;
  List<Value>? values;

  CustomFieldCreateRequest({this.name, this.type, this.groupName, this.required, this.validationType, this.values});

  @override
  CustomFieldCreateResponse buildResponse(Map<String, dynamic> json) => CustomFieldCreateResponse.fromJson(json);

  @override
  String getPath() => '/customfield';

  @override
  Map<String, dynamic> toJson() => _$CustomFieldCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomFieldUpdateRequest extends Updatable<CustomFieldUpdateResponse> {
  @JsonKey(ignore: true)
  String? id;
  String? name;
  String? type;
  String? groupName;
  bool? required;
  String? validationType;
  List<Value>? values;

  CustomFieldUpdateRequest(
      {this.id, this.name, this.type, this.groupName, this.required, this.validationType, this.values});

  @override
  CustomFieldUpdateResponse buildResponse(Map<String, dynamic> json) => CustomFieldUpdateResponse.fromJson(json);

  @override
  String getPath() => '/customfield/$id';

  @override
  Map<String, dynamic> toJson() => _$CustomFieldUpdateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomFieldGetRequest extends Searchable<CustomFieldGetResponse> {
  String? id;

  @override
  Method getRequestMethod() => Method.GET;

  @override
  String getPath() => '/customfield/$id';

  CustomFieldGetRequest({this.id});

  @override
  CustomFieldGetResponse buildResponse(Map<String, dynamic> json) {
    return CustomFieldGetResponse.fromJson(json);
  }
}

class CustomFieldSearchRequest extends Searchable<CustomFieldSearchResponse> {
  @override
  String getPath() => '/customfields';

  @override
  Method getRequestMethod() => Method.GET;

  CustomFieldSearchRequest();

  @override
  CustomFieldSearchResponse buildResponse(Map<String, dynamic> json) {
    return CustomFieldSearchResponse.fromJson(json);
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomFieldDeleteRequest extends Deletable<CustomFieldDeleteResponse> {
  String? id;

  CustomFieldDeleteRequest({this.id});

  @override
  CustomFieldDeleteResponse buildResponse(Map<String, dynamic> json) => CustomFieldDeleteResponse.fromJson(json);

  @override
  String getPath() => '/customfield/$id';
}
