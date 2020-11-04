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

  Address();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}

enum LineItemStatus {
  paid,
  pending,
  rejected
}

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

  LineItem();

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LineItemToJson(this);
}