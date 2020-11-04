
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'line_item.g.dart';

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