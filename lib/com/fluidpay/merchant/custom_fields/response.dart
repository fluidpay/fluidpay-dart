import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class CustomFieldCreateResponse extends Responsable<dynamic> {
  factory CustomFieldCreateResponse.fromJson(Map<String, dynamic> json) => _$CustomFieldCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldCreateResponseToJson(this);

  CustomFieldCreateResponse();
}

@JsonSerializable()
class CustomFieldUpdateResponse extends Responsable<dynamic> {
  factory CustomFieldUpdateResponse.fromJson(Map<String, dynamic> json) => _$CustomFieldUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldUpdateResponseToJson(this);

  CustomFieldUpdateResponse();
}

@JsonSerializable()
class CustomFieldGetResponse extends Responsable<CustomFieldResponseData> {
  CustomFieldGetResponse();

  factory CustomFieldGetResponse.fromJson(Map<String, dynamic> json) => _$CustomFieldGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldGetResponseToJson(this);
}

@JsonSerializable()
class CustomFieldSearchResponse extends Responsable<List<CustomFieldResponseData>> {
  CustomFieldSearchResponse();

  factory CustomFieldSearchResponse.fromJson(Map<String, dynamic> json) => _$CustomFieldSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldSearchResponseToJson(this);
}

@JsonSerializable()
class CustomFieldDeleteResponse extends Responsable<dynamic> {
  CustomFieldDeleteResponse();

  factory CustomFieldDeleteResponse.fromJson(Map<String, dynamic> json) => _$CustomFieldDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomFieldDeleteResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomFieldResponseData extends Decodable {
  String? id;
  String? name;
  String? groupName;
  String? type;
  bool? required;
  String? validationType;
  List<Value>? values;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deletedAt;

  CustomFieldResponseData(this.id, this.name, this.groupName, this.type, this.required, this.validationType,
      this.values, this.createdAt, this.updatedAt, this.deletedAt);

  @override
  Map<String, dynamic> toJson() => _$CustomFieldResponseDataToJson(this);

  factory CustomFieldResponseData.fromJson(Map<String, dynamic> json) => _$CustomFieldResponseDataFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Value extends Decodable {
  String? name;
  String? value;

  Value(this.name, this.value);

  @override
  Map<String, dynamic> toJson() => _$ValueToJson(this);

  factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
}
