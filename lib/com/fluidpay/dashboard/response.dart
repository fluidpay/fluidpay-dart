import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class NewsSearchResponse extends Responsable<List<NewsResponseData>> {
  NewsSearchResponse();

  factory NewsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsSearchResponseToJson(this);
}

@JsonSerializable()
class RecurringStatsSearchResponse
    extends Responsable<RecurringStatsResponseData> {
  RecurringStatsSearchResponse();

  factory RecurringStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$RecurringStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RecurringStatsSearchResponseToJson(this);
}

@JsonSerializable()
class SettlementStatsSearchResponse
    extends Responsable<SettlementStatsResponseData> {
  SettlementStatsSearchResponse();

  factory SettlementStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SettlementStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SettlementStatsSearchResponseToJson(this);
}

@JsonSerializable()
class TransactionStatsSearchResponse
    extends Responsable<TransactionStatsResponseData> {
  TransactionStatsSearchResponse();

  factory TransactionStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionStatsSearchResponseToJson(this);
}

@JsonSerializable()
class InvoiceStatsSearchResponse extends Responsable<InvoiceStatsResponseData> {
  InvoiceStatsSearchResponse();

  factory InvoiceStatsSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceStatsSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceStatsSearchResponseToJson(this);
}

@JsonSerializable()
class SettlementStatsResponseData extends Decodable {
  List<XYResponse> captured;
  List<XYResponse> refunded;

  SettlementStatsResponseData();

  factory SettlementStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$SettlementStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SettlementStatsResponseDataToJson(this);
}

@JsonSerializable()
class RecurringStatsResponseData extends Decodable {
  @JsonKey(name: 'customer_count')
  int customerCount;
  @JsonKey(name: 'subscription_count')
  int subscriptionCount;
  RecurringStatsResponseData();

  factory RecurringStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$RecurringStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecurringStatsResponseDataToJson(this);
}

@JsonSerializable()
class NewsResponseData extends Decodable {
  String id;
  @JsonKey(name: 'account_type_id')
  String accountTypeID;
  @JsonKey(name: 'partner_id')
  String partnerID;
  String title;
  @JsonKey(name: 'author_name')
  String authorName;
  String message;
  String visibility;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  NewsResponseData();

  factory NewsResponseData.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NewsResponseDataToJson(this);
}

@JsonSerializable()
class TransactionStatsResponseData extends Decodable {
  @JsonKey(name: 'transaction_count')
  List<XYResponse> transactionCount;
  @JsonKey(name: 'sale_count')
  List<XYResponse> saleCount;
  @JsonKey(name: 'refund_count')
  List<XYResponse> refundCount;
  @JsonKey(name: 'authorize_count')
  List<XYResponse> authorizeCount;
  @JsonKey(name: 'avg_authorized_ticket')
  List<XYResponse> avgAuthorizedTicket;
  @JsonKey(name: 'avg_refund_ticket')
  List<XYResponse> avgRefundTicket;

  TransactionStatsResponseData();

  factory TransactionStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionStatsResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceStatsResponseData extends Decodable {
  @JsonKey(name: 'outstanding')
  OutstandingResponse outstanding;
  @JsonKey(name: 'failed')
  FailedResponse failed;
  @JsonKey(name: 'paid')
  PaidResponse paid;

  InvoiceStatsResponseData();

  factory InvoiceStatsResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceStatsResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceStatsResponseDataToJson(this);
}

@JsonSerializable()
class OutstandingResponse extends Decodable {
  @JsonKey(name: 'total')
  CntAmtResponse total;
  @JsonKey(name: 'next_30_days')
  CntAmtResponse next30days;
  @JsonKey(name: 'past_due')
  CntAmtResponse pastDue;

  OutstandingResponse();

  factory OutstandingResponse.fromJson(Map<String, dynamic> json) =>
      _$OutstandingResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$OutstandingResponseToJson(this);
}

@JsonSerializable()
class FailedResponse extends Decodable {
  @JsonKey(name: 'total')
  CntAmtResponse total;
  @JsonKey(name: 'last_30_days')
  CntAmtResponse last30days;
  @JsonKey(name: 'past_due')
  CntAmtResponse pastDue;

  FailedResponse();

  factory FailedResponse.fromJson(Map<String, dynamic> json) =>
      _$FailedResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FailedResponseToJson(this);
}

@JsonSerializable()
class PaidResponse extends Decodable {
  @JsonKey(name: 'total')
  CntAmtResponse total;
  @JsonKey(name: 'last_30_days')
  CntAmtResponse last30days;

  PaidResponse();

  factory PaidResponse.fromJson(Map<String, dynamic> json) =>
      _$PaidResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaidResponseToJson(this);
}

@JsonSerializable()
class CntAmtResponse {
  int count;
  int amount;

  CntAmtResponse();

  factory CntAmtResponse.fromJson(Map<String, dynamic> json) =>
      _$CntAmtResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CntAmtResponseToJson(this);
}

@JsonSerializable()
class XYResponse {
  int x;
  int y;

  XYResponse();

  factory XYResponse.fromJson(Map<String, dynamic> json) =>
      _$XYResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$XYResponseToJson(this);
}
