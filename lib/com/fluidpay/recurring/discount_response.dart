import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DiscountResponse extends Responsable<DiscountResponseData> {
  DiscountResponse();

  factory DiscountResponse.fromJson(Map<String, dynamic> json) =>
      _$DiscountResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DiscountSearchResponse extends Responsable<List<DiscountResponseData>> {
  DiscountSearchResponse();

  factory DiscountSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DiscountSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DiscountSearchResponseToJson(this);
}

@JsonSerializable()
class DiscountResponseData extends Decodable {
  String id;
  String name;
  String description;
  int amount;
  int percentage;
  int duration;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  DiscountResponseData();

  factory DiscountResponseData.fromJson(Map<String, dynamic> json) =>
      _$DiscountResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DiscountResponseDataToJson(this);
}
