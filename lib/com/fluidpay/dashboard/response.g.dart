// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsSearchResponse _$NewsSearchResponseFromJson(Map<String, dynamic> json) {
  return NewsSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map((e) => NewsResponseData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$NewsSearchResponseToJson(NewsSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

RecurringStatsSearchResponse _$RecurringStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return RecurringStatsSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : RecurringStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$RecurringStatsSearchResponseToJson(
    RecurringStatsSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

SettlementStatsSearchResponse _$SettlementStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return SettlementStatsSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : SettlementStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SettlementStatsSearchResponseToJson(
    SettlementStatsSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

TransactionStatsSearchResponse _$TransactionStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionStatsSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : TransactionStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionStatsSearchResponseToJson(
    TransactionStatsSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

InvoiceStatsSearchResponse _$InvoiceStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return InvoiceStatsSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : InvoiceStatsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$InvoiceStatsSearchResponseToJson(
    InvoiceStatsSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

CartStatsSearchResponse _$CartStatsSearchResponseFromJson(
    Map<String, dynamic> json) {
  return CartStatsSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : CartStatsResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartStatsSearchResponseToJson(
    CartStatsSearchResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

SettlementStatsResponseData _$SettlementStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return SettlementStatsResponseData()
    ..captured = (json['captured'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..refunded = (json['refunded'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SettlementStatsResponseDataToJson(
    SettlementStatsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('captured', instance.captured);
  writeNotNull('refunded', instance.refunded);
  return val;
}

RecurringStatsResponseData _$RecurringStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return RecurringStatsResponseData()
    ..customerCount = json['customer_count'] as int?
    ..subscriptionCount = json['subscription_count'] as int?;
}

Map<String, dynamic> _$RecurringStatsResponseDataToJson(
    RecurringStatsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_count', instance.customerCount);
  writeNotNull('subscription_count', instance.subscriptionCount);
  return val;
}

NewsResponseData _$NewsResponseDataFromJson(Map<String, dynamic> json) {
  return NewsResponseData()
    ..id = json['id'] as String?
    ..accountTypeId = json['account_type_id'] as String?
    ..partnerId = json['partner_id'] as String?
    ..title = json['title'] as String?
    ..authorName = json['author_name'] as String?
    ..message = json['message'] as String?
    ..visibility = json['visibility'] as String?
    ..createdAt = json['created_at'] as String?
    ..updatedAt = json['updated_at'] as String?;
}

Map<String, dynamic> _$NewsResponseDataToJson(NewsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('account_type_id', instance.accountTypeId);
  writeNotNull('partner_id', instance.partnerId);
  writeNotNull('title', instance.title);
  writeNotNull('author_name', instance.authorName);
  writeNotNull('message', instance.message);
  writeNotNull('visibility', instance.visibility);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  return val;
}

TransactionStatsResponseData _$TransactionStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return TransactionStatsResponseData()
    ..transactionAmountSum = (json['transaction_amount_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..transactionCount = (json['transaction_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..saleCount = (json['sale_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..refundCount = (json['refund_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..authorizeCount = (json['authorize_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..avgAuthorizedTicket = (json['avg_authorized_ticket'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..avgRefundTicket = (json['avg_refund_ticket'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..shippingCount = (json['shipping_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..refundSum = (json['refund_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..verificationCount = (json['verification_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..voidCount = (json['void_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..captureCount = (json['capture_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..creditCount = (json['credit_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..serviceFeeSum = (json['service_fee_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..surchargeSum = (json['surcharge_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..tipSum = (json['tip_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..tipCount = (json['tip_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..avgTip = (json['avg_tip'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..discountAmountSum = (json['discount_amount_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..discountAmountCount = (json['discount_amount_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..avgDiscountAmount = (json['avg_discount_amount'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..taxAmountSum = (json['tax_amount_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..nationalTaxAmountSum = (json['national_tax_amount_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..responseCodes = (json['response_codes'] as List<dynamic>?)
        ?.map((e) => ResponseCodeXYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..billingCountryCount = (json['billing_country_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..billingStateCount = (json['billing_state_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..billingCityCount = (json['billing_city_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..shippingCountryCount = (json['shipping_country_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..shippingStateCount = (json['shipping_state_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..shippingCityCount = (json['shipping_city_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$TransactionStatsResponseDataToJson(
    TransactionStatsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('transaction_amount_sum', instance.transactionAmountSum);
  writeNotNull('transaction_count', instance.transactionCount);
  writeNotNull('sale_count', instance.saleCount);
  writeNotNull('refund_count', instance.refundCount);
  writeNotNull('authorize_count', instance.authorizeCount);
  writeNotNull('avg_authorized_ticket', instance.avgAuthorizedTicket);
  writeNotNull('avg_refund_ticket', instance.avgRefundTicket);
  writeNotNull('shipping_count', instance.shippingCount);
  writeNotNull('refund_sum', instance.refundSum);
  writeNotNull('verification_count', instance.verificationCount);
  writeNotNull('void_count', instance.voidCount);
  writeNotNull('capture_count', instance.captureCount);
  writeNotNull('credit_count', instance.creditCount);
  writeNotNull('service_fee_sum', instance.serviceFeeSum);
  writeNotNull('surcharge_sum', instance.surchargeSum);
  writeNotNull('tip_sum', instance.tipSum);
  writeNotNull('tip_count', instance.tipCount);
  writeNotNull('avg_tip', instance.avgTip);
  writeNotNull('discount_amount_sum', instance.discountAmountSum);
  writeNotNull('discount_amount_count', instance.discountAmountCount);
  writeNotNull('avg_discount_amount', instance.avgDiscountAmount);
  writeNotNull('tax_amount_sum', instance.taxAmountSum);
  writeNotNull('national_tax_amount_sum', instance.nationalTaxAmountSum);
  writeNotNull('response_codes', instance.responseCodes);
  writeNotNull('billing_country_count', instance.billingCountryCount);
  writeNotNull('billing_state_count', instance.billingStateCount);
  writeNotNull('billing_city_count', instance.billingCityCount);
  writeNotNull('shipping_country_count', instance.shippingCountryCount);
  writeNotNull('shipping_state_count', instance.shippingStateCount);
  writeNotNull('shipping_city_count', instance.shippingCityCount);
  return val;
}

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
    InvoiceStatsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('outstanding', instance.outstanding);
  writeNotNull('failed', instance.failed);
  writeNotNull('paid', instance.paid);
  return val;
}

CartStatsResponseData _$CartStatsResponseDataFromJson(
    Map<String, dynamic> json) {
  return CartStatsResponseData()
    ..productOrderCount = (json['product_order_count'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList()
    ..cartAmountSum = (json['cart_amount_sum'] as List<dynamic>?)
        ?.map((e) => XYResponse.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$CartStatsResponseDataToJson(
    CartStatsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_order_count', instance.productOrderCount);
  writeNotNull('cart_amount_sum', instance.cartAmountSum);
  return val;
}

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

Map<String, dynamic> _$OutstandingResponseToJson(OutstandingResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('next_30_days', instance.next30days);
  writeNotNull('past_due', instance.pastDue);
  return val;
}

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

Map<String, dynamic> _$FailedResponseToJson(FailedResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('last_30_days', instance.last30days);
  writeNotNull('past_due', instance.pastDue);
  return val;
}

PaidResponse _$PaidResponseFromJson(Map<String, dynamic> json) {
  return PaidResponse()
    ..total = json['total'] == null
        ? null
        : CntAmtResponse.fromJson(json['total'] as Map<String, dynamic>)
    ..last30days = json['last_30_days'] == null
        ? null
        : CntAmtResponse.fromJson(json['last_30_days'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaidResponseToJson(PaidResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('total', instance.total);
  writeNotNull('last_30_days', instance.last30days);
  return val;
}

CntAmtResponse _$CntAmtResponseFromJson(Map<String, dynamic> json) {
  return CntAmtResponse()
    ..count = json['count'] as int?
    ..amount = json['amount'] as int?;
}

Map<String, dynamic> _$CntAmtResponseToJson(CntAmtResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  writeNotNull('amount', instance.amount);
  return val;
}

XYResponse _$XYResponseFromJson(Map<String, dynamic> json) {
  return XYResponse()
    ..x = json['x'] as int?
    ..y = json['y'] as int?;
}

Map<String, dynamic> _$XYResponseToJson(XYResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  return val;
}

ResponseCodeXYResponse _$ResponseCodeXYResponseFromJson(
    Map<String, dynamic> json) {
  return ResponseCodeXYResponse()
    ..x = json['x'] as int?
    ..y = (json['y'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    );
}

Map<String, dynamic> _$ResponseCodeXYResponseToJson(
    ResponseCodeXYResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('x', instance.x);
  writeNotNull('y', instance.y);
  return val;
}
