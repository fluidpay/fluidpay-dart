import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/transaction/common.dart';
import 'package:fluidpay/com/fluidpay/transaction/payment_method/request_data.dart';
import 'package:fluidpay/com/fluidpay/transaction/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable()
class TransactionCreateRequest extends Creatable<TransactionCreateResponse> {
  @JsonKey(name: 'idempotency_key')
  String idempotencyKey;
  @JsonKey(name: 'idempotency_time')
  int idempotencyTime;
  @JsonKey(name: 'type')
  TransactionType type;
  @JsonKey(name: 'tax_exempt')
  bool taxExempt;
  @JsonKey(name: 'currency')
  String currency;
  @JsonKey(name: 'description')
  String description;
  @JsonKey(name: 'order_id')
  String orderId;
  @JsonKey(name: 'po_number')
  String poNumber;
  @JsonKey(name: 'ip_address')
  String ipAddress;
  @JsonKey(name: 'email_receipt')
  bool emailReceipt;
  @JsonKey(name: 'email_address')
  String emailAddress;
  @JsonKey(name: 'processor_id')
  String processorId;
  @JsonKey(name: 'allow_partial_payment')
  bool allowPartialPayment;
  @JsonKey(name: 'create_vault_record')
  bool createVaultRecord;
  @JsonKey(name: 'vault_record_id_format')
  String vaultRecordIdFormat;
  @JsonKey(name: 'vendor_id')
  String vendorId;

  // Amounts
  int amount;
  @JsonKey(name: 'tax_amount')
  int taxAmount;
  @JsonKey(name: 'shipping_amount')
  int shippingAmount;
  @JsonKey(name: 'surcharge')
  int surcharge;
  @JsonKey(name: 'discount_amount')
  int discountAmount;

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

  @JsonKey(name: 'payment_adjustment')
  PaymentAdjustmentRequest paymentAdjustment;
  @JsonKey(name: 'additional_amount')
  AdditionalAmountRequest additionalAmountRequest;

  // Payment method
  @JsonKey(name: 'payment_method')
  PaymentMethodRequest paymentMethod;

  // Card On File
  @JsonKey(name: 'card_on_file_indicator')
  String cardOnFileIndicator;
  @JsonKey(name: 'initiated_by')
  String initiatedBy;
  @JsonKey(name: 'initial_transaction_id')
  String initialTransactionId;
  @JsonKey(name: 'stored_credential_indicator')
  String storedCredentialIndicator;

  // Addresses
  @JsonKey(name: 'billing_address')
  Address billingAddress;
  @JsonKey(name: 'shipping_address')
  Address shippingAddress;

  @JsonKey(name: 'processor_specific')
  ProcessorSpecificRequest processorSpecific;
  @JsonKey(name: 'custom_fields')
  Map<String, List<String>> customFields;
  @JsonKey(name: 'group_name')
  String groupName;
  @JsonKey(name: 'descriptor')
  DescriptorRequest descriptor;
  @JsonKey(name: 'line_items')
  List<LineItem> lineItems;
  @JsonKey(name: 'fingerprint')
  Map<String, dynamic> fingerprint;
  @JsonKey(name: 'bypass_rule_engine')
  bool bypassRuleEngine;
  @JsonKey(name: 'void_on_success')
  bool voidOnSuccess;

  @JsonKey(name: 'billing_method')
  String billingMethod;
  String mcc;

  @override
  TransactionCreateResponse buildResponse(Map<String, dynamic> json) =>
      TransactionCreateResponse.fromJson(json);

  @override
  String getUrl() => '/transaction';

  @override
  Map<String, dynamic> toJson() => _$TransactionCreateRequestToJson(this);
}

@JsonSerializable()
class PaymentAdjustmentRequest extends Decodable {
  int value;
  String type;

  PaymentAdjustmentRequest();

  factory PaymentAdjustmentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentAdjustmentRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentAdjustmentRequestToJson(this);
}

@JsonSerializable()
class AdditionalAmountRequest extends Decodable {
  HSAAmountsRequest hsa;

  AdditionalAmountRequest();

  factory AdditionalAmountRequest.fromJson(Map<String, dynamic> json) =>
      _$AdditionalAmountRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdditionalAmountRequestToJson(this);
}

@JsonSerializable()
class HSAAmountsRequest extends Decodable {
  @JsonKey(name: 'total')
  int total;
  @JsonKey(name: 'rx_amount')
  int rxAmount;
  @JsonKey(name: 'vision_amount')
  int visionAmount;
  @JsonKey(name: 'clinic_amount')
  int clinicAmount;
  @JsonKey(name: 'dental_amount')
  int dentalAmount;
  @JsonKey(name: 'sku')
  String sku;

  HSAAmountsRequest();

  factory HSAAmountsRequest.fromJson(Map<String, dynamic> json) =>
      _$HSAAmountsRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HSAAmountsRequestToJson(this);
}

@JsonSerializable()
class ProcessorSpecificRequest {
  BoltPay boltPay;

  ProcessorSpecificRequest();

  factory ProcessorSpecificRequest.fromJson(Map<String, dynamic> json) =>
      _$ProcessorSpecificRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorSpecificRequestToJson(this);
}

@JsonSerializable()
class BoltPay {
  @JsonKey(name: 'recurring_cycle')
  String recurringCycle;

  BoltPay();

  factory BoltPay.fromJson(Map<String, dynamic> json) => _$BoltPayFromJson(json);

  Map<String, dynamic> toJson() => _$BoltPayToJson(this);
}

@JsonSerializable()
class DescriptorRequest {
  String name;
  String address;
  String city;
  String state;
  @JsonKey(name: 'postal_code')
  String postalCode;
  String email;
  String phone;

  DescriptorRequest();

  factory DescriptorRequest.fromJson(Map<String, dynamic> json) =>
      _$DescriptorRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptorRequestToJson(this);
}

class TransactionGetRequest extends Searchable<TransactionGetResponse> {
  final String merchantId;
  final String transactionId;

  TransactionGetRequest(this.transactionId, {this.merchantId});

  @override
  TransactionGetResponse buildResponse(Map<String, dynamic> json) =>
      TransactionGetResponse.fromJson(json);

  @override
  String getUrl() {
    var result = '/transaction';

    if (merchantId != null) {
      result += '/$merchantId';
    }

    result += '/$transactionId';

    return result;
  }
}

enum TransactionActionRequestType {
  capture,
  voidAction,
  refund,
  vault,
  email,
  print,
  tipAdjust,
}

extension TranscationActionRequestTypeName on TransactionActionRequestType {
  String get name {
    switch (this) {
      case TransactionActionRequestType.tipAdjust:
        return 'tipadjust';
      case TransactionActionRequestType.voidAction:
        return 'void';
      default:
        return toString().split('.').last;
    }
  }
}

abstract class TransactionActionRequest<Response extends Responsable>
    extends Updatable<Response> {
  @JsonKey(ignore: true)
  final TransactionActionRequestType type;

  @JsonKey(name: 'transaction_id')
  final String transactionId;

  TransactionActionRequest(this.transactionId, this.type);

  @override
  String getUrl() => '/transaction/$transactionId/${type.name}';
}

@JsonSerializable()
class TransactionCaptureRequest
    extends TransactionActionRequest<TransactionCaptureResponse> {
  int amount;
  @JsonKey(name: 'tax_amount')
  int taxAmount;
  @JsonKey(name: 'tax_exempt')
  bool taxExempt;
  @JsonKey(name: 'shipping_amount')
  int shippingAmount;
  @JsonKey(name: 'order_id')
  String orderId;
  @JsonKey(name: 'po_number')
  String poNumber;
  @JsonKey(name: 'ip_address')
  String ipAddress;
  @JsonKey(name: 'vendor_id')
  String vendorId;

  TransactionCaptureRequest(String transactionId)
      : super(transactionId, TransactionActionRequestType.capture);

  @override
  Map<String, dynamic> toJson() => _$TransactionCaptureRequestToJson(this);

  @override
  TransactionCaptureResponse buildResponse(Map<String, dynamic> json) =>
      TransactionCaptureResponse.fromJson(json);
}

@JsonSerializable()
class TransactionVoidRequest extends TransactionActionRequest<TransactionVoidResponse> {
  TransactionVoidRequest(String transactionId)
      : super(transactionId, TransactionActionRequestType.voidAction);

  @override
  Map<String, dynamic> toJson() => _$TransactionVoidRequestToJson(this);

  @override
  TransactionVoidResponse buildResponse(Map<String, dynamic> json) =>
      TransactionVoidResponse.fromJson(json);
}

@JsonSerializable()
class TransactionRefundRequest
    extends TransactionActionRequest<TransactionRefundResponse> {
  int amount;
  @JsonKey(name: 'ip_address')
  String ipAddress;
  @JsonKey(name: 'terminal_id')
  String terminalId;
  @JsonKey(name: 'vendor_id')
  String vendorId;
  @JsonKey(name: 'print_receipt')
  String printReceipt;
  @JsonKey(name: 'signature_required')
  String signatureRequired;

  TransactionRefundRequest(
    String transactionId, {
    this.amount,
    this.ipAddress,
    this.terminalId,
    this.vendorId,
    this.printReceipt,
    this.signatureRequired,
  }) : super(transactionId, TransactionActionRequestType.refund);

  @override
  TransactionRefundResponse buildResponse(Map<String, dynamic> json) =>
      TransactionRefundResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionRefundRequestToJson(this);
}

@JsonSerializable()
class TransactionCreateVaultRequest
    extends TransactionActionRequest<TransactionCreateVaultResponse> {
  TransactionCreateVaultRequest(String transactionId)
      : super(transactionId, TransactionActionRequestType.vault);

  @override
  TransactionCreateVaultResponse buildResponse(Map<String, dynamic> json) =>
      TransactionCreateVaultResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionCreateVaultRequestToJson(this);
}

@JsonSerializable()
class TransactionEmailReceiptRequest
    extends TransactionActionRequest<TransactionEmailReceiptResponse> {
  @JsonKey(name: 'email_address')
  final String emailAddress;

  TransactionEmailReceiptRequest(this.emailAddress, String transactionId)
      : super(transactionId, TransactionActionRequestType.email);

  @override
  TransactionEmailReceiptResponse buildResponse(Map<String, dynamic> json) =>
      TransactionEmailReceiptResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionEmailReceiptRequestToJson(this);
}

@JsonSerializable()
class TransactionPrintReceiptRequest
    extends TransactionActionRequest<TransactionPrintReceiptResponse> {
  TransactionPrintReceiptRequest(String transactionId)
      : super(transactionId, TransactionActionRequestType.print);

  @override
  TransactionPrintReceiptResponse buildResponse(Map<String, dynamic> json) =>
      TransactionPrintReceiptResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionPrintReceiptRequestToJson(this);
}

@JsonSerializable()
class TransactionTipAdjustmentRequest
    extends TransactionActionRequest<TransactionTipAdjustmentResponse> {
  int tip;
  @JsonKey(name: 'base_amount')
  int baseAmount;

  TransactionTipAdjustmentRequest(String transactionId, {this.tip, this.baseAmount})
      : super(transactionId, TransactionActionRequestType.tipAdjust);

  @override
  TransactionTipAdjustmentResponse buildResponse(Map<String, dynamic> json) =>
      TransactionTipAdjustmentResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionTipAdjustmentRequestToJson(this);
}

@JsonSerializable()
class TransactionMultiRequest extends Creatable<TransactionMultiResponse> {
  @JsonKey(name: 'create_vault_record')
  bool createVaultRecord;
  @JsonKey(name: 'create_vault_record_merchant_id')
  String createVaultRecordMerchantId;

  @JsonKey(name: 'payment_method')
  PaymentMethodRequest paymentMethod;

  @JsonKey(name: 'billing_address')
  Address billingAddress;
  @JsonKey(name: 'shipping_address')
  Address shippingAddress;

  List<TransactionMultiRequestData> transactions;

  @override
  TransactionMultiResponse buildResponse(Map<String, dynamic> json) =>
      TransactionMultiResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/multi';

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiRequestToJson(this);
}

@JsonSerializable()
class TransactionMultiRequestData extends Decodable {
  @JsonKey(name: 'merchant_id')
  String merchantId;
  @JsonKey(name: 'processor_id')
  String processorId;
  TransactionType type;

  int amount;
  @JsonKey(name: 'tax_amount')
  int taxAmount;
  @JsonKey(name: 'shipping_amount')
  int shippingAmount;

  String currency;
  String description;
  @JsonKey(name: 'order_id')
  String orderId;
  @JsonKey(name: 'po_number')
  String poNumber;
  @JsonKey(name: 'ip_address')
  String ipAddress;

  @JsonKey(name: 'line_items')
  List<LineItem> lineItems;

  TransactionMultiRequestData();

  factory TransactionMultiRequestData.fromJson(Map<String, dynamic> json) =>
      _$TransactionMultiRequestDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiRequestDataToJson(this);
}

@JsonSerializable()
class TransactionMultiVoidRequest extends Creatable<TransactionMultiVoidResponse> {
  List<VoidTransactionData> transactions;

  @override
  TransactionMultiVoidResponse buildResponse(Map<String, dynamic> json) =>
      TransactionMultiVoidResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/multi/void';

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiVoidRequestToJson(this);
}

@JsonSerializable()
class VoidTransactionData extends Decodable {
  String id;

  VoidTransactionData();

  factory VoidTransactionData.fromJson(Map<String, dynamic> json) =>
      _$VoidTransactionDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VoidTransactionDataToJson(this);
}

@JsonSerializable()
class TransactionMultiRefundRequest extends Creatable<TransactionMultiRefundResponse> {
  List<RefundTransactionData> transactions;

  @override
  TransactionMultiRefundResponse buildResponse(Map<String, dynamic> json) =>
      TransactionMultiRefundResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/multi/void';

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiRefundRequestToJson(this);
}

@JsonSerializable()
class RefundTransactionData extends Decodable {
  String id;
  int amount;

  RefundTransactionData();

  factory RefundTransactionData.fromJson(Map<String, dynamic> json) =>
      _$RefundTransactionDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RefundTransactionDataToJson(this);
}

@JsonSerializable()
class TransactionSearchRequest extends Searchable<TransactionSearchResponse> {
  @JsonKey(ignore: true)
  final String merchantId;

  @JsonKey(name: 'transaction_or_order_id')
  QuerySearchParamString transactionOrOrderId;
  @JsonKey(name: 'transaction_id')
  QuerySearchParamString transactionId;
  @JsonKey(name: 'user_id')
  QuerySearchParamString userId;
  @JsonKey(name: 'user_name')
  QuerySearchParamString userName;
  QuerySearchParamString type;
  @JsonKey(name: 'transaction_source')
  QuerySearchParamString transactionSource;
  @JsonKey(name: 'ip_address')
  QuerySearchParamString ipAddress;

  QuerySearchParamInt amount;
  @JsonKey(name: 'amount_authorized')
  QuerySearchParamInt amountAuthorized;
  @JsonKey(name: 'amount_captured')
  QuerySearchParamInt amountCaptured;
  @JsonKey(name: 'amount_settled')
  QuerySearchParamInt amountSettled;
  @JsonKey(name: 'tax_amount')
  QuerySearchParamInt taxAmount;

  @JsonKey(name: 'po_number')
  QuerySearchParamString poNumber;
  @JsonKey(name: 'order_id')
  QuerySearchParamString orderId;

  @JsonKey(name: 'settlement_batch_id')
  QuerySearchParamString settlementBatchId;
  @JsonKey(name: 'currency_iso_code')
  QuerySearchParamString currencyIsoCode;

  @JsonKey(name: 'payment_method')
  QuerySearchParamString paymentMethod;
  @JsonKey(name: 'payment_type')
  QuerySearchParamString paymentType;

  QuerySearchParamString status;
  QuerySearchParamString state;

  @JsonKey(name: 'processor_id')
  QuerySearchParamString processorId;
  @JsonKey(name: 'processor_name')
  QuerySearchParamString processorName;
  @JsonKey(name: 'terminal_id')
  QuerySearchParamString terminalId;
  @JsonKey(name: 'terminal_description')
  QuerySearchParamString terminalDescription;
  @JsonKey(name: 'subscription_id')
  QuerySearchParamString subscriptionId;

  @JsonKey(name: 'customer_id')
  QuerySearchParamString customerId;

  @JsonKey(name: 'full_cc_number')
  QuerySearchParamString fullCCNumber;
  @JsonKey(name: 'cc_last_four')
  QuerySearchParamString last4CCNumber;
  @JsonKey(name: 'cc_first_six')
  QuerySearchParamString first6CCNumber;

  @JsonKey(name: 'billing_address')
  Address billingAddress;
  @JsonKey(name: 'shipping_address')
  Address shippingAddress;

  @JsonKey(name: 'custom_fields')
  Map<String, QuerySearchParamString> customFields;

  @JsonKey(name: 'created_at')
  SearchDateRange createdDate;
  @JsonKey(name: 'updated_at')
  SearchDateRange updatedDate;
  @JsonKey(name: 'captured_at')
  SearchDateRange capturedDate;
  @JsonKey(name: 'settled_at')
  SearchDateRange settledDate;

  QuerySearchParamString limit;
  QuerySearchParamString offset;

  TransactionSearchRequest({this.merchantId});

  @override
  TransactionSearchResponse buildResponse(Map<String, dynamic> json) =>
      TransactionSearchResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/search${merchantId != null ? '/$merchantId' : ''}';
}

abstract class QuerySearchParam<Value> extends Decodable {
  String operator;
  Value value;

  QuerySearchParam({this.operator, this.value});
}

@JsonSerializable()
class QuerySearchParamString extends QuerySearchParam<String> {
  QuerySearchParamString({String operator, String value})
      : super(operator: operator, value: value);

  factory QuerySearchParamString.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamStringFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamStringToJson(this);
}

@JsonSerializable()
class QuerySearchParamInt extends QuerySearchParam<int> {
  QuerySearchParamInt({String operator, int value})
      : super(operator: operator, value: value);

  factory QuerySearchParamInt.fromJson(Map<String, dynamic> json) =>
      _$QuerySearchParamIntFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$QuerySearchParamIntToJson(this);
}

enum SearchDateRangeDuration {
  today,
  yesterday,
  @JsonValue('this_month')
  thisMonth,
  @JsonValue('last_month')
  lastMonth,
  @JsonValue('this_year')
  thisYear,
  @JsonValue('last_year')
  lastYear,
}

@JsonSerializable()
class SearchDateRange extends Decodable {
  @JsonKey(name: 'start_date')
  DateTime startDate;
  @JsonKey(name: 'end_date')
  DateTime endDate;
  SearchDateRangeDuration duration;

  SearchDateRange({this.startDate, this.endDate, this.duration});

  SearchDateRange.fromDuration(SearchDateRangeDuration duration) {
    final now = DateTime.now();

    switch (duration) {
      case SearchDateRangeDuration.today:
        startDate = DateTime(now.year, now.month, now.day);
        endDate = DateTime(now.year, now.month, now.day)
            .add(Duration(days: 1))
            .subtract(Duration(microseconds: 1));
        break;
      case SearchDateRangeDuration.yesterday:
        startDate = DateTime(now.year, now.month, now.day).subtract(Duration(days: 1));
        endDate =
            DateTime(now.year, now.month, now.day).subtract(Duration(microseconds: 1));
        break;
      case SearchDateRangeDuration.thisMonth:
        startDate = DateTime(now.year, now.month);

        final nextMonth = now.month + 1;
        endDate =
            DateTime(
                now.year + nextMonth ~/ DateTime.monthsPerYear,
                nextMonth % DateTime.monthsPerYear)
                .subtract(Duration(microseconds: 1));
        break;
      case SearchDateRangeDuration.lastMonth:
        if (now.month == DateTime.january) {
          startDate = DateTime(now.year - 1, DateTime.december);
          endDate = DateTime(now.year, DateTime.january).subtract(Duration(microseconds: 1));
        } else {
          startDate = DateTime(now.year, now.month - 1);
          endDate = DateTime(now.year, now.month).subtract(Duration(microseconds: 1));
        }
        break;
      case SearchDateRangeDuration.thisYear:
        startDate = DateTime(now.year);
        endDate = DateTime(now.year + 1).subtract(Duration(microseconds: 1));
        break;
      case SearchDateRangeDuration.lastYear:
        startDate = DateTime(now.year - 1);
        endDate = DateTime(now.year).subtract(Duration(microseconds: 1));
        break;
    }
  }

  factory SearchDateRange.fromJson(Map<String, dynamic> json) =>
      _$SearchDateRangeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SearchDateRangeToJson(this);
}
