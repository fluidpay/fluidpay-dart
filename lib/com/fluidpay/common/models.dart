import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'models.g.dart';

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

@JsonSerializable(fieldRename: FieldRename.snake)
class LineItem extends Decodable {
  static LineItemStatus lineItemStatusFromJson(String value) {
    switch (value) {
      case 'paid': return LineItemStatus.paid;
      case 'pending': return LineItemStatus.pending;
      case 'rejected': return LineItemStatus.rejected;
    }

    return null;
  }

  String id;
  @JsonKey(fromJson: lineItemStatusFromJson)
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

  LineItem(
      {this.id,
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
      this.amount});

  factory LineItem.fromJson(Map<String, dynamic> json) => _$LineItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineItemToJson(this);
}

enum LineItemStatus { paid, pending, rejected }

abstract class QuerySearchParam<Value> extends Decodable {
  SearchOperator operator;
  Value value;

  QuerySearchParam(this.operator, this.value);
}

@JsonSerializable()
class QuerySearchParamString extends QuerySearchParam<String> {
  QuerySearchParamString({SearchOperator operator, String value}) : super(operator, value);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamStringToJson(this);

  factory QuerySearchParamString.fromJson(Map<String, dynamic> json) => _$QuerySearchParamStringFromJson(json);
}

@JsonSerializable()
class QuerySearchParamInt extends QuerySearchParam<int> {
  QuerySearchParamInt({SearchOperator operator, int value}) : super(operator, value);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamIntToJson(this);

  factory QuerySearchParamInt.fromJson(Map<String, dynamic> json) => _$QuerySearchParamIntFromJson(json);
}

enum SearchOperator {
  @JsonValue('=')
  equals,
  @JsonValue('!=')
  notEquals,
  @JsonValue('%')
  like,
  @JsonValue('>')
  greaterThan,
  @JsonValue('<')
  lessThan,
}

@JsonSerializable(fieldRename: FieldRename.snake)
class QuerySearchParamDateRange extends Decodable {
  DateTime startDate;
  DateTime endDate;

  QuerySearchParamDateRange({this.startDate, this.endDate});

  factory QuerySearchParamDateRange.fromJson(Map<String, dynamic> json) => _$QuerySearchParamDateRangeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamDateRangeToJson(this);
}
