import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/request.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class TransactionCreateResponse extends Responsable<TransactionCreateResponseData> {
  TransactionCreateResponse();

  factory TransactionCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionCreateResponseToJson(this);
}

@JsonSerializable()
class TransactionCreateResponseData extends Decodable {
  String id;
  @JsonKey(name: 'user_id')
  String userId;
  @JsonKey(name: 'user_name')
  String userName;
  @JsonKey(name: 'merchant_id')
  String merchantId;
  @JsonKey(name: 'merchant_name')
  String merchantName;
  @JsonKey(name: 'idempotency_key')
  String idempotencyKey;
  @JsonKey(name: 'idempotency_time')
  int idempotencyTime;
  String type;
  int amount;
  @JsonKey(name: 'base_amount')
  int baseAmount;
  @JsonKey(name: 'amount_authorized')
  int amountAuthorized;
  @JsonKey(name: 'amount_captured')
  int amountCaptured;
  @JsonKey(name: 'amount_settled')
  int amountSettled;
  @JsonKey(name: 'amount_refunded')
  int amountRefunded;
  @JsonKey(name: 'payment_adjustment')
  int paymentAdjustment;
  @JsonKey(name: 'tip_amount')
  int tipAmount;
  @JsonKey(name: 'settlement_batch_id')
  String settlementBatchId;
  @JsonKey(name: 'processor_id')
  String processorId;
  @JsonKey(name: 'processor_type')
  String processorType;
  @JsonKey(name: 'processor_name')
  String processorName;
  @JsonKey(name: 'payment_method')
  String paymentMethod;
  @JsonKey(name: 'payment_type')
  String paymentType;
  List<String> features;

  // Level 3 related
  @JsonKey(name: 'national_tax_amount')
  int nationalTaxAmount;
  @JsonKey(name: 'duty_amount')
  int dutyAmount;
  @JsonKey(name: 'ship_from_postal_code')
  String shipFromPostalCode;
  @JsonKey(name: 'summary_commodity_code')
  String summaryCommodityCode;
  @JsonKey(name: 'merchant_vat_registration_number')
  String merchantVatRegistrationNumber;
  @JsonKey(name: 'customer_vat_registration_number')
  String customerVatRegistrationNumber;

  @JsonKey(name: 'tax_amount')
  int taxAmount;
  @JsonKey(name: 'tax_exempt')
  bool taxExempt;
  @JsonKey(name: 'shipping_amount')
  int shippingAmount;
  int surcharge;
  @JsonKey(name: 'discount_amount')
  int discountAmount;
  String currency;
  String description;
  @JsonKey(name: 'order_id')
  String orderId;
  @JsonKey(name: 'po_number')
  String poNumber;
  @JsonKey(name: 'ip_address')
  String ipAddress;
  @JsonKey(name: 'transaction_source')
  String transactionSource;
  @JsonKey(name: 'email_receipt')
  bool emailReceipt;
  @JsonKey(name: 'email_address')
  String emailAddress;
  @JsonKey(name: 'customer_id')
  String customerId;
  @JsonKey(name: 'customer_payment_type')
  String customerPaymentType;
  @JsonKey(name: 'customer_payment_ID')
  String customerPaymentID;
  @JsonKey(name: 'subscription_id')
  String subscriptionId;
  @JsonKey(name: 'referenced_transaction_id')
  String referencedTransactionId;
  @JsonKey(name: 'response_body')
  TransactionResponseBody responseBody;

  @JsonKey(name: 'custom_fields')
  Map<String, List<String>> customFields;
  @JsonKey(name: 'line_items')
  List<LineItem> lineItems;

  String status;
  String response;
  @JsonKey(name: 'response_code')
  int responseCode;
  @JsonKey(name: 'billing_address')
  Address billingAddress;
  @JsonKey(name: 'shipping_address')
  Address shippingAddress;
  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;
  @JsonKey(name: 'captured_at')
  DateTime capturedAt;
  @JsonKey(name: 'settled_at')
  DateTime settledAt;


  TransactionCreateResponseData();

  factory TransactionCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$TransactionCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionCreateResponseDataToJson(this);
}

@JsonSerializable()
class TransactionResponseBody {
  CreditCardResponse card;
  TerminalResponse terminal;
  ACHResponse ach;
  APMResponse apm;
  CashResponse cash;

  TransactionResponseBody();

  factory TransactionResponseBody.fromJson(Map<String, dynamic> json) =>
      _$TransactionResponseBodyFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionResponseBodyToJson(this);
}

@JsonSerializable()
class CreditCardResponse {
  String id;
  @JsonKey(name: 'card_type')
  String cardType;
  @JsonKey(name: 'first_six')
  String firstSix;
  @JsonKey(name: 'last_four')
  String lastFour;
  @JsonKey(name: 'masked_card')
  String maskedCard;
  @JsonKey(name: 'expiration_date')
  String expirationDate;
  String response;
  @JsonKey(name: 'response_code')
  int responseCode;
  @JsonKey(name: 'auth_code')
  String authCode;
  @JsonKey(name: 'processor_response_code')
  String processorResponseCode;
  @JsonKey(name: 'processor_response_text')
  String processorResponseText;
  @JsonKey(name: 'processor_transaction_id')
  String processorTransactionId;
  @JsonKey(name: 'processor_type')
  String processorType;
  @JsonKey(name: 'processor_id')
  String processorId;
  String bin_type;
  @JsonKey(ignore: true)
  String brandReference;
  String type;

  @JsonKey(name: 'avs_response_code')
  String avsResponseCode;
  @JsonKey(name: 'cvv_response_code')
  String cvvResponseCode;

  @JsonKey(name: 'processor_specific')
  dynamic processorSpecific;

  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;


  CreditCardResponse();

  factory CreditCardResponse.fromJson(Map<String, dynamic> json) =>
      _$CreditCardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreditCardResponseToJson(this);
}

@JsonSerializable()
class TerminalResponse {
  @JsonKey(name: 'id')
  String id;
  @JsonKey(name: 'terminal_id')
  String terminalId;
  @JsonKey(name: 'terminal_description')
  String terminalDescription;
  @JsonKey(name: 'card_type')
  String cardType;
  @JsonKey(name: 'payment_type')
  String paymentType;
  @JsonKey(name: 'entry_type')
  String entryType;
  @JsonKey(name: 'first_four')
  String firstFour;
  @JsonKey(name: 'last_four')
  String lastFour;
  @JsonKey(name: 'masked_card')
  String maskedCard;
  @JsonKey(name: 'cardholder_name')
  String cardholderName;
  @JsonKey(name: 'auth_code')
  String authCode;
  @JsonKey(name: 'response_code')
  String responseCode;
  @JsonKey(name: 'processor_response_text')
  String processorResponseText;
  @JsonKey(name: 'processor_specific')
  String processorSpecific;
  @JsonKey(name: 'emv_aid')
  String emvAid;
  @JsonKey(name: 'emv_app_name')
  String emvAppName;
  @JsonKey(name: 'emv_tvr')
  String emvTvr;
  @JsonKey(name: 'emv_tsi')
  String emvTsi;
  @JsonKey(name: 'signature_data')
  String signatureData;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  TerminalResponse();

  factory TerminalResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalResponseToJson(this);
}

@JsonSerializable()
class ACHResponse {
  String id;
  @JsonKey(name: 'sec_code')
  String secCode;
  @JsonKey(name: 'account_type')
  String accountType;
  @JsonKey(name: 'masked_account_number')
  String maskedAccountNumber;
  @JsonKey(name: 'routing_number')
  String routingNumber;
  @JsonKey(name: 'auth_code')
  String authCode;
  String response;
  @JsonKey(name: 'response_code')
  String responseCode;
  @JsonKey(name: 'processor_response_code')
  String processorResponseCode;
  @JsonKey(name: 'processor_response_text')
  String processorResponseText;
  @JsonKey(name: 'processor_type')
  String processorType;
  @JsonKey(name: 'processor_id')
  String processorId;

  @JsonKey(name: 'processor_specific')
  dynamic processorSpecific;

  @JsonKey(name: 'created_at')
  DateTime createdAt;
  @JsonKey(name: 'updated_at')
  DateTime updatedAt;

  ACHResponse();

  factory ACHResponse.fromJson(Map<String, dynamic> json) =>
      _$ACHResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ACHResponseToJson(this);
}

@JsonSerializable()
class APMResponse {
  String status;
  @JsonKey(name: 'processor_transaction_id')
  String processorTransactionId;
  @JsonKey(name: 'transaction_id')
  String transactionId;
  @JsonKey(name: 'funding_status')
  String fundingStatus;
  String flags;
  @JsonKey(name: 'error_msg')
  String errorMsg;
  @JsonKey(name: 'redirect_url')
  String redirectUrl;
  @JsonKey(ignore: true)
  String redirectSecret;
  @JsonKey(name: 'fail_reason')
  String failReason;
  String channel;
  String tag;
  @JsonKey(name: 'document_code')
  String documentCode;

  APMResponse();

  factory APMResponse.fromJson(Map<String, dynamic> json) =>
      _$APMResponseFromJson(json);

  Map<String, dynamic> toJson() => _$APMResponseToJson(this);
}

@JsonSerializable()
class CashResponse {
  CashResponse();

  factory CashResponse.fromJson(Map<String, dynamic> json) =>
      _$CashResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CashResponseToJson(this);
}