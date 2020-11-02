import 'package:json_annotation/json_annotation.dart';

part 'apple_pay.g.dart';

@JsonSerializable()
class ApplePayTokenRequest {
  @JsonKey(name: 'key_id')
  String keyId;
  @JsonKey(name: 'processor_id')
  String processorId;
  @JsonKey(name: 'pkpaymenttoken')
  PKPaymentToken pkPaymentToken;

  ApplePayTokenRequest();

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

  PKPaymentToken();

  factory PKPaymentToken.fromJson(Map<String, dynamic> json) =>
      _$PKPaymentTokenFromJson(json);

  Map<String, dynamic> toJson() => _$PKPaymentTokenToJson(this);
}

@JsonSerializable()
class PaymentMethod {
  String type;
  String network;
  String displayName;

  PaymentMethod();

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

  PaymentData();

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

  Header();

  factory Header.fromJson(Map<String, dynamic> json) =>
      _$HeaderFromJson(json);

  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}
