import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/dashboard/response.dart';

class NewsSearchRequest extends Searchable<NewsSearchResponse> {
  @override
  String getUrl() => '/dashboard/news';

  @override
  NewsSearchResponse buildResponse(Map<String, dynamic> json) {
    return NewsSearchResponse.fromJson(json);
  }
}

class RecurringStatsSearchRequest
    extends Searchable<RecurringStatsSearchResponse> {
  @override
  String getUrl() => '/dashboard/stats/recurring';

  @override
  RecurringStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return RecurringStatsSearchResponse.fromJson(json);
  }
}

class SettlementStatsSearchRequest
    extends Searchable<SettlementStatsSearchResponse> {
  @override
  String getUrl() => '/dashboard/stats/settlement';

  @override
  SettlementStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return SettlementStatsSearchResponse.fromJson(json);
  }
}

class TransactionStatsSearchRequest
    extends Searchable<TransactionStatsSearchResponse> {
  @override
  String getUrl() => '/dashboard/stats/transaction';

  @override
  TransactionStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return TransactionStatsSearchResponse.fromJson(json);
  }
}

class InvoiceStatsSearchRequest extends Searchable<InvoiceStatsSearchResponse> {
  @override
  String getUrl() => '/dashboard/stats/invoice';

  @override
  InvoiceStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return InvoiceStatsSearchResponse.fromJson(json);
  }
}
