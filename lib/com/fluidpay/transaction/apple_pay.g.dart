// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple_pay.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplePayTokenRequest _$ApplePayTokenRequestFromJson(Map<String, dynamic> json) {
  return ApplePayTokenRequest(
    keyId: json['key_id'] as String,
    processorId: json['processor_id'] as String,
    pkPaymentToken: json['pkpaymenttoken'] == null
        ? null
        : PKPaymentToken.fromJson(
            json['pkpaymenttoken'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ApplePayTokenRequestToJson(
        ApplePayTokenRequest instance) =>
    <String, dynamic>{
      'key_id': instance.keyId,
      'processor_id': instance.processorId,
      'pkpaymenttoken': instance.pkPaymentToken,
    };

PKPaymentToken _$PKPaymentTokenFromJson(Map<String, dynamic> json) {
  return PKPaymentToken(
    transactionTime: json['transactionTime'] == null
        ? null
        : DateTime.parse(json['transactionTime'] as String),
    transactionIdentifier: json['transactionIdentifier'] as String,
    paymentMethod: json['paymentMethod'] == null
        ? null
        : PaymentMethod.fromJson(json['paymentMethod'] as Map<String, dynamic>),
    paymentData: json['paymentData'] == null
        ? null
        : PaymentData.fromJson(json['paymentData'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PKPaymentTokenToJson(PKPaymentToken instance) =>
    <String, dynamic>{
      'transactionTime': instance.transactionTime?.toIso8601String(),
      'transactionIdentifier': instance.transactionIdentifier,
      'paymentMethod': instance.paymentMethod,
      'paymentData': instance.paymentData,
    };

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return PaymentMethod(
    type: json['type'] as String,
    network: json['network'] as String,
    displayName: json['displayName'] as String,
  );
}

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'type': instance.type,
      'network': instance.network,
      'displayName': instance.displayName,
    };

PaymentData _$PaymentDataFromJson(Map<String, dynamic> json) {
  return PaymentData(
    version: json['version'] as String,
    signature: json['signature'] as String,
    header: json['header'] == null
        ? null
        : Header.fromJson(json['header'] as Map<String, dynamic>),
    data: json['data'] as String,
  );
}

Map<String, dynamic> _$PaymentDataToJson(PaymentData instance) =>
    <String, dynamic>{
      'version': instance.version,
      'signature': instance.signature,
      'header': instance.header,
      'data': instance.data,
    };

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return Header(
    applicationData: json['applicationData'] as String,
    ephemeralPublicKey: json['ephemeralPublicKey'] as String,
    wrappedKey: json['wrappedKey'] as String,
    publicKeyHash: json['publicKeyHash'] as String,
    transactionId: json['transactionID'] as String,
  );
}

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
      'applicationData': instance.applicationData,
      'ephemeralPublicKey': instance.ephemeralPublicKey,
      'wrappedKey': instance.wrappedKey,
      'publicKeyHash': instance.publicKeyHash,
      'transactionID': instance.transactionId,
    };
