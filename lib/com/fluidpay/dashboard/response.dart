import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsSearchResponse extends Responsable<List<NewsResponseData>> {
  NewsSearchResponse();

  factory NewsSearchResponse.fromJson(Map<String, dynamic> json) => _$NewsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RecurringStatsSearchResponse extends Responsable<RecurringStatsResponseData> {
  RecurringStatsSearchResponse();

  factory RecurringStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RecurringStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecurringStatsSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SettlementStatsSearchResponse extends Responsable<SettlementStatsResponseData> {
  SettlementStatsSearchResponse();

  factory SettlementStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SettlementStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SettlementStatsSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionStatsSearchResponse extends Responsable<TransactionStatsResponseData> {
  TransactionStatsSearchResponse();

  factory TransactionStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatsSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceStatsSearchResponse extends Responsable<InvoiceStatsResponseData> {
  InvoiceStatsSearchResponse();

  factory InvoiceStatsSearchResponse.fromJson(Map<String, dynamic> json) => _$InvoiceStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceStatsSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartStatsSearchResponse extends Responsable<CartStatsResponseData> {
  CartStatsSearchResponse();

  factory CartStatsSearchResponse.fromJson(Map<String, dynamic> json) => _$CartStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CartStatsSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SettlementStatsResponseData extends Decodable {
  List<XYResponse>? captured;
  List<XYResponse>? refunded;

  SettlementStatsResponseData();

  factory SettlementStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$SettlementStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SettlementStatsResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RecurringStatsResponseData extends Decodable {
  int? customerCount;
  int? subscriptionCount;

  RecurringStatsResponseData();

  factory RecurringStatsResponseData.fromJson(Map<String, dynamic> json) => _$RecurringStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecurringStatsResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NewsResponseData extends Decodable {
  String? id;
  String? accountTypeId;
  String? partnerId;
  String? title;
  String? authorName;
  String? message;
  String? visibility;
  String? createdAt;
  String? updatedAt;

  NewsResponseData();

  factory NewsResponseData.fromJson(Map<String, dynamic> json) => _$NewsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NewsResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionStatsResponseData extends Decodable {
  List<XYResponse>? transactionAmountSum;
  List<XYResponse>? transactionCount;
  List<XYResponse>? saleCount;
  List<XYResponse>? refundCount;
  List<XYResponse>? authorizeCount;
  List<XYResponse>? avgAuthorizedTicket;
  List<XYResponse>? avgRefundTicket;
  List<XYResponse>? shippingCount;
  List<XYResponse>? refundSum;
  List<XYResponse>? verificationCount;
  List<XYResponse>? voidCount;
  List<XYResponse>? captureCount;
  List<XYResponse>? creditCount;
  List<XYResponse>? serviceFeeSum;
  List<XYResponse>? surchargeSum;
  List<XYResponse>? tipSum;
  List<XYResponse>? tipCount;
  List<XYResponse>? avgTip;
  List<XYResponse>? discountAmountSum;
  List<XYResponse>? discountAmountCount;
  List<XYResponse>? avgDiscountAmount;
  List<XYResponse>? taxAmountSum;
  List<XYResponse>? nationalTaxAmountSum;
  List<ResponseCodeXYResponse>? responseCodes;
  List<XYResponse>? billingCountryCount;
  List<XYResponse>? billingStateCount;
  List<XYResponse>? billingCityCount;
  List<XYResponse>? shippingCountryCount;
  List<XYResponse>? shippingStateCount;
  List<XYResponse>? shippingCityCount;

  TransactionStatsResponseData();

  factory TransactionStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionStatsResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceStatsResponseData extends Decodable {
  OutstandingResponse? outstanding;
  FailedResponse? failed;
  PaidResponse? paid;

  InvoiceStatsResponseData();

  factory InvoiceStatsResponseData.fromJson(Map<String, dynamic> json) => _$InvoiceStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceStatsResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartStatsResponseData extends Decodable {
  List<XYResponse>? productOrderCount;
  List<XYResponse>? cartAmountSum;

  CartStatsResponseData();

  factory CartStatsResponseData.fromJson(Map<String, dynamic> json) => _$CartStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartStatsResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class OutstandingResponse extends Decodable {
  CntAmtResponse? total;
  @JsonKey(name: 'next_30_days')
  CntAmtResponse? next30days;
  CntAmtResponse? pastDue;

  OutstandingResponse();

  factory OutstandingResponse.fromJson(Map<String, dynamic> json) => _$OutstandingResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OutstandingResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class FailedResponse extends Decodable {
  CntAmtResponse? total;
  @JsonKey(name: 'last_30_days')
  CntAmtResponse? last30days;
  CntAmtResponse? pastDue;

  FailedResponse();

  factory FailedResponse.fromJson(Map<String, dynamic> json) => _$FailedResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FailedResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaidResponse extends Decodable {
  CntAmtResponse? total;
  @JsonKey(name: 'last_30_days')
  CntAmtResponse? last30days;

  PaidResponse();

  factory PaidResponse.fromJson(Map<String, dynamic> json) => _$PaidResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaidResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CntAmtResponse extends Decodable {
  int? count;
  int? amount;

  CntAmtResponse();

  factory CntAmtResponse.fromJson(Map<String, dynamic> json) => _$CntAmtResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CntAmtResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class XYResponse extends Decodable {
  int? x;
  int? y;

  XYResponse();

  factory XYResponse.fromJson(Map<String, dynamic> json) => _$XYResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$XYResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ResponseCodeXYResponse extends Decodable {
  int? x;
  Map<String, int>? y;

  ResponseCodeXYResponse();

  factory ResponseCodeXYResponse.fromJson(Map<String, dynamic> json) => _$ResponseCodeXYResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResponseCodeXYResponseToJson(this);
}
