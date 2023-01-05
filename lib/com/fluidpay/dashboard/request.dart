import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/dashboard/response.dart';

class NewsSearchRequest extends Searchable<NewsSearchResponse> {
  @override
  String getPath() => '/dashboard/news';

  @override
  Method getRequestMethod() => Method.GET;

  @override
  NewsSearchResponse buildResponse(Map<String, dynamic> json) {
    return NewsSearchResponse.fromJson(json);
  }
}

class RecurringStatsSearchRequest
    extends Searchable<RecurringStatsSearchResponse> {
  @override
  String getPath() => '/dashboard/stats/recurring';

  @override
  Method getRequestMethod() => Method.GET;

  @override
  RecurringStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return RecurringStatsSearchResponse.fromJson(json);
  }
}

class SettlementStatsSearchRequest
    extends Searchable<SettlementStatsSearchResponse> {
  @override
  String getPath() => '/dashboard/stats/settlement';

  @override
  Method getRequestMethod() => Method.GET;

  @override
  SettlementStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return SettlementStatsSearchResponse.fromJson(json);
  }
}

class TransactionStatsSearchRequest
    extends Searchable<TransactionStatsSearchResponse> {
  @override
  String getPath() => '/dashboard/stats/transaction';

  @override
  Method getRequestMethod() => Method.GET;

  @override
  TransactionStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return TransactionStatsSearchResponse.fromJson(json);
  }
}

class InvoiceStatsSearchRequest extends Searchable<InvoiceStatsSearchResponse> {
  @override
  String getPath() => '/dashboard/stats/invoice';

  @override
  Method getRequestMethod() => Method.GET;

  @override
  InvoiceStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return InvoiceStatsSearchResponse.fromJson(json);
  }
}

class CartStatsSearchRequest extends Searchable<CartStatsSearchResponse> {
  int? interval;

  CartStatsSearchRequest({this.interval});

  @override
  Map<String, String>? getQueryParams() => interval != null ? {'interval': '$interval'}: null;

  @override
  String getPath() => '/dashboard/stats/cart';

  @override
  Method getRequestMethod() => Method.GET;

  @override
  CartStatsSearchResponse buildResponse(Map<String, dynamic> json) {
    return CartStatsSearchResponse.fromJson(json);
  }
}
