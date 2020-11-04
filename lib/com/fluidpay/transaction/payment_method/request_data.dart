import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/apple_pay.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_data.g.dart';

enum TransactionType {
  authorize,
  sale,
  credit,
  capture,
  refund,
  verification,
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentMethodRequest extends Decodable {
  CreditCardRequest card;
  ACHRequest ach;
  CustomerTransactionRequest customer;
  TerminalTransactionRequest terminal;
  String token;
  ApplePayTokenRequest applePayToken;
  APMRequest apm;
  PlaidRequest plaid;
  CashRequest cash;

  PaymentMethodRequest();

  factory PaymentMethodRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentMethodRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreditCardRequest extends Decodable {
  String entryType;
  String number;
  String expirationDate;
  String cvc;
  @JsonKey(name: 'track_1')
  String track1;
  @JsonKey(name: 'track_2')
  String track2;
  @JsonKey(name: 'encrypted_track_1')
  String encryptedTrack1;
  @JsonKey(name: 'encrypted_track_2')
  String encryptedTrack2;
  String ksn;
  String encryptedData;
  CardholderAuthenticationRequest cardholderAuthentication;
  String cardPresent;

  CreditCardRequest();

  factory CreditCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreditCardRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreditCardRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CardholderAuthenticationRequest extends Decodable {
  String eci;
  String cavv;
  String xid;
  String version;
  String dsTransactionId;
  String acsTransactionId;

  CardholderAuthenticationRequest();

  factory CardholderAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$CardholderAuthenticationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CardholderAuthenticationRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHRequest extends Decodable {
  String routingNumber;
  String accountNumber;
  String accountType;
  String secCode;
  String checkNumber;
  @JsonKey(name: 'accountholder_authentication')
  ACHAuthenticationRequest accountHolderAuthentication;

  ACHRequest({
    this.routingNumber,
    this.accountNumber,
    this.accountType,
    this.secCode,
    this.checkNumber,
    this.accountHolderAuthentication,
  });

  factory ACHRequest.fromJson(Map<String, dynamic> json) => _$ACHRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHAuthenticationRequest extends Decodable {
  String dlState;
  String dlNumber;
  String ssn4;
  String dobYear;

  ACHAuthenticationRequest({
    this.dlState,
    this.dlNumber,
    this.ssn4,
    this.dobYear,
  });

  factory ACHAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$ACHAuthenticationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHAuthenticationRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerTransactionRequest extends Decodable {
  String id;
  String sourceMerchantId;
  String paymentMethodType;
  String paymentMethodId;
  String billingAddressId;
  String shippingAddressId;
  String cvc;

  CustomerTransactionRequest({
    this.id,
    this.sourceMerchantId,
    this.paymentMethodType,
    this.paymentMethodId,
    this.billingAddressId,
    this.shippingAddressId,
    this.cvc,
  });

  factory CustomerTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerTransactionRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalTransactionRequest extends Decodable {
  String id;
  String expirationDate;
  String cvc;
  String printReceipt;
  bool signatureRequired;
  int clerkId;
  bool debit;
  String ebt;

  TerminalTransactionRequest({
    this.id,
    this.expirationDate,
    this.cvc,
    this.printReceipt,
    this.signatureRequired,
    this.clerkId,
    this.debit,
    this.ebt,
  });

  factory TerminalTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalTransactionRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalTransactionRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class APMRequest extends Decodable {
  String type;
  String sellingPoint;
  String soldService;
  String merchantRedirectUrl;
  String locale;
  bool mobileView;
  String nationalId;
  String consumerRef;
  String logoUrl;
  String hppTitle;
  String preferredLanguage;

  APMRequest({
    this.type,
    this.sellingPoint,
    this.soldService,
    this.merchantRedirectUrl,
    this.locale,
    this.mobileView,
    this.nationalId,
    this.consumerRef,
    this.logoUrl,
    this.hppTitle,
    this.preferredLanguage,
  });

  factory APMRequest.fromJson(Map<String, dynamic> json) => _$APMRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$APMRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PlaidRequest extends Decodable {
  String refId;
  String accountId;

  PlaidRequest({this.refId, this.accountId});

  factory PlaidRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaidRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlaidRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CashRequest extends Decodable {
  CashRequest();

  factory CashRequest.fromJson(Map<String, dynamic> json) => _$CashRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CashRequestToJson(this);
}
