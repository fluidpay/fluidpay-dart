import 'package:json_annotation/json_annotation.dart';

part 'apple_pay.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ApplePayTokenRequest {
  String keyId;
  String processorId;
  @JsonKey(name: 'pkpaymenttoken')
  PKPaymentToken pkPaymentToken;

  ApplePayTokenRequest({
    this.keyId,
    this.processorId,
    this.pkPaymentToken,
});

  factory ApplePayTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$ApplePayTokenRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ApplePayTokenRequestToJson(this);
}

@JsonSerializable()
class PKPaymentToken {
  DateTime transactionTime;
  String transactionIdentifier;
  PaymentMethod paymentMethod;
  PaymentData paymentData;

  PKPaymentToken({
    this.transactionTime,
    this.transactionIdentifier,
    this.paymentMethod,
    this.paymentData,
});

  factory PKPaymentToken.fromJson(Map<String, dynamic> json) =>
      _$PKPaymentTokenFromJson(json);

  Map<String, dynamic> toJson() => _$PKPaymentTokenToJson(this);
}

@JsonSerializable()
class PaymentMethod {
  String type;
  String network;
  String displayName;

  PaymentMethod({
    this.type,
    this.network,
    this.displayName,
});

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}

@JsonSerializable()
class PaymentData {
  String version;
  String signature;
  Header header;
  String data;

  PaymentData({
    this.version,
    this.signature,
    this.header,
    this.data
});

  factory PaymentData.fromJson(Map<String, dynamic> json) =>
      _$PaymentDataFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentDataToJson(this);
}

@JsonSerializable()
class Header {
  String applicationData;
  String ephemeralPublicKey;
  String wrappedKey;
  String publicKeyHash;
  @JsonKey(name: 'transactionID')
  String transactionId;

  Header({
    this.applicationData,
    this.ephemeralPublicKey,
    this.wrappedKey,
    this.publicKeyHash,
    this.transactionId
});

  factory Header.fromJson(Map<String, dynamic> json) =>
      _$HeaderFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}
