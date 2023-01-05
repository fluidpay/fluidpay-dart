import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/merchant/products/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductCreateRequest extends Creatable<ProductCreateResponse> {
  String merchantId;
  String? name;
  String? img;
  int? price;
  int? localTax;
  int? nationalTax;
  bool? fixedAmount;
  bool? fixedQty;
  String? description;

  ProductCreateRequest(
    this.merchantId, {
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
  String getPath() => '/merchant/$merchantId/product';

  @override
  Map<String, dynamic> toJson() => _$ProductCreateRequestToJson(this)..remove('merchant_id');
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductUpdateRequest extends Updatable<ProductUpdateResponse> {
  String merchantId;
  String productId;

  String? name;
  String? img;
  int? price;
  int? localTax;
  int? nationalTax;
  bool? fixedAmount;
  bool? fixedQty;
  String? description;

  ProductUpdateRequest(
    this.merchantId,
    this.productId, {
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
  String getPath() => '/merchant/$merchantId/product/$productId';

  @override
  Map<String, dynamic> toJson() =>
      _$ProductUpdateRequestToJson(this)..remove('merchant_id')..remove('product_id');
}

class ProductDeleteRequest extends Deletable<ProductDeleteResponse> {
  String merchantId;
  String productId;

  ProductDeleteRequest(this.merchantId, this.productId);

  @override
  ProductDeleteResponse buildResponse(Map<String, dynamic> json) =>
      ProductDeleteResponse.fromJson(json);

  @override
  String getPath() => '/merchant/$merchantId/product/$productId';
}

class ProductGetRequest extends Searchable<ProductGetResponse> {
  String merchantId;
  String productId;

  ProductGetRequest(this.merchantId, this.productId);

  @override
  ProductGetResponse buildResponse(Map<String, dynamic> json) => ProductGetResponse.fromJson(json);

  @override
  String getPath() => '/merchant/$merchantId/product/$productId';

  @override
  Method getRequestMethod() => Method.GET;
}

class ProductGetAllRequest extends Searchable<ProductGetAllResponse> {
  String merchantId;

  ProductGetAllRequest(this.merchantId);

  @override
  ProductGetAllResponse buildResponse(Map<String, dynamic> json) =>
      ProductGetAllResponse.fromJson(json);

  @override
  String getPath() => '/merchant/$merchantId/product';

  @override
  Method getRequestMethod() => Method.GET;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductSearchRequest extends Searchable<ProductSearchResponse> {
  String merchantId;

  QuerySearchParamString? id;
  QuerySearchParamString? name;
  QuerySearchParamInt? price;
  QuerySearchParamDateRange? createdAt;
  QuerySearchParamDateRange? updatedAt;
  QuerySearchParamDateRange? deletedAt;
  int? offset;
  int? limit;

  ProductSearchRequest(
    this.merchantId, {
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
  String getPath() => '/merchant/$merchantId/product/search';

  @override
  Map<String, dynamic> toJson() => _$ProductSearchRequestToJson(this)..remove('merchant_id');
}
