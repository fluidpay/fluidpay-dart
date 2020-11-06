import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
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

  TransactionResponseData(
      {this.id,
      this.userId,
      this.userName,
      this.merchantId,
      this.merchantName,
      this.idempotencyKey,
      this.idempotencyTime,
      this.type,
      this.amount,
      this.baseAmount,
      this.amountAuthorized,
      this.amountCaptured,
      this.amountSettled,
      this.amountRefunded,
      this.paymentAdjustment,
      this.tipAmount,
      this.settlementBatchId,
      this.processorId,
      this.processorType,
      this.processorName,
      this.paymentMethod,
      this.paymentType,
      this.features,
      this.nationalTaxAmount,
      this.dutyAmount,
      this.shipFromPostalCode,
      this.summaryCommodityCode,
      this.merchantVatRegistrationNumber,
      this.customerVatRegistrationNumber,
      this.taxAmount,
      this.taxExempt,
      this.shippingAmount,
      this.surcharge,
      this.discountAmount,
      this.currency,
      this.description,
      this.orderId,
      this.poNumber,
      this.ipAddress,
      this.transactionSource,
      this.emailReceipt,
      this.emailAddress,
      this.customerId,
      this.customerPaymentType,
      this.customerPaymentId,
      this.subscriptionId,
      this.referencedTransactionId,
      this.responseBody,
      this.customFields,
      this.lineItems,
      this.status,
      this.response,
      this.responseCode,
      this.billingAddress,
      this.shippingAddress,
      this.createdAt,
      this.updatedAt,
      this.capturedAt,
      this.settledAt});

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

  TransactionResponseBody({this.card, this.terminal, this.ach, this.apm, this.cash});

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

  TokenCardResponse(
      {this.id,
      this.cardType,
      this.firstSix,
      this.lastFour,
      this.maskedCard,
      this.expirationDate,
      this.flags,
      this.processorId,
      this.createdAt,
      this.updatedAt});

  factory TokenCardResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenCardResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TokenCardResponseToJson(this);
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

  CreditCardResponse({
    this.response,
    this.responseCode,
    this.authCode,
    this.processorResponseCode,
    this.processorResponseText,
    this.processorTransactionId,
    this.processorType,
    this.bin_type,
    this.brandReference,
    this.type,
    this.avsResponseCode,
    this.cvvResponseCode,
    this.processorSpecific,
    String id,
    String cardType,
    String firstSix,
    String lastFour,
    String maskedCard,
    String expirationDate,
    List<String> flags,
    String processorId,
    DateTime createdAt,
    DateTime updatedAt,
  }) : super(
          id: id,
          cardType: cardType,
          firstSix: firstSix,
          lastFour: lastFour,
          maskedCard: maskedCard,
          expirationDate: expirationDate,
          flags: flags,
          processorId: processorId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

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

  TerminalResponse(
      {this.id,
      this.terminalId,
      this.terminalDescription,
      this.cardType,
      this.paymentType,
      this.entryType,
      this.firstFour,
      this.lastFour,
      this.maskedCard,
      this.cardholderName,
      this.authCode,
      this.responseCode,
      this.processorResponseText,
      this.processorSpecific,
      this.emvAid,
      this.emvAppName,
      this.emvTvr,
      this.emvTsi,
      this.signatureData,
      this.createdAt,
      this.updatedAt});

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

  TokenACHResponse(
      {this.id,
      this.maskedAccountNumber,
      this.routingNumber,
      this.accountType,
      this.secCode,
      this.flags,
      this.processorId,
      this.createdAt,
      this.updatedAt});

  factory TokenACHResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenACHResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TokenACHResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHResponse extends TokenACHResponse {
  String authCode;
  String response;
  int responseCode;
  String processorResponseCode;
  String processorResponseText;
  String processorType;

  dynamic processorSpecific;

  ACHResponse(
      {this.authCode,
      this.response,
      this.responseCode,
      this.processorResponseCode,
      this.processorResponseText,
      this.processorType,
      this.processorSpecific,
      String id,
      String maskedAccountNumber,
      String routingNumber,
      String accountType,
      String secCode,
      List<String> flags,
      String processorId,
      DateTime createdAt,
      DateTime updatedAt})
      : super(
          id: id,
          maskedAccountNumber: maskedAccountNumber,
          routingNumber: routingNumber,
          accountType: accountType,
          secCode: secCode,
          flags: flags,
          processorId: processorId,
          createdAt: createdAt,
          updatedAt: updatedAt,
        );

  factory ACHResponse.fromJson(Map<String, dynamic> json) => _$ACHResponseFromJson(json);

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

  APMResponse(
      {this.status,
      this.processorTransactionId,
      this.transactionId,
      this.fundingStatus,
      this.flags,
      this.errorMsg,
      this.redirectUrl,
      this.redirectSecret,
      this.failReason,
      this.channel,
      this.tag,
      this.documentCode});

  factory APMResponse.fromJson(Map<String, dynamic> json) => _$APMResponseFromJson(json);

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

  TransactionVoidResponseData({this.id, this.type});

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

  TransactionCreateVaultResponseData(
      {this.id,
      this.description,
      this.flags,
      this.paymentMethod,
      this.paymentMethodType,
      this.billingAddress,
      this.shippingAddress,
      this.createdAt,
      this.updatedAt});

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

  TokenPaymentMethodResponse({this.cardToken, this.achToken});

  factory TokenPaymentMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenPaymentMethodResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TokenPaymentMethodResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenAddressResponse extends Address {
  String id;
  String customerId;

  DateTime createdAt;
  DateTime updatedAt;

  TokenAddressResponse({this.id, this.customerId, this.createdAt, this.updatedAt});

  factory TokenAddressResponse.fromJson(Map<String, dynamic> json) =>
      _$TokenAddressResponseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TokenAddressResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMultiVoidResponseData extends Decodable {
  String transactionId;
  String status;
  String orderId;
  String msg;

  TransactionMultiVoidResponseData(
      {this.transactionId, this.status, this.orderId, this.msg});

  factory TransactionMultiVoidResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionMultiVoidResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiVoidResponseDataToJson(this);
}
