import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CartData extends Decodable {
  String id;
  String merchantId;
  String cardProcessorId;
  String achProcessorId;
  String name;
  String description;
  String type;
  String customFieldsGroup;
  List<ProductData> products;
  bool showAvailableProducts;
  bool requireShippingDetails;
  bool emailReceipt;
  List<String> payments;
  String shopifyHash;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  CartData({
    this.id,
    this.merchantId,
    this.cardProcessorId,
    this.achProcessorId,
    this.name,
    this.description,
    this.type,
    this.customFieldsGroup,
    this.products,
    this.showAvailableProducts,
    this.requireShippingDetails,
    this.emailReceipt,
    this.payments,
    this.shopifyHash,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory CartData.fromJson(Map<String, dynamic> json) =>
      _$CartDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductData extends Decodable {
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
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  ProductData({
    this.productId,
    this.publicHash,
    this.merchantId,
    this.name,
    this.img,
    this.price,
    this.localTax,
    this.nationalTax,
    this.fixedAmount,
    this.fixedQty,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}
