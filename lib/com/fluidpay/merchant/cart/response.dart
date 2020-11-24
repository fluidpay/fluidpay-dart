import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class CartGetResponse extends Responsable<CartData> {
  CartGetResponse();
  factory CartGetResponse.fromJson(Map<String, dynamic> map) =>
      _$CartGetResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartGetResponseToJson(this);
}

@JsonSerializable()
class CartSearchResponse extends Responsable<List<CartData>> {
  CartSearchResponse();
  factory CartSearchResponse.fromJson(Map<String, dynamic> map) =>
      _$CartSearchResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartSearchResponseToJson(this);
}

@JsonSerializable()
class CartGetAllResponse extends Responsable<List<CartData>> {
  CartGetAllResponse();
  factory CartGetAllResponse.fromJson(Map<String, dynamic> map) =>
      _$CartGetAllResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartGetAllResponseToJson(this);
}

@JsonSerializable()
class CartCreateResponse extends Responsable {
  CartCreateResponse();
  factory CartCreateResponse.fromJson(Map<String, dynamic> map) =>
      _$CartCreateResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartCreateResponseToJson(this);
}

@JsonSerializable()
class CartUpdateResponse extends Responsable {
  CartUpdateResponse();
  factory CartUpdateResponse.fromJson(Map<String, dynamic> map) =>
      _$CartUpdateResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartUpdateResponseToJson(this);
}

@JsonSerializable()
class CartDeleteResponse extends Responsable {
  CartDeleteResponse();
  factory CartDeleteResponse.fromJson(Map<String, dynamic> map) =>
      _$CartDeleteResponseFromJson(map);
  Map<String, dynamic> toJson() => _$CartDeleteResponseToJson(this);
}