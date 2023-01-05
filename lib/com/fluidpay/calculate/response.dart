import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:fluidpay/com/fluidpay/calculate/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class CalculateAmountsResponse extends Responsable<CalculateAmountsResponseData> {
  factory CalculateAmountsResponse.fromJson(Map<String, dynamic> json) =>
      _$CalculateAmountsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateAmountsResponseToJson(this);

  CalculateAmountsResponse();
}

@JsonSerializable()
class CalculateFeesResponse extends Responsable<CalculateFeesResponseData> {
  factory CalculateFeesResponse.fromJson(Map<String, dynamic> json) => _$CalculateFeesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CalculateFeesResponseToJson(this);

  CalculateFeesResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateAmountsResponseData extends Decodable {
  int? base;
  List<CalculateItem>? items;
  int? shipping;
  double? taxRate;

  int? subtotal;
  int? serviceFee;
  int? discount;
  int? surcharge;
  int? paymentAdj;
  int? tax;
  int? total;

  CalculateAmountsResponseData(
      {this.base,
      this.items,
      this.shipping,
      this.taxRate,
      this.subtotal,
      this.serviceFee,
      this.discount,
      this.surcharge,
      this.paymentAdj,
      this.tax,
      this.total});

  @override
  Map<String, dynamic> toJson() => _$CalculateAmountsResponseDataToJson(this);

  factory CalculateAmountsResponseData.fromJson(Map<String, dynamic> json) =>
      _$CalculateAmountsResponseDataFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateFeesResponseData extends Decodable {
  int? serviceFee;
  PaymentAdjustmentRequest? paymentAdjustment;
  Map<String, int>? paymentTypeTotals;
  Map<String, int>? paymentTypeTaxes;
  int? requestedAmount;
  int? discountAmount;
  int? surcharge;


  CalculateFeesResponseData({this.serviceFee, this.paymentAdjustment, this.paymentTypeTotals, this.paymentTypeTaxes,
      this.requestedAmount, this.discountAmount, this.surcharge});

  @override
  Map<String, dynamic> toJson() => _$CalculateFeesResponseDataToJson(this);

  factory CalculateFeesResponseData.fromJson(Map<String, dynamic> json) => _$CalculateFeesResponseDataFromJson(json);
}
