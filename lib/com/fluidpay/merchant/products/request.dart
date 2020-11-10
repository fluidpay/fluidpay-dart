import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/merchant/products/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductCreateRequest extends Creatable<ProductCreateResponse> {
  @JsonKey(ignore: true)
  String merchantId;
  String name;
  String img;
  int price;
  int localTax;
  int nationalTax;
  bool fixedAmount;
  bool fixedQty;
  String description;

  ProductCreateRequest({
    this.merchantId,
    this.name,
    this.img,
    this.price,
    this.localTax,
    this.nationalTax,
    this.fixedAmount,
    this.fixedQty,
    this.description,
  });

  @override
  ProductCreateResponse buildResponse(Map<String, dynamic> json) =>
      ProductCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/product';

  @override
  Map<String, dynamic> toJson() => _$ProductCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductUpdateRequest extends Updatable<ProductUpdateResponse> {
  @JsonKey(ignore: true)
  String merchantId;
  @JsonKey(ignore: true)
  String productId;

  String name;
  String img;
  int price;
  int localTax;
  int nationalTax;
  bool fixedAmount;
  bool fixedQty;
  String description;

  ProductUpdateRequest({
    this.merchantId,
    this.productId,
    this.name,
    this.img,
    this.price,
    this.localTax,
    this.nationalTax,
    this.fixedAmount,
    this.fixedQty,
    this.description,
  });

  @override
  ProductUpdateResponse buildResponse(Map<String, dynamic> json) =>
      ProductUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/product/$productId';

  @override
  Map<String, dynamic> toJson() => _$ProductUpdateRequestToJson(this);
}

@JsonSerializable()
class ProductDeleteRequest extends Deletable<ProductDeleteResponse> {
  @JsonKey(ignore: true)
  String merchantId;
  @JsonKey(ignore: true)
  String productId;

  ProductDeleteRequest({
    this.merchantId,
    this.productId,
  });

  @override
  ProductDeleteResponse buildResponse(Map<String, dynamic> json) =>
      ProductDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/product/$productId';
}

@JsonSerializable()
class ProductGetRequest extends Searchable<ProductGetResponse> {
  @JsonKey(ignore: true)
  String merchantId;
  @JsonKey(ignore: true)
  String productId;

  ProductGetRequest({
    this.merchantId,
    this.productId,
  });

  @override
  ProductGetResponse buildResponse(Map<String, dynamic> json) =>
      ProductGetResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/product/$productId';
}

@JsonSerializable()
class ProductGetAllRequest extends Searchable<ProductGetAllResponse> {
  @JsonKey(ignore: true)
  String merchantId;
  @JsonKey(ignore: true)
  String productId;

  ProductGetAllRequest({
    this.merchantId,
    this.productId,
  });

  @override
  ProductGetAllResponse buildResponse(Map<String, dynamic> json) =>
      ProductGetAllResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/product';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductSearchRequest extends Searchable<ProductSearchResponse> {
  @JsonKey(ignore: true)
  String merchantId;

  QuerySearchParamString id;
  QuerySearchParamString name;
  QuerySearchParamInt price;
  QuerySearchParamDateRange createdAt;
  QuerySearchParamDateRange updatedAt;
  QuerySearchParamDateRange deletedAt;
  int offset;
  int limit;

  ProductSearchRequest({
    this.merchantId,
    this.id,
    this.name,
    this.price,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.offset,
    this.limit,
  });

  @override
  ProductSearchResponse buildResponse(Map<String, dynamic> json) =>
      ProductSearchResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/product/search';

  @override
  Map<String, dynamic> toJson() => _$ProductSearchRequestToJson(this);
}
