import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class CartGetResponse extends Responsable<CartDataFullProduct> {
  CartGetResponse();
  factory CartGetResponse.fromJson(Map<String, dynamic> map) =>
      _$CartGetResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartGetResponseToJson(this);
}

@JsonSerializable()
class CartSearchResponse extends Responsable<List<CartDataStringProduct>> {
  CartSearchResponse();
  factory CartSearchResponse.fromJson(Map<String, dynamic> map) =>
      _$CartSearchResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartSearchResponseToJson(this);
}

@JsonSerializable()
class CartGetAllResponse extends Responsable<List<CartDataStringProduct>> {
  CartGetAllResponse();
  factory CartGetAllResponse.fromJson(Map<String, dynamic> map) =>
      _$CartGetAllResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartGetAllResponseToJson(this);
}

@JsonSerializable()
class CartCreateResponse extends Responsable<CartDataStringProduct> {
  CartCreateResponse();
  factory CartCreateResponse.fromJson(Map<String, dynamic> map) =>
      _$CartCreateResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartCreateResponseToJson(this);
}

@JsonSerializable()
class CartUpdateResponse extends Responsable<CartDataStringProduct> {
  CartUpdateResponse();
  factory CartUpdateResponse.fromJson(Map<String, dynamic> map) =>
      _$CartUpdateResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartUpdateResponseToJson(this);
}

@JsonSerializable()
class CartDeleteResponse extends Responsable<String> {
  CartDeleteResponse();
  factory CartDeleteResponse.fromJson(Map<String, dynamic> map) =>
      _$CartDeleteResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartDeleteResponseToJson(this);
}

@JsonSerializable()
class CartSessionCreateResponse extends Responsable<CartSession> {
  CartSessionCreateResponse();
  factory CartSessionCreateResponse.fromJson(Map<String, dynamic> map) =>
      _$CartSessionCreateResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartSessionCreateResponseToJson(this);
}

@JsonSerializable()
class CartCheckoutResponse extends Responsable<TransactionResponseData> {
  CartCheckoutResponse();
  factory CartCheckoutResponse.fromJson(Map<String, dynamic> map) =>
      _$CartCheckoutResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartCheckoutResponseToJson(this);
}