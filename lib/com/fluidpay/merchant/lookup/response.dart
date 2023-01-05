import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class BinLookupResponse extends Responsable<BinLookupData> {
  BinLookupResponse();

  factory BinLookupResponse.fromJson(Map<String, dynamic> json) => _$BinLookupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BinLookupResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BinLookupData extends Decodable {
  String bin;
  String cardBrand;
  String issuingBank;
  String cardType;
  String cardLevelGeneric;
  String country;
  bool isSurchargeable;

  BinLookupData(this.bin, this.cardBrand, this.issuingBank, this.cardType, this.cardLevelGeneric,
      this.country, this.isSurchargeable);

  factory BinLookupData.fromJson(Map<String, dynamic> json) => _$BinLookupDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BinLookupDataToJson(this);
}

@JsonSerializable()
class FeeLookupResponse extends Responsable<FeeLookupData> {
  FeeLookupResponse();

  factory FeeLookupResponse.fromJson(Map<String, dynamic> json) => _$FeeLookupResponseFromJson(json);

  Map<String, dynamic> toJson() => _$FeeLookupResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeeLookupData extends Decodable {
  int? serviceFee;
  PaymentAdjustmentRequest? paymentAdjustment;
  int? requestedAmount;
  int? discountAmount;
  int? surcharge;

  FeeLookupData(
      {this.serviceFee, this.paymentAdjustment, this.requestedAmount, this.discountAmount, this.surcharge});

  factory FeeLookupData.fromJson(Map<String, dynamic> json) => _$FeeLookupDataFromJson(json);

  @override
  Map<String, dynamic>? toJson() => _$FeeLookupDataToJson(this);
}
