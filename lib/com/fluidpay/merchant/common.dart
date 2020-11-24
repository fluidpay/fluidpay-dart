import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CartDataFullProduct extends CartData<ProductData> {
  CartDataFullProduct({
    String id,
    String publicHash,
    String merchantId,
    String cardProcessorId,
    String achProcessorId,
    String name,
    String description,
    String type = 'normal',
    String customFieldsGroup,
    List<ProductData> products,
    bool showAvailableProducts,
    bool requireShippingDetails,
    bool emailReceipt,
    bool payments,
    String shopifyHash,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime deletedAt,
  }) : super(
    id: id,
    publicHash: publicHash,
    merchantId: merchantId,
    cardProcessorId: cardProcessorId,
    achProcessorId: achProcessorId,
    name: name,
    description: description,
    type: type,
    customFieldsGroup: customFieldsGroup,
    products: products,
    showAvailableProducts: showAvailableProducts,
    requireShippingDetails: requireShippingDetails,
    emailReceipt: emailReceipt,
    payments: payments,
    shopifyHash: shopifyHash,
    createdAt: createdAt,
    updatedAt: updatedAt,
    deletedAt: deletedAt,
  );

  factory CartDataFullProduct.fromJson(Map<String, dynamic> json) =>
      _$CartDataFullProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartDataFullProductToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class CartDataStringProduct extends CartData<String> {
  CartDataStringProduct({
    String id,
    String publicHash,
    String merchantId,
    String cardProcessorId,
    String achProcessorId,
    String name,
    String description,
    String type = 'normal',
    String customFieldsGroup,
    List<String> products,
    bool showAvailableProducts,
    bool requireShippingDetails,
    bool emailReceipt,
    bool payments,
    String shopifyHash,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime deletedAt,
  }) : super(
    id: id,
    publicHash: publicHash,
    merchantId: merchantId,
    cardProcessorId: cardProcessorId,
    achProcessorId: achProcessorId,
    name: name,
    description: description,
    type: type,
    customFieldsGroup: customFieldsGroup,
    products: products,
    showAvailableProducts: showAvailableProducts,
    requireShippingDetails: requireShippingDetails,
    emailReceipt: emailReceipt,
    payments: payments,
    shopifyHash: shopifyHash,
    createdAt: createdAt,
    updatedAt: updatedAt,
    deletedAt: deletedAt,
  );

  factory CartDataStringProduct.fromJson(Map<String, dynamic> json) =>
      _$CartDataStringProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartDataStringProductToJson(this);
}

abstract class CartData<ProductType> extends Decodable {
  String id;
  String publicHash;
  String merchantId;
  String cardProcessorId;
  String achProcessorId;
  String name;
  String description;
  String type;
  String customFieldsGroup;
  List<ProductType> products;
  bool showAvailableProducts;
  bool requireShippingDetails;
  bool emailReceipt;
  bool payments;
  String shopifyHash;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  CartData({
    this.id,
    this.publicHash,
    this.merchantId,
    this.cardProcessorId,
    this.achProcessorId,
    this.name,
    this.description,
    this.type = 'normal',
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
