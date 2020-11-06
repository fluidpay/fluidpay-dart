// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsSearchResponse _$NewsSearchResponseFromJson(Map<String, dynamic> json) {
  return NewsSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : NewsResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$NewsSearchResponseToJson(NewsSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

RecurringStatsSearchResponse _$RecurringStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return RecurringStatsSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : RecurringStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RecurringStatsSearchResponseToJson(
        RecurringStatsSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

SettlementStatsSearchResponse _$SettlementStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return SettlementStatsSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : SettlementStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SettlementStatsSearchResponseToJson(
        SettlementStatsSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionStatsSearchResponse _$TransactionStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionStatsSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionStatsSearchResponseToJson(
        TransactionStatsSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

InvoiceStatsSearchResponse _$InvoiceStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceStatsSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : InvoiceStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceStatsSearchResponseToJson(
        InvoiceStatsSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

SettlementStatsResponseData _$SettlementStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return SettlementStatsResponseData()
    ..captured = (json['captured'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..refunded = (json['refunded'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$SettlementStatsResponseDataToJson(
        SettlementStatsResponseData instance) =>
    <String, dynamic>{
      'captured': instance.captured,
      'refunded': instance.refunded,
    };

RecurringStatsResponseData _$RecurringStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return RecurringStatsResponseData()
    ..customerCount = json['customer_count'] as int
    ..subscriptionCount = json['subscription_count'] as int;
}

Map<String, dynamic> _$RecurringStatsResponseDataToJson(
        RecurringStatsResponseData instance) =>
    <String, dynamic>{
      'customer_count': instance.customerCount,
      'subscription_count': instance.subscriptionCount,
    };

NewsResponseData _$NewsResponseDataFromJson(Map<String, dynamic> json) {
  return NewsResponseData()
    ..id = json['id'] as String
    ..accountTypeId = json['account_type_id'] as String
    ..partnerId = json['partner_id'] as String
    ..title = json['title'] as String
    ..authorName = json['author_name'] as String
    ..message = json['message'] as String
    ..visibility = json['visibility'] as String
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$NewsResponseDataToJson(NewsResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_type_id': instance.accountTypeId,
      'partner_id': instance.partnerId,
      'title': instance.title,
      'author_name': instance.authorName,
      'message': instance.message,
      'visibility': instance.visibility,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

TransactionStatsResponseData _$TransactionStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return TransactionStatsResponseData()
    ..transactionCount = (json['transaction_count'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..saleCount = (json['sale_count'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..refundCount = (json['refund_count'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..authorizeCount = (json['authorize_count'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..avgAuthorizedTicket = (json['avg_authorized_ticket'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..avgRefundTicket = (json['avg_refund_ticket'] as List)
        ?.map((e) =>
            e == null ? null : XYResponse.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TransactionStatsResponseDataToJson(
        TransactionStatsResponseData instance) =>
    <String, dynamic>{
      'transaction_count': instance.transactionCount,
      'sale_count': instance.saleCount,
      'refund_count': instance.refundCount,
      'authorize_count': instance.authorizeCount,
      'avg_authorized_ticket': instance.avgAuthorizedTicket,
      'avg_refund_ticket': instance.avgRefundTicket,
    };

InvoiceStatsResponseData _$InvoiceStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return InvoiceStatsResponseData()
    ..outstanding = json['outstanding'] == null
        ? null
        : OutstandingResponse.fromJson(
            json['outstanding'] as Map<String, dynamic>)
    ..failed = json['failed'] == null
        ? null
        : FailedResponse.fromJson(json['failed'] as Map<String, dynamic>)
    ..paid = json['paid'] == null
        ? null
        : PaidResponse.fromJson(json['paid'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceStatsResponseDataToJson(
        InvoiceStatsResponseData instance) =>
    <String, dynamic>{
      'outstanding': instance.outstanding,
      'failed': instance.failed,
      'paid': instance.paid,
    };

OutstandingResponse _$OutstandingResponseFromJson(Map<String, dynamic> json) {
  return OutstandingResponse()
    ..total = json['total'] == null
        ? null
        : CntAmtResponse.fromJson(json['total'] as Map<String, dynamic>)
    ..next30days = json['next_30_days'] == null
        ? null
        : CntAmtResponse.fromJson(json['next_30_days'] as Map<String, dynamic>)
    ..pastDue = json['past_due'] == null
        ? null
        : CntAmtResponse.fromJson(json['past_due'] as Map<String, dynamic>);
}

Map<String, dynamic> _$OutstandingResponseToJson(
        OutstandingResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'next_30_days': instance.next30days,
      'past_due': instance.pastDue,
    };

FailedResponse _$FailedResponseFromJson(Map<String, dynamic> json) {
  return FailedResponse()
    ..total = json['total'] == null
        ? null
        : CntAmtResponse.fromJson(json['total'] as Map<String, dynamic>)
    ..last30days = json['last_30_days'] == null
        ? null
        : CntAmtResponse.fromJson(json['last_30_days'] as Map<String, dynamic>)
    ..pastDue = json['past_due'] == null
        ? null
        : CntAmtResponse.fromJson(json['past_due'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FailedResponseToJson(FailedResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_30_days': instance.last30days,
      'past_due': instance.pastDue,
    };

PaidResponse _$PaidResponseFromJson(Map<String, dynamic> json) {
  return PaidResponse()
    ..total = json['total'] == null
        ? null
        : CntAmtResponse.fromJson(json['total'] as Map<String, dynamic>)
    ..last30days = json['last_30_days'] == null
        ? null
        : CntAmtResponse.fromJson(json['last_30_days'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaidResponseToJson(PaidResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'last_30_days': instance.last30days,
    };

CntAmtResponse _$CntAmtResponseFromJson(Map<String, dynamic> json) {
  return CntAmtResponse()
    ..count = json['count'] as int
    ..amount = json['amount'] as int;
}

Map<String, dynamic> _$CntAmtResponseToJson(CntAmtResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'amount': instance.amount,
    };

XYResponse _$XYResponseFromJson(Map<String, dynamic> json) {
  return XYResponse()
    ..x = json['x'] as int
    ..y = json['y'] as int;
}

Map<String, dynamic> _$XYResponseToJson(XYResponse instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
    };
