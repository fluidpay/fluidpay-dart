// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateAmountsRequest _$CalculateAmountsRequestFromJson(
    Map<String, dynamic> json) {
  return CalculateAmountsRequest(
    type: json['type'] as String?,
    typeID: json['type_id'] as String?,
    processorID: json['processor_id'] as String?,
    paymentMethod: json['payment_method'] as String?,
    ccBin: json['cc_bin'] as String?,
    state: json['state'] as String?,
    base: json['base'] as int?,
    shipping: json['shipping'] as int?,
    taxRate: (json['tax_rate'] as num?)?.toDouble(),
    currency: json['currency'] as String?,
    paymentAdj: json['payment_adj'] == null
        ? null
        : PaymentAdjustmentRequest.fromJson(
            json['payment_adj'] as Map<String, dynamic>),
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => CalculateItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    settings: json['settings'] == null
        ? null
        : CalculateSettings.fromJson(json['settings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CalculateAmountsRequestToJson(
    CalculateAmountsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('type_id', instance.typeID);
  writeNotNull('processor_id', instance.processorID);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('cc_bin', instance.ccBin);
  writeNotNull('state', instance.state);
  writeNotNull('base', instance.base);
  writeNotNull('shipping', instance.shipping);
  writeNotNull('tax_rate', instance.taxRate);
  writeNotNull('currency', instance.currency);
  writeNotNull('payment_adj', instance.paymentAdj);
  writeNotNull('items', instance.items);
  writeNotNull('settings', instance.settings);
  return val;
}

CalculateFeesRequest _$CalculateFeesRequestFromJson(Map<String, dynamic> json) {
  return CalculateFeesRequest(
    type: json['type'] as String?,
    typeID: json['type_id'] as String?,
    state: json['state'] as String?,
    bin: json['bin'] as String?,
    paymentMethod: json['payment_method'] as String?,
    baseAmount: json['base_amount'] as int?,
    lineItems: (json['line_items'] as List<dynamic>?)
        ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    tax: json['tax'] as int?,
    processorID: json['processor_id'] as String?,
    surcharge: json['surcharge'] == null
        ? null
        : PaymentAdjustmentRequest.fromJson(
            json['surcharge'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CalculateFeesRequestToJson(
    CalculateFeesRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('type_id', instance.typeID);
  writeNotNull('state', instance.state);
  writeNotNull('bin', instance.bin);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('base_amount', instance.baseAmount);
  writeNotNull('line_items', instance.lineItems);
  writeNotNull('tax', instance.tax);
  writeNotNull('processor_id', instance.processorID);
  writeNotNull('surcharge', instance.surcharge);
  return val;
}

CalculateSettings _$CalculateSettingsFromJson(Map<String, dynamic> json) {
  return CalculateSettings(
    cashDiscount: json['cash_discount'] as String?,
    surcharge: json['surcharge'] as String?,
    consumerChoice: json['consumer_choice'] as String?,
  );
}

Map<String, dynamic> _$CalculateSettingsToJson(CalculateSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cash_discount', instance.cashDiscount);
  writeNotNull('surcharge', instance.surcharge);
  writeNotNull('consumer_choice', instance.consumerChoice);
  return val;
}

CalculateItem _$CalculateItemFromJson(Map<String, dynamic> json) {
  return CalculateItem(
    qty: json['qty'] as int?,
    base: json['base'] as int?,
    local_tax: (json['local_tax'] as num?)?.toDouble(),
    national_tax: (json['national_tax'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$CalculateItemToJson(CalculateItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('qty', instance.qty);
  writeNotNull('base', instance.base);
  writeNotNull('local_tax', instance.local_tax);
  writeNotNull('national_tax', instance.national_tax);
  return val;
}
