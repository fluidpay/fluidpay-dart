import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Address extends Decodable {
  String firstName;
  String lastName;
  String company;
  @JsonKey(name: 'address_line_1')
  String addressLine1;
  @JsonKey(name: 'address_line_2')
  String addressLine2;
  String city;
  String state;
  String postalCode;
  String country;
  String phone;
  String fax;
  String email;

  Address({
    this.firstName,
    this.lastName,
    this.company,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.phone,
    this.fax,
    this.email,
  });

  factory Address.fromJson(Map<String, dynamic> json) => _$AddressFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

enum LineItemStatus { paid, pending, rejected }

@JsonSerializable(fieldRename: FieldRename.snake)
class LineItem extends Decodable {
  String id;
  LineItemStatus status;
  String type;
  String name;
  String description;
  double quantity;
  double quantityShipped;
  String productCode;
  String commodityCode;
  String unitOfMeasure;
  String alternateTaxIdentifier;
  bool taxable;
  String localTaxRate;
  int localTax;
  String nationalTaxRate;
  int nationalTax;
  String taxRate;
  int taxAmount;
  int discountAmount;
  int freightAmount;
  int unitPrice;
  String discountRate;
  int subtotal;
  int amount;

  LineItem({
    this.id,
    this.status,
    this.type,
    this.name,
    this.description,
    this.quantity,
    this.quantityShipped,
    this.productCode,
    this.commodityCode,
    this.unitOfMeasure,
    this.alternateTaxIdentifier,
    this.taxable,
    this.localTaxRate,
    this.localTax,
    this.nationalTaxRate,
    this.nationalTax,
    this.taxRate,
    this.taxAmount,
    this.discountAmount,
    this.freightAmount,
    this.unitPrice,
    this.discountRate,
    this.subtotal,
    this.amount,
});

  factory LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineItemToJson(this);
}
