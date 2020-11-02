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

@JsonSerializable()
class PaymentMethodRequest extends Decodable {
  CreditCardRequest card;
  ACHRequest ach;
  CustomerTransactionRequest customer;
  TerminalTransactionRequest terminal;
  String token;
  @JsonKey(name: 'apple_pay_token')
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

@JsonSerializable()
class CreditCardRequest extends Decodable {
  @JsonKey(name: 'entry_type')
  String entryType;
  String number;
  @JsonKey(name: 'expiration_date')
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
  @JsonKey(name: 'ksn')
  String ksn;
  @JsonKey(name: 'encrypted_data')
  String encryptedData;
  @JsonKey(name: 'cardholder_authentication')
  CardholderAuthenticationRequest cardholderAuthentication;
  @JsonKey(name: 'card_present')
  String cardPresent;

  CreditCardRequest();

  factory CreditCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreditCardRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreditCardRequestToJson(this);
}

@JsonSerializable()
class CardholderAuthenticationRequest extends Decodable {
  String eci;
  String cavv;
  String xid;
  String version;
  @JsonKey(name: 'ds_transaction_id')
  String dsTransactionId;
  @JsonKey(name: 'acs_transaction_id')
  String acsTransactionId;

  CardholderAuthenticationRequest();

  factory CardholderAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$CardholderAuthenticationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CardholderAuthenticationRequestToJson(this);
}

@JsonSerializable()
class ACHRequest extends Decodable {
  @JsonKey(name: 'routing_number')
  String routingNumber;
  @JsonKey(name: 'account_number')
  String accountNumber;
  @JsonKey(name: 'account_type')
  String accountType;
  @JsonKey(name: 'sec_code')
  String secCode;
  @JsonKey(name: 'check_number')
  String checkNumber;
  @JsonKey(name: 'accountholder_authentication')
  ACHAuthenticationRequest accountHolderAuthentication;

  ACHRequest();

  factory ACHRequest.fromJson(Map<String, dynamic> json) =>
      _$ACHRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHRequestToJson(this);
}

@JsonSerializable()
class ACHAuthenticationRequest extends Decodable {
  @JsonKey(name: 'dl_state')
  String dlState;
  @JsonKey(name: 'dl_number')
  String dlNumber;
  String ssn4;
  @JsonKey(name: 'dob_year')
  String dobYear;

  ACHAuthenticationRequest();

  factory ACHAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$ACHAuthenticationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHAuthenticationRequestToJson(this);
}

@JsonSerializable()
class CustomerTransactionRequest extends Decodable {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'source_merchant_id')
  String sourceMerchantId;
  @JsonKey(name: 'payment_method_type')
  String paymentMethodType;
  @JsonKey(name: 'payment_method_id')
  String paymentMethodId;
  @JsonKey(name: 'billing_address_id')
  String billingAddressId;
  @JsonKey(name: 'shipping_address_id')
  String shippingAddressId;
  @JsonKey(name: 'cvc')
  String cvc;

  CustomerTransactionRequest();

  factory CustomerTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerTransactionRequestToJson(this);
}

@JsonSerializable()
class TerminalTransactionRequest extends Decodable {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'expiration_date')
  String expirationDate;
  @JsonKey(name: 'cvc')
  String cvc;
  @JsonKey(name: 'print_receipt')
  String printReceipt;
  @JsonKey(name: 'signature_required')
  bool signatureRequired;
  @JsonKey(name: 'clerk_id')
  int clerkId;
  @JsonKey(name: 'debit')
  bool debit;
  @JsonKey(name: 'ebt')
  String ebt;

  TerminalTransactionRequest();

  factory TerminalTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalTransactionRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalTransactionRequestToJson(this);
}

@JsonSerializable()
class APMRequest extends Decodable {
  String type;
  @JsonKey(name: 'selling_point')
  String sellingPoint;
  @JsonKey(name: 'sold_service')
  String soldService;
  @JsonKey(name: 'merchant_redirect_url')
  String merchantRedirectUrl;
  @JsonKey(name: 'locale')
  String locale;
  @JsonKey(name: 'mobile_view')
  bool mobileView;
  @JsonKey(name: 'national_id')
  String nationalId;
  @JsonKey(name: 'consumer_ref')
  String consumerRef;
  @JsonKey(name: 'logo_url')
  String logoUrl;
  @JsonKey(name: 'hpp_title')
  String hppTitle;
  @JsonKey(name: 'preferred_language')
  String preferredLanguage;

  APMRequest();

  factory APMRequest.fromJson(Map<String, dynamic> json) =>
      _$APMRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$APMRequestToJson(this);
}

@JsonSerializable()
class PlaidRequest extends Decodable {
  @JsonKey(name: 'ref_id')
  String refId;
  @JsonKey(name: 'account_id')
  String accountId;

  PlaidRequest();

  factory PlaidRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaidRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlaidRequestToJson(this);
}

@JsonSerializable()
class CashRequest extends Decodable {
  CashRequest();

  factory CashRequest.fromJson(Map<String, dynamic> json) =>
      _$CashRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CashRequestToJson(this);
}