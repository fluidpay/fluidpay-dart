// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BinLookupResponse _$BinLookupResponseFromJson(Map<String, dynamic> json) {
  return BinLookupResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : BinLookupData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$BinLookupResponseToJson(BinLookupResponse instance) {
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

BinLookupData _$BinLookupDataFromJson(Map<String, dynamic> json) {
  return BinLookupData(
    json['bin'] as String,
    json['card_brand'] as String,
    json['issuing_bank'] as String,
    json['card_type'] as String,
    json['card_level_generic'] as String,
    json['country'] as String,
    json['is_surchargeable'] as bool,
  );
}

Map<String, dynamic> _$BinLookupDataToJson(BinLookupData instance) =>
    <String, dynamic>{
      'bin': instance.bin,
      'card_brand': instance.cardBrand,
      'issuing_bank': instance.issuingBank,
      'card_type': instance.cardType,
      'card_level_generic': instance.cardLevelGeneric,
      'country': instance.country,
      'is_surchargeable': instance.isSurchargeable,
    };

FeeLookupResponse _$FeeLookupResponseFromJson(Map<String, dynamic> json) {
  return FeeLookupResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : FeeLookupData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$FeeLookupResponseToJson(FeeLookupResponse instance) {
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

FeeLookupData _$FeeLookupDataFromJson(Map<String, dynamic> json) {
  return FeeLookupData(
    serviceFee: json['service_fee'] as int?,
    paymentAdjustment: json['payment_adjustment'] == null
        ? null
        : PaymentAdjustmentRequest.fromJson(
            json['payment_adjustment'] as Map<String, dynamic>),
    requestedAmount: json['requested_amount'] as int?,
    discountAmount: json['discount_amount'] as int?,
    surcharge: json['surcharge'] as int?,
  );
}

Map<String, dynamic> _$FeeLookupDataToJson(FeeLookupData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('service_fee', instance.serviceFee);
  writeNotNull('payment_adjustment', instance.paymentAdjustment);
  writeNotNull('requested_amount', instance.requestedAmount);
  writeNotNull('discount_amount', instance.discountAmount);
  writeNotNull('surcharge', instance.surcharge);
  return val;
}
