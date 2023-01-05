import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:fluidpay/com/fluidpay/merchant/lookup/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class BinLookupRequest extends Searchable<BinLookupResponse> {
  String? bin;
  String? state;

  BinLookupRequest({
    this.bin,
    this.state,
  });

  @override
  BinLookupResponse buildResponse(Map<String, dynamic> json) => BinLookupResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BinLookupRequestToJson(this);

  @override
  String getPath() => '/lookup/bin/protected';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FeeLookupRequest extends Searchable<FeeLookupResponse> {
  String? bin;
  String? state;
  String? paymentMethod;
  int? baseAmount;
  String? processorId;
  PaymentAdjustmentRequest? surcharge;

  FeeLookupRequest(
      {this.bin, this.state, this.paymentMethod, this.baseAmount, this.processorId, this.surcharge});

  @override
  FeeLookupResponse buildResponse(Map<String, dynamic> json) => FeeLookupResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FeeLookupRequestToJson(this);

  @override
  String getPath() => '/lookup/fees';
}
