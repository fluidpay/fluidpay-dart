import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response_data.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionResponseData extends Decodable {
  String id;
  String userId;
  String userName;
  String merchantId;
  String merchantName;
  String idempotencyKey;
  int idempotencyTime;
  String type;
  int amount;
  int baseAmount;
  int amountAuthorized;
  int amountCaptured;
  int amountSettled;
  int amountRefunded;
  int paymentAdjustment;
  int tipAmount;
  String settlementBatchId;
  String processorId;
  String processorType;
  String processorName;
  String paymentMethod;
  String paymentType;
  List<String> features;

  // Level 3 related
  int nationalTaxAmount;
  int dutyAmount;
  String shipFromPostalCode;
  String summaryCommodityCode;
  String merchantVatRegistrationNumber;
  String customerVatRegistrationNumber;

  int taxAmount;
  bool taxExempt;
  int shippingAmount;
  int surcharge;
  int discountAmount;
  String currency;
  String description;
  String orderId;
  String poNumber;
  String ipAddress;
  String transactionSource;
  bool emailReceipt;
  String emailAddress;
  String customerId;
  String customerPaymentType;
  String customerPaymentId;
  String subscriptionId;
  String referencedTransactionId;
  TransactionResponseBody responseBody;

  Map<String, List<String>> customFields;
  List<LineItem> lineItems;

  String status;
  String response;
  int responseCode;
  Address billingAddress;
  Address shippingAddress;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime capturedAt;
  DateTime settledAt;


  TransactionResponseData();

  factory TransactionResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionResponseBody extends Decodable {
  CreditCardResponse card;
  TerminalResponse terminal;
  ACHResponse ach;
  APMResponse apm;
  CashResponse cash;

  TransactionResponseBody();

  factory TransactionResponseBody.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseBodyFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionResponseBodyToJson(this);
}


@JsonSerializable(fieldRename: FieldRename.snake)
class TokenCardResponse extends Decodable {
  String id;
  String cardType;
  String firstSix;
  String lastFour;
  String maskedCard;
  String expirationDate;
  List<String> flags;
  String processorId;

  DateTime createdAt;
  DateTime updatedAt;

  TokenCardResponse();

  factory TokenCardResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenCardResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$TokenCardResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreditCardResponse extends TokenCardResponse {
  String response;
  int responseCode;
  String authCode;
  String processorResponseCode;
  String processorResponseText;
  String processorTransactionId;
  String processorType;
  String bin_type;
  @JsonKey(ignore: true)
  String brandReference;
  String type;

  String avsResponseCode;
  String cvvResponseCode;

  dynamic processorSpecific;


  CreditCardResponse();

  factory CreditCardResponse.fromJson(Map<String, dynamic> json) =>
      _$CreditCardResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreditCardResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalResponse extends Decodable {
  String id;
  String terminalId;
  String terminalDescription;
  String cardType;
  String paymentType;
  String entryType;
  String firstFour;
  String lastFour;
  String maskedCard;
  String cardholderName;
  String authCode;
  int responseCode;
  String processorResponseText;
  Map processorSpecific;
  String emvAid;
  String emvAppName;
  String emvTvr;
  String emvTsi;
  String signatureData;
  DateTime createdAt;
  DateTime updatedAt;

  TerminalResponse();

  factory TerminalResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenACHResponse extends Decodable {
  String id;
  String maskedAccountNumber;
  String routingNumber;
  String accountType;
  String secCode;
  List<String> flags;
  String processorId;

  DateTime createdAt;
  DateTime updatedAt;

  TokenACHResponse();

  factory TokenACHResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenACHResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$TokenACHResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHResponse extends TokenACHResponse {
  String accountType;
  String authCode;
  String response;
  int responseCode;
  String processorResponseCode;
  String processorResponseText;
  String processorType;

  dynamic processorSpecific;

  ACHResponse();

  factory ACHResponse.fromJson(Map<String, dynamic> json) =>
      _$ACHResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class APMResponse extends Decodable {
  String status;
  String processorTransactionId;
  String transactionId;
  String fundingStatus;
  String flags;
  String errorMsg;
  String redirectUrl;
  @JsonKey(ignore: true)
  String redirectSecret;
  String failReason;
  String channel;
  String tag;
  String documentCode;

  APMResponse();

  factory APMResponse.fromJson(Map<String, dynamic> json) =>
      _$APMResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$APMResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CashResponse extends Decodable {
  CashResponse();

  factory CashResponse.fromJson(Map<String, dynamic> json) =>
      _$CashResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CashResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionVoidResponseData extends Decodable {
  String id;
  String type;

  TransactionVoidResponseData();

  factory TransactionVoidResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionVoidResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionVoidResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionCreateVaultResponseData extends Decodable {
  String id;
  String description;
  List<String> flags;
  TokenPaymentMethodResponse paymentMethod;
  String paymentMethodType;
  TokenAddressResponse billingAddress;
  TokenAddressResponse shippingAddress;

  DateTime createdAt;
  DateTime updatedAt;


  TransactionCreateVaultResponseData();

  factory TransactionCreateVaultResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateVaultResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionCreateVaultResponseDataToJson(this);

}

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenPaymentMethodResponse extends Decodable {
  @JsonKey(name: 'card')
  TokenCardResponse cardToken;
  @JsonKey(name: 'ach')
  TokenACHResponse achToken;

  TokenPaymentMethodResponse();

  factory TokenPaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenPaymentMethodResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$TokenPaymentMethodResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenAddressResponse extends Address {
  String id;
  String customerId;

  DateTime createdAt;
  DateTime updatedAt;

  TokenAddressResponse();

  factory TokenAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenAddressResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$TokenAddressResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMultiVoidResponseData extends Decodable {
  String transactionId;
  String status;
  String orderId;
  String msg;


  TransactionMultiVoidResponseData();
  factory TransactionMultiVoidResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionMultiVoidResponseDataFromJson(json);
  @override
  Map<String, dynamic> toJson() =>
      _$TransactionMultiVoidResponseDataToJson(this);
}