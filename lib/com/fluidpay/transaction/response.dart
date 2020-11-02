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
class TransactionSearchResponse extends Responsable<TransactionResponseData> {
  TransactionSearchResponse();

  factory TransactionSearchResponse.fromJson(Map<String, dynamic> json) =>
    _$TransactionSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionSearchResponseToJson(this);
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