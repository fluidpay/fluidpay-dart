// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateAmountsResponse _$CalculateAmountsResponseFromJson(
    Map<String, dynamic> json) {
  return CalculateAmountsResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : CalculateAmountsResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CalculateAmountsResponseToJson(
    CalculateAmountsResponse instance) {
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

CalculateFeesResponse _$CalculateFeesResponseFromJson(
    Map<String, dynamic> json) {
  return CalculateFeesResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : CalculateFeesResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CalculateFeesResponseToJson(
    CalculateFeesResponse instance) {
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

CalculateAmountsResponseData _$CalculateAmountsResponseDataFromJson(
    Map<String, dynamic> json) {
  return CalculateAmountsResponseData(
    base: json['base'] as int?,
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => CalculateItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    shipping: json['shipping'] as int?,
    taxRate: (json['tax_rate'] as num?)?.toDouble(),
    subtotal: json['subtotal'] as int?,
    serviceFee: json['service_fee'] as int?,
    discount: json['discount'] as int?,
    surcharge: json['surcharge'] as int?,
    paymentAdj: json['payment_adj'] as int?,
    tax: json['tax'] as int?,
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$CalculateAmountsResponseDataToJson(
    CalculateAmountsResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('base', instance.base);
  writeNotNull('items', instance.items);
  writeNotNull('shipping', instance.shipping);
  writeNotNull('tax_rate', instance.taxRate);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('service_fee', instance.serviceFee);
  writeNotNull('discount', instance.discount);
  writeNotNull('surcharge', instance.surcharge);
  writeNotNull('payment_adj', instance.paymentAdj);
  writeNotNull('tax', instance.tax);
  writeNotNull('total', instance.total);
  return val;
}

CalculateFeesResponseData _$CalculateFeesResponseDataFromJson(
    Map<String, dynamic> json) {
  return CalculateFeesResponseData(
    serviceFee: json['service_fee'] as int?,
    paymentAdjustment: json['payment_adjustment'] == null
        ? null
        : PaymentAdjustmentRequest.fromJson(
            json['payment_adjustment'] as Map<String, dynamic>),
    paymentTypeTotals:
        (json['payment_type_totals'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    paymentTypeTaxes:
        (json['payment_type_taxes'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, e as int),
    ),
    requestedAmount: json['requested_amount'] as int?,
    discountAmount: json['discount_amount'] as int?,
    surcharge: json['surcharge'] as int?,
  );
}

Map<String, dynamic> _$CalculateFeesResponseDataToJson(
    CalculateFeesResponseData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('service_fee', instance.serviceFee);
  writeNotNull('payment_adjustment', instance.paymentAdjustment);
  writeNotNull('payment_type_totals', instance.paymentTypeTotals);
  writeNotNull('payment_type_taxes', instance.paymentTypeTaxes);
  writeNotNull('requested_amount', instance.requestedAmount);
  writeNotNull('discount_amount', instance.discountAmount);
  writeNotNull('surcharge', instance.surcharge);
  return val;
}
