import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductCreateResponse extends Responsable<ProductResponseData> {
  factory ProductCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCreateResponseToJson(this);

  ProductCreateResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductUpdateResponse extends Responsable<ProductResponseData> {
  factory ProductUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductUpdateResponseToJson(this);

  ProductUpdateResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductGetResponse extends Responsable<ProductResponseData> {
  factory ProductGetResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGetResponseToJson(this);

  ProductGetResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductGetAllResponse extends Responsable<List<ProductResponseData>> {
  factory ProductGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGetAllResponseToJson(this);

  ProductGetAllResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductSearchResponse extends Responsable<List<ProductResponseData>> {
  factory ProductSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductSearchResponseToJson(this);

  ProductSearchResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductDeleteResponse extends Responsable<dynamic> {
  factory ProductDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDeleteResponseToJson(this);

  ProductDeleteResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductResponseData extends Decodable {
  @JsonKey(name: 'id')
  String productId;
  String publicHash;
  String merchantId;
  String name;
  String img;
  int price;
  int localTax;
  int nationalTax;
  bool fixedAmount;
  bool fixedQty;
  String description;
  String createdAt;
  String updatedAt;
  String deletedAt;

  factory ProductResponseData.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductResponseDataToJson(this);

  ProductResponseData();
}
