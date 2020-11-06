import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/response_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class TransactionCreateResponse extends Responsable<TransactionResponseData> {
  TransactionCreateResponse();

  factory TransactionCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionCreateResponseToJson(this);
}

@JsonSerializable()
class TransactionGetResponse extends Responsable<TransactionResponseData> {
  TransactionGetResponse();

  factory TransactionGetResponse.fromJson(Map<String, dynamic> json) =>
    _$TransactionGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionGetResponseToJson(this);
}

@JsonSerializable()
class TransactionCaptureResponse extends Responsable<TransactionResponseData> {
  TransactionCaptureResponse();

  factory TransactionCaptureResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionCaptureResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionCaptureResponseToJson(this);
}

@JsonSerializable()
class TransactionVoidResponse extends Responsable<TransactionVoidResponseData> {
  TransactionVoidResponse();

  factory TransactionVoidResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionVoidResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionVoidResponseToJson(this);
}

@JsonSerializable()
class TransactionRefundResponse extends Responsable<TransactionResponseData> {
  TransactionRefundResponse();

  factory TransactionRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionRefundResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionRefundResponseToJson(this);
}

@JsonSerializable()
class TransactionCreateVaultResponse extends Responsable<TransactionCreateVaultResponseData> {
  TransactionCreateVaultResponse();

  factory TransactionCreateVaultResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateVaultResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionCreateVaultResponseToJson(this);
}

@JsonSerializable()
class TransactionEmailReceiptResponse extends Responsable<TransactionResponseData> {
  TransactionEmailReceiptResponse();

  factory TransactionEmailReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionEmailReceiptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionEmailReceiptResponseToJson(this);
}

@JsonSerializable()
class TransactionPrintReceiptResponse extends Responsable<String> {
  TransactionPrintReceiptResponse();

  factory TransactionPrintReceiptResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionPrintReceiptResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionPrintReceiptResponseToJson(this);
}

@JsonSerializable()
class TransactionTipAdjustmentResponse extends Responsable {
  TransactionTipAdjustmentResponse();

  factory TransactionTipAdjustmentResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionTipAdjustmentResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionTipAdjustmentResponseToJson(this);
}

@JsonSerializable()
class TransactionMultiResponse extends Responsable<TransactionResponseData> {
  TransactionMultiResponse();

  factory TransactionMultiResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionMultiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionMultiResponseToJson(this);
}

@JsonSerializable()
class TransactionMultiVoidResponse extends Responsable<List<TransactionMultiVoidResponseData>> {
  TransactionMultiVoidResponse();

  factory TransactionMultiVoidResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionMultiVoidResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionMultiVoidResponseToJson(this);
}

@JsonSerializable()
class TransactionMultiRefundResponse extends Responsable<TransactionResponseData> {
  TransactionMultiRefundResponse();

  factory TransactionMultiRefundResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionMultiRefundResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionMultiRefundResponseToJson(this);
}

@JsonSerializable()
class TransactionSearchResponse extends Responsable<List<TransactionResponseData>> {
  TransactionSearchResponse();

  factory TransactionSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionSearchResponseToJson(this);
}