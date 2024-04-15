// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CalculateAmountsRequest _$CalculateAmountsRequestFromJson(Map<String, dynamic> json) {
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
        : PaymentAdjustmentRequest.fromJson(json['payment_adj'] as Map<String, dynamic>),
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => CalculateItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    settings: json['settings'] == null
        ? null
        : CalculateSettings.fromJson(json['settings'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CalculateAmountsRequestToJson(CalculateAmountsRequest instance) {
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

  writeNotNull('line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('amount', instance.amount);
  writeNotNull('tax_override_amount', instance.taxOverrideAmount?.toJson());
  writeNotNull('shipping_amount', instance.shippingAmount?.toJson());
  writeNotNull('addon_amount', instance.addonAmount?.map((e) => e.toJson()).toList());
  writeNotNull('discount_amount', instance.discountAmount?.map((e) => e.toJson()).toList());
  writeNotNull('duty_amount', instance.dutyAmount?.toJson());
  writeNotNull('tip_amount', instance.tipAmount?.toJson());
  writeNotNull('national_tax_amount', instance.nationalTaxAmount?.toJson());
  writeNotNull('local_tax_amount', instance.localTaxAmount?.toJson());
  writeNotNull('serviceFee', instance.serviceFee?.toJson());
  writeNotNull('surcharge', instance.surcharge?.toJson());
  writeNotNull('shipping', instance.shipping);
  writeNotNull('tax_rate', instance.taxRate);
  writeNotNull('currency', instance.currency);
  writeNotNull('payment_adj', instance.paymentAdj);
  writeNotNull('items', instance.items);
  writeNotNull('settings', instance.settings);
  writeNotNull('flags', instance.flags?.toJson());

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
        : PaymentAdjustmentRequest.fromJson(json['surcharge'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CalculateFeesRequestToJson(CalculateFeesRequest instance) {
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
  writeNotNull('line_items', instance.lineItems?.map((e) => e.toJson()).toList());
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

AmountsIncluded _$AmountsIncludedFromJson(Map<String, dynamic> json) {
  return AmountsIncluded(
    shippingAmount: json['shipping_amount'] as int?,
    addonAmounts: (json['addon_amounts'] as List<dynamic>?)?.map((e) => e as int).toList(),
    discountAmounts: (json['discount_amounts'] as List<dynamic>?)?.map((e) => e as int).toList(),
    discountAmount: json['discount_amount'] as int?,
    dutyAmount: json['duty_amount'] as int?,
    tipAmount: json['tip_amount'] as int?,
    additionalAmounts: json['additional_amounts'] as int?,
    taxAmount: json['tax_amount'] as int?,
    nationalTaxAmount: json['national_tax_amount'] as int?,
    localTaxAmount: json['local_tax_amount'] as int?,
    serviceFee: json['service_fee'] as int?,
    surcharge: json['surcharge'] as int?,
  );
}

Map<String, dynamic> _$AmountsIncludedToJson(AmountsIncluded instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shipping_amount', instance.shippingAmount);
  writeNotNull('addon_amounts', instance.addonAmounts);
  writeNotNull('discount_amounts', instance.discountAmounts);
  writeNotNull('discount_amount', instance.discountAmount);
  writeNotNull('duty_amount', instance.dutyAmount);
  writeNotNull('tip_amount', instance.tipAmount);
  writeNotNull('additional_amounts', instance.additionalAmounts);
  writeNotNull('tax_amount', instance.taxAmount);
  writeNotNull('national_tax_amount', instance.nationalTaxAmount);
  writeNotNull('local_tax_amount', instance.localTaxAmount);
  writeNotNull('service_fee', instance.serviceFee);
  writeNotNull('surcharge', instance.surcharge);

  return val;
}
