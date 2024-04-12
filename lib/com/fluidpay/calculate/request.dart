import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/typed_value.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:fluidpay/com/fluidpay/calculate/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';

part 'request.g.dart';

class AmountsFlags extends Decodable {
  bool skipCashDiscount;
  bool skipSurcharge;
  bool skipServiceFee;
  bool skipConsumerChoice;
  bool? includeDefaultTaxToTotal;
  bool? taxExempt;
  bool processorSurchargeFallback;
  bool? addTaxToTotal;

  AmountsFlags({
    this.skipCashDiscount = false,
    this.skipSurcharge = false,
    this.skipServiceFee = false,
    this.skipConsumerChoice = false,
    this.includeDefaultTaxToTotal,
    this.taxExempt,
    this.processorSurchargeFallback = false,
    this.addTaxToTotal,
  });

  @override
  Map<String, dynamic>? toJson() => {
        'skip_cash_discount': skipCashDiscount,
        'skip_surcharge': skipSurcharge,
        'skip_service_fee': skipServiceFee,
        'skip_consumer_choice': skipConsumerChoice,
        'include_default_tax_to_total': includeDefaultTaxToTotal,
        'tax_exempt': taxExempt,
        'processor_surcharge_fallback': processorSurchargeFallback,
        'add_tax_to_total': addTaxToTotal,
      };
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateAmountsRequest extends Creatable<CalculateAmountsResponse> {
  String? type;
  String? typeID;
  String? processorID;
  String? paymentMethod;
  String? ccBin;
  String? state;

  List<LineItem>? lineItems;
  int? subtotal;
  int? amount;
  TypedValue? taxOverrideAmount;

  TypedValue? shippingAmount;
  List<TypedValue>? addonAmount;
  List<TypedValue>? discountAmount;
  TypedValue? dutyAmount;
  TypedValue? tipAmount;
  TypedValue? nationalTaxAmount;
  TypedValue? localTaxAmount;
  TypedValue? serviceFee;
  TypedValue? surcharge;

  int? base;
  int? shipping;
  double? taxRate;
  String? currency;
  PaymentAdjustmentRequest? paymentAdj;
  List<CalculateItem>? items;
  CalculateSettings? settings;
  AmountsFlags? flags;

  CalculateAmountsRequest({
    this.type,
    this.typeID,
    this.processorID,
    this.paymentMethod,
    this.ccBin,
    this.state,
    this.base,
    this.shipping,
    this.taxRate,
    this.currency,
    this.paymentAdj,
    this.items,
    this.settings,
    this.lineItems,
    this.subtotal,
    this.amount,
    this.taxOverrideAmount,
    this.shippingAmount,
    this.addonAmount,
    this.discountAmount,
    this.dutyAmount,
    this.tipAmount,
    this.nationalTaxAmount,
    this.localTaxAmount,
    this.serviceFee,
    this.surcharge,
  });

  @override
  CalculateAmountsResponse buildResponse(Map<String, dynamic> json) =>
      CalculateAmountsResponse.fromJson(json);

  @override
  String getPath() => '/calculate/amounts';

  @override
  Map<String, dynamic> toJson() => _$CalculateAmountsRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateFeesRequest extends Creatable<CalculateFeesResponse> {
  String? type;
  @JsonKey(name: 'type_id')
  String? typeID;
  String? state;
  String? bin;
  String? paymentMethod;
  int? baseAmount;
  List<LineItem>? lineItems;
  int? tax;
  @JsonKey(name: 'processor_id')
  String? processorID;
  PaymentAdjustmentRequest? surcharge;

  CalculateFeesRequest(
      {this.type,
      this.typeID,
      this.state,
      this.bin,
      this.paymentMethod,
      this.baseAmount,
      this.lineItems,
      this.tax,
      this.processorID,
      this.surcharge});

  @override
  CalculateFeesResponse buildResponse(Map<String, dynamic> json) => CalculateFeesResponse.fromJson(json);

  @override
  String getPath() => '/lookup/fees';

  @override
  Map<String, dynamic> toJson() => _$CalculateFeesRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateSettings extends Decodable {
  String? cashDiscount;
  String? surcharge;
  String? consumerChoice;

  CalculateSettings({this.cashDiscount, this.surcharge, this.consumerChoice});

  factory CalculateSettings.fromJson(Map<String, dynamic> json) => _$CalculateSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CalculateSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateItem extends Decodable {
  int? qty;
  int? base;
  double? local_tax;
  double? national_tax;

  CalculateItem({this.qty, this.base, this.local_tax, this.national_tax});

  factory CalculateItem.fromJson(Map<String, dynamic> json) => _$CalculateItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CalculateItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AmountsIncluded extends Decodable {
  int? shippingAmount;
  List<int>? addonAmounts;
  List<int>? discountAmounts;
  int? discountAmount;
  int? dutyAmount;
  int? tipAmount;
  int? additionalAmounts;
  int? taxAmount;
  int? nationalTaxAmount;
  int? localTaxAmount;
  int? serviceFee;
  int? surcharge;

  AmountsIncluded({
    this.shippingAmount,
    this.addonAmounts,
    this.discountAmounts,
    this.discountAmount,
    this.dutyAmount,
    this.tipAmount,
    this.additionalAmounts,
    this.taxAmount,
    this.nationalTaxAmount,
    this.localTaxAmount,
    this.serviceFee,
    this.surcharge,
  });

  factory AmountsIncluded.fromJson(Map<String, dynamic> json) => _$AmountsIncludedFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AmountsIncludedToJson(this);
}
