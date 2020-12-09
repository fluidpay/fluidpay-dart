import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/merchant/cart/response.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/payment_method/request_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class CartGetRequest extends Searchable<CartGetResponse> {
  @JsonKey(ignore: true)
  final String merchantId;
  @JsonKey(ignore: true)
  final String cartId;

  CartGetRequest({this.merchantId, this.cartId}) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
    if (cartId?.isNotEmpty != true) {
      throw ArgumentError('cartId must not be null or empty');
    }
  }

  @override
  CartGetResponse buildResponse(Map<String, dynamic> json) =>
      CartGetResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/cart/$cartId';

  @override
  Method getRequestMethod() => Method.GET;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartSearchRequest extends Searchable<CartSearchResponse> {
  @JsonKey(ignore: true)
  final String merchantId;
  QuerySearchParamString id;
  QuerySearchParamString name;
  QuerySearchParamString product;
  QuerySearchParamDateRange createdAt;
  QuerySearchParamDateRange updatedAt;
  QuerySearchParamDateRange deletedAt;
  int offset;
  int limit;

  CartSearchRequest({
    this.merchantId,
    this.id,
    this.name,
    this.product,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    this.offset,
    this.limit,
  }) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
  }

  @override
  CartSearchResponse buildResponse(Map<String, dynamic> json) =>
      CartSearchResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/cart/search';

  @override
  Map<String, dynamic> toJson() => _$CartSearchRequestToJson(this);
}

@JsonSerializable()
class CartGetAllRequest extends Searchable<CartGetAllResponse> {
  @JsonKey(ignore: true)
  final String merchantId;

  CartGetAllRequest({this.merchantId}) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
  }

  @override
  CartGetAllResponse buildResponse(Map<String, dynamic> json) =>
      CartGetAllResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/cart';

  @override
  Method getRequestMethod() => Method.GET;
}

class CartCreateRequest extends Creatable<CartCreateResponse> {
  final String merchantId;
  CartDataStringProduct cart;

  CartCreateRequest({this.merchantId, this.cart}) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
    if (cart == null) {
      throw ArgumentError('cart must not be null');
    }
  }

  @override
  CartCreateResponse buildResponse(Map<String, dynamic> json) =>
      CartCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/cart';

  @override
  Map<String, dynamic> toJson() => cart.toJson();
}

class CartUpdateRequest extends Updatable<CartUpdateResponse> {
  final String merchantId;
  final String cartId;
  final CartDataStringProduct cart;

  CartUpdateRequest({this.merchantId, this.cartId, this.cart}) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
    if (cartId?.isNotEmpty != true) {
      throw ArgumentError('cartId must not be null or empty');
    }
    if (cart == null) {
      throw ArgumentError('cart must not be null');
    }
  }

  @override
  CartUpdateResponse buildResponse(Map<String, dynamic> json) =>
      CartUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/cart/$cartId';

  @override
  Map<String, dynamic> toJson() => cart.toJson();
}

@JsonSerializable()
class CartDeleteRequest extends Deletable<CartDeleteResponse> {
  @JsonKey(ignore: true)
  final String merchantId;
  @JsonKey(ignore: true)
  final String cartId;

  CartDeleteRequest({this.merchantId, this.cartId}) {
    if (merchantId?.isNotEmpty != true) {
      throw ArgumentError('merchantId must not be null or empty');
    }
    if (cartId?.isNotEmpty != true) {
      throw ArgumentError('cartId must not be null or empty');
    }
  }

  @override
  CartDeleteResponse buildResponse(Map<String, dynamic> json) =>
      CartDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/$merchantId/cart/$cartId';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartCheckoutRequest extends Creatable {
  final String cartSessionId;
  final String cardProcessorId;
  final String achProcessorId;
  final Map<String, List<String>> customFields;
  final PaymentMethodRequest paymentMethod;
  final Address billingAddress;
  final Address shippingAddress;

  CartCheckoutRequest(
      {this.cartSessionId,
      this.cardProcessorId,
      this.achProcessorId,
      this.customFields,
      this.paymentMethod,
      this.billingAddress,
      this.shippingAddress});

  @override
  Responsable buildResponse(Map<String, dynamic> json) =>
      CartCheckoutResponse.fromJson(json);

  @override
  String getUrl() => '/cart/checkout';

  @override
  Map<String, dynamic> toJson() => _$CartCheckoutRequestToJson(this);
}
