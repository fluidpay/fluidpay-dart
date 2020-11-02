import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable()
class Address extends Decodable {
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String company;
  @JsonKey(name: 'address_line_1')
  String addressLine1;
  @JsonKey(name: 'address_line_2')
  String addressLine2;
  String city;
  String state;
  @JsonKey(name: 'postal_code')
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

@JsonSerializable()
class LineItem extends Decodable {
  String id;
  LineItemStatus status;
  String type;
  String name;
  String description;
  double quantity;
  @JsonKey(name: 'quantity_shipped')
  double quantityShipped;
  @JsonKey(name: 'product_code')
  String productCode;
  @JsonKey(name: 'commodity_code')
  String commodityCode;
  @JsonKey(name: 'unit_of_measure')
  String unitOfMeasure;
  @JsonKey(name: 'alternate_tax_identifier')
  String alternateTaxIdentifier;
  bool taxable;
  @JsonKey(name: 'local_tax_rate')
  String localTaxRate;
  @JsonKey(name: 'local_tax')
  int localTax;
  @JsonKey(name: 'national_tax_rate')
  String nationalTaxRate;
  @JsonKey(name: 'national_tax')
  int nationalTax;
  @JsonKey(name: 'tax_rate')
  String taxRate;
  @JsonKey(name: 'tax_amount')
  int taxAmount;
  @JsonKey(name: 'discount_amount')
  int discountAmount;
  @JsonKey(name: 'freight_amount')
  int freightAmount;
  @JsonKey(name: 'unit_price')
  int unitPrice;
  @JsonKey(name: 'discount_rate')
  String discountRate;
  int subtotal;
  int amount;

  LineItem();

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);
  @override
  Map<String, dynamic> toJson() => _$LineItemToJson(this);
}