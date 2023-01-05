import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductCreateResponse extends Responsable<ProductData> {
  factory ProductCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductCreateResponseToJson(this);

  ProductCreateResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductUpdateResponse extends Responsable<ProductData> {
  factory ProductUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductUpdateResponseToJson(this);

  ProductUpdateResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductGetResponse extends Responsable<ProductData> {
  factory ProductGetResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGetResponseToJson(this);

  ProductGetResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductGetAllResponse extends Responsable<List<ProductData>> {
  factory ProductGetAllResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductGetAllResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductGetAllResponseToJson(this);

  ProductGetAllResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductSearchResponse extends Responsable<List<ProductData>> {
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