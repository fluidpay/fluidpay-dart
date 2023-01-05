import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:fluidpay/com/fluidpay/calculate/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateAmountsRequest extends Creatable<CalculateAmountsResponse> {
  String? type;
  @JsonKey(name: 'type_id')
  String? typeID;
  @JsonKey(name: 'processor_id')
  String? processorID;
  String? paymentMethod;
  String? ccBin;
  String? state;

  int? base;
  int? shipping;
  double? taxRate;
  String? currency;
  PaymentAdjustmentRequest? paymentAdj;
  List<CalculateItem>? items;
  CalculateSettings? settings;


  CalculateAmountsRequest({this.type, this.typeID, this.processorID, this.paymentMethod, this.ccBin, this.state,
      this.base, this.shipping, this.taxRate, this.currency, this.paymentAdj, this.items, this.settings});

  @override
  CalculateAmountsResponse buildResponse(Map<String, dynamic> json) => CalculateAmountsResponse.fromJson(json);

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


  CalculateFeesRequest({this.type, this.typeID, this.state, this.bin, this.paymentMethod, this.baseAmount,
      this.lineItems, this.tax, this.processorID, this.surcharge});

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
