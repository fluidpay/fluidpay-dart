import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

enum SendVia {
  none,
  text,
  email,
  both,
}

enum InvoiceStatus {
  paid,
  authorized,
  @JsonValue('paying_via_mail')
  payingViaMail,
  @JsonValue('partially_paid')
  partiallyPaid,
  pending,
  declined,
  failed,
  rejected
}

// TODO move this to different place
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

  factory LineItem.fromJson(Map<String, dynamic> json) =>
      _$LineItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineItemToJson(this);
}

enum LineItemStatus {
  paid,
  pending,
  rejected,
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceBillTo extends Decodable {
  String id;
  String firstName;
  String lastName;
  String company;
  String addressLine1;
  String addressLine2;
  String city;
  String state;
  String postalCode;
  String country;
  String phone;
  String fax;
  String email;

  InvoiceBillTo(
      {this.id,
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
      this.email});

  factory InvoiceBillTo.fromJson(Map<String, dynamic> json) =>
      _$InvoiceBillToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceBillToToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoicePayableTo extends Decodable {
  String id;
  String firstName;
  String lastName;
  String company;
  String addressLine1;
  String addressLine2;
  String city;
  String state;
  String postalCode;
  String country;
  String phone;
  String fax;
  String email;

  InvoicePayableTo(
      {this.id,
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
      this.email});

  factory InvoicePayableTo.fromJson(Map<String, dynamic> json) =>
      _$InvoicePayableToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoicePayableToToJson(this);
}

abstract class QuerySearchParam<Value> extends Decodable {
  SearchOperator operator;
  Value value;

  QuerySearchParam(this.operator, this.value);
}

@JsonSerializable()
class QuerySearchParamString extends QuerySearchParam<String> {
  QuerySearchParamString({SearchOperator operator, String value})
      : super(operator, value);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamStringToJson(this);

  factory QuerySearchParamString.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamStringFromJson(json);
}

@JsonSerializable()
class QuerySearchParamInt extends QuerySearchParam<int> {
  QuerySearchParamInt({SearchOperator operator, int value})
      : super(operator, value);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamIntToJson(this);

  factory QuerySearchParamInt.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamIntFromJson(json);
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

  factory QuerySearchParamDateRange.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamDateRangeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamDateRangeToJson(this);
}
