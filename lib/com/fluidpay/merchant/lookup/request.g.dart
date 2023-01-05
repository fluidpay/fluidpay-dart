// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BinLookupRequest _$BinLookupRequestFromJson(Map<String, dynamic> json) {
  return BinLookupRequest(
    bin: json['bin'] as String?,
    state: json['state'] as String?,
  );
}

Map<String, dynamic> _$BinLookupRequestToJson(BinLookupRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bin', instance.bin);
  writeNotNull('state', instance.state);
  return val;
}

FeeLookupRequest _$FeeLookupRequestFromJson(Map<String, dynamic> json) {
  return FeeLookupRequest(
    bin: json['bin'] as String?,
    state: json['state'] as String?,
    paymentMethod: json['payment_method'] as String?,
    baseAmount: json['base_amount'] as int?,
    processorId: json['processor_id'] as String?,
    surcharge: json['surcharge'] == null
        ? null
        : PaymentAdjustmentRequest.fromJson(
            json['surcharge'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FeeLookupRequestToJson(FeeLookupRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bin', instance.bin);
  writeNotNull('state', instance.state);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('base_amount', instance.baseAmount);
  writeNotNull('processor_id', instance.processorId);
  writeNotNull('surcharge', instance.surcharge);
  return val;
}
