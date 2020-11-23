import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/transaction/payment_method/request_data.dart';
import 'package:fluidpay/com/fluidpay/transaction/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionCreateRequest extends Creatable<TransactionCreateResponse> {
  String idempotencyKey;
  int idempotencyTime;
  TransactionType type;
  bool taxExempt;
  String currency;
  String description;
  String orderId;
  String poNumber;
  String ipAddress;
  bool emailReceipt;
  String emailAddress;
  String processorId;
  bool allowPartialPayment;
  bool createVaultRecord;
  String vaultRecordIdFormat;
  String vendorId;

  // Amounts
  int amount;
  int taxAmount;
  int shippingAmount;
  int surcharge;
  int discountAmount;

  // Level 3 related

  int nationalTaxAmount;
  int dutyAmount;
  String shipFromPostalCode;
  String summaryCommodityCode;
  String merchantVatRegistrationNumber;
  String customerVatRegistrationNumber;

  PaymentAdjustmentRequest paymentAdjustment;
  AdditionalAmountsRequest additionalAmounts;

  // Payment method
  PaymentMethodRequest paymentMethod;

  // Card On File
  String cardOnFileIndicator;
  String initiatedBy;
  String initialTransactionId;
  String storedCredentialIndicator;

  // Addresses
  Address billingAddress;
  Address shippingAddress;

  ProcessorSpecificRequest processorSpecific;
  Map<String, List<String>> customFields;
  String groupName;
  DescriptorRequest descriptor;
  List<LineItem> lineItems;
  Map<String, dynamic> fingerprint;
  bool bypassRuleEngine;
  bool voidOnSuccess;

  String billingMethod;
  String mcc;

  TransactionCreateRequest(
      {this.idempotencyKey,
      this.idempotencyTime,
      this.type,
      this.taxExempt,
      this.currency,
      this.description,
      this.orderId,
      this.poNumber,
      this.ipAddress,
      this.emailReceipt,
      this.emailAddress,
      this.processorId,
      this.allowPartialPayment,
      this.createVaultRecord,
      this.vaultRecordIdFormat,
      this.vendorId,
      this.amount,
      this.taxAmount,
      this.shippingAmount,
      this.surcharge,
      this.discountAmount,
      this.nationalTaxAmount,
      this.dutyAmount,
      this.shipFromPostalCode,
      this.summaryCommodityCode,
      this.merchantVatRegistrationNumber,
      this.customerVatRegistrationNumber,
      this.paymentAdjustment,
      this.additionalAmounts,
      this.paymentMethod,
      this.cardOnFileIndicator,
      this.initiatedBy,
      this.initialTransactionId,
      this.storedCredentialIndicator,
      this.billingAddress,
      this.shippingAddress,
      this.processorSpecific,
      this.customFields,
      this.groupName,
      this.descriptor,
      this.lineItems,
      this.fingerprint,
      this.bypassRuleEngine,
      this.voidOnSuccess,
      this.billingMethod,
      this.mcc});

  @override
  TransactionCreateResponse buildResponse(Map<String, dynamic> json) => TransactionCreateResponse.fromJson(json);

  @override
  String getUrl() => '/transaction';

  @override
  Map<String, dynamic> toJson() => _$TransactionCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentAdjustmentRequest extends Decodable {
  int value;
  String type;

  PaymentAdjustmentRequest({this.value, this.type});

  factory PaymentAdjustmentRequest.fromJson(Map<String, dynamic> json) => _$PaymentAdjustmentRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentAdjustmentRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AdditionalAmountsRequest extends Decodable {
  HSAAmountsRequest hsa;

  AdditionalAmountsRequest({this.hsa});

  factory AdditionalAmountsRequest.fromJson(Map<String, dynamic> json) => _$AdditionalAmountsRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdditionalAmountsRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HSAAmountsRequest extends Decodable {
  int total;
  int rxAmount;
  int visionAmount;
  int clinicAmount;
  int dentalAmount;
  String sku;

  HSAAmountsRequest({
    this.total,
    this.rxAmount,
    this.visionAmount,
    this.clinicAmount,
    this.dentalAmount,
    this.sku,
  });

  factory HSAAmountsRequest.fromJson(Map<String, dynamic> json) => _$HSAAmountsRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HSAAmountsRequestToJson(this);
}

@JsonSerializable()
class ProcessorSpecificRequest {
  BoltPay boltPay;

  ProcessorSpecificRequest({this.boltPay});

  factory ProcessorSpecificRequest.fromJson(Map<String, dynamic> json) => _$ProcessorSpecificRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorSpecificRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BoltPay {
  String recurringCycle;

  BoltPay({this.recurringCycle});

  factory BoltPay.fromJson(Map<String, dynamic> json) => _$BoltPayFromJson(json);

  Map<String, dynamic> toJson() => _$BoltPayToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DescriptorRequest {
  String name;
  String address;
  String city;
  String state;
  String postalCode;
  String email;
  String phone;

  DescriptorRequest({
    this.name,
    this.address,
    this.city,
    this.state,
    this.postalCode,
    this.email,
    this.phone,
  });

  factory DescriptorRequest.fromJson(Map<String, dynamic> json) => _$DescriptorRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DescriptorRequestToJson(this);
}

class TransactionGetRequest extends Searchable<TransactionGetResponse> {
  final String merchantId;
  final String transactionId;

  TransactionGetRequest(this.transactionId, {this.merchantId});

  @override
  TransactionGetResponse buildResponse(Map<String, dynamic> json) => TransactionGetResponse.fromJson(json);

  @override
  String getUrl() {
    var result = '/transaction';

    if (merchantId != null) {
      result += '/$merchantId';
    }

    result += '/$transactionId';

    return result;
  }

  @override
  Method getRequestMethod() => Method.GET;
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

abstract class TransactionActionRequest<Response extends Responsable> extends Updatable<Response> {
  @JsonKey(ignore: true)
  final TransactionActionRequestType type;

  final String transactionId;

  TransactionActionRequest(this.transactionId, this.type);

  @override
  String getUrl() => '/transaction/$transactionId/${type.name}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionCaptureRequest extends TransactionActionRequest<TransactionCaptureResponse> {
  int amount;
  int taxAmount;
  bool taxExempt;
  int shippingAmount;
  String orderId;
  String poNumber;
  String ipAddress;
  String vendorId;

  TransactionCaptureRequest(
    String transactionId, {
    this.amount,
    this.taxAmount,
    this.taxExempt,
    this.shippingAmount,
    this.orderId,
    this.poNumber,
    this.ipAddress,
    this.vendorId,
  }) : super(transactionId, TransactionActionRequestType.capture);

  @override
  Map<String, dynamic> toJson() => _$TransactionCaptureRequestToJson(this);

  @override
  TransactionCaptureResponse buildResponse(Map<String, dynamic> json) => TransactionCaptureResponse.fromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionVoidRequest extends TransactionActionRequest<TransactionVoidResponse> {
  TransactionVoidRequest(String transactionId) : super(transactionId, TransactionActionRequestType.voidAction);

  @override
  Map<String, dynamic> toJson() => _$TransactionVoidRequestToJson(this);

  @override
  TransactionVoidResponse buildResponse(Map<String, dynamic> json) => TransactionVoidResponse.fromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionRefundRequest extends TransactionActionRequest<TransactionRefundResponse> {
  int amount;
  String ipAddress;
  String terminalId;
  String vendorId;
  String printReceipt;
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
  TransactionRefundResponse buildResponse(Map<String, dynamic> json) => TransactionRefundResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionRefundRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionCreateVaultRequest extends TransactionActionRequest<TransactionCreateVaultResponse> {
  TransactionCreateVaultRequest(String transactionId) : super(transactionId, TransactionActionRequestType.vault);

  @override
  TransactionCreateVaultResponse buildResponse(Map<String, dynamic> json) => TransactionCreateVaultResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionCreateVaultRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionEmailReceiptRequest extends TransactionActionRequest<TransactionEmailReceiptResponse> {
  final String emailAddress;

  TransactionEmailReceiptRequest(this.emailAddress, String transactionId)
      : super(transactionId, TransactionActionRequestType.email);

  @override
  TransactionEmailReceiptResponse buildResponse(Map<String, dynamic> json) => TransactionEmailReceiptResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionEmailReceiptRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionPrintReceiptRequest extends TransactionActionRequest<TransactionPrintReceiptResponse> {
  TransactionPrintReceiptRequest(String transactionId) : super(transactionId, TransactionActionRequestType.print);

  @override
  TransactionPrintReceiptResponse buildResponse(Map<String, dynamic> json) => TransactionPrintReceiptResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionPrintReceiptRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionTipAdjustmentRequest extends TransactionActionRequest<TransactionTipAdjustmentResponse> {
  int tip;
  int baseAmount;

  TransactionTipAdjustmentRequest(String transactionId, {this.tip, this.baseAmount})
      : super(transactionId, TransactionActionRequestType.tipAdjust);

  @override
  TransactionTipAdjustmentResponse buildResponse(Map<String, dynamic> json) => TransactionTipAdjustmentResponse.fromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionTipAdjustmentRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMultiRequest extends Creatable<TransactionMultiResponse> {
  bool createVaultRecord;
  String createVaultRecordMerchantId;

  PaymentMethodRequest paymentMethod;

  Address billingAddress;
  Address shippingAddress;

  List<TransactionMultiRequestData> transactions;

  TransactionMultiRequest(
      {this.createVaultRecord,
      this.createVaultRecordMerchantId,
      this.paymentMethod,
      this.billingAddress,
      this.shippingAddress,
      this.transactions});

  @override
  TransactionMultiResponse buildResponse(Map<String, dynamic> json) => TransactionMultiResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/multi';

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMultiRequestData extends Decodable {
  String merchantId;
  String processorId;
  TransactionType type;

  int amount;
  int taxAmount;
  int shippingAmount;

  String currency;
  String description;
  String orderId;
  String poNumber;
  String ipAddress;

  List<LineItem> lineItems;

  TransactionMultiRequestData({
    this.merchantId,
    this.processorId,
    this.type,
    this.amount,
    this.taxAmount,
    this.shippingAmount,
    this.currency,
    this.description,
    this.orderId,
    this.poNumber,
    this.ipAddress,
    this.lineItems,
  });

  factory TransactionMultiRequestData.fromJson(Map<String, dynamic> json) => _$TransactionMultiRequestDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiRequestDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMultiVoidRequest extends Creatable<TransactionMultiVoidResponse> {
  List<VoidTransactionData> transactions;

  TransactionMultiVoidRequest({this.transactions});

  @override
  TransactionMultiVoidResponse buildResponse(Map<String, dynamic> json) => TransactionMultiVoidResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/multi/void';

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiVoidRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class VoidTransactionData extends Decodable {
  String id;

  VoidTransactionData({this.id});

  factory VoidTransactionData.fromJson(Map<String, dynamic> json) => _$VoidTransactionDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VoidTransactionDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionMultiRefundRequest extends Creatable<TransactionMultiRefundResponse> {
  List<RefundTransactionData> transactions;

  TransactionMultiRefundRequest({this.transactions});

  @override
  TransactionMultiRefundResponse buildResponse(Map<String, dynamic> json) => TransactionMultiRefundResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/multi/void';

  @override
  Map<String, dynamic> toJson() => _$TransactionMultiRefundRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RefundTransactionData extends Decodable {
  String id;
  int amount;

  RefundTransactionData({this.id, this.amount});

  factory RefundTransactionData.fromJson(Map<String, dynamic> json) => _$RefundTransactionDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RefundTransactionDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TransactionSearchRequest extends Searchable<TransactionSearchResponse> {
  @JsonKey(ignore: true)
  final String merchantId;

  QuerySearchParamString transactionOrOrderId;
  QuerySearchParamString transactionId;
  QuerySearchParamString userId;
  QuerySearchParamString userName;
  QuerySearchParamString type;
  QuerySearchParamString transactionSource;
  QuerySearchParamString ipAddress;

  QuerySearchParamInt amount;
  QuerySearchParamInt amountAuthorized;
  QuerySearchParamInt amountCaptured;
  QuerySearchParamInt amountSettled;
  QuerySearchParamInt taxAmount;

  QuerySearchParamString poNumber;
  QuerySearchParamString orderId;

  QuerySearchParamString settlementBatchId;
  QuerySearchParamString currencyIsoCode;

  QuerySearchParamString paymentMethod;
  QuerySearchParamString paymentType;

  QuerySearchParamString status;
  QuerySearchParamString state;

  QuerySearchParamString processorId;
  QuerySearchParamString processorName;
  QuerySearchParamString terminalId;
  QuerySearchParamString terminalDescription;
  QuerySearchParamString subscriptionId;

  QuerySearchParamString customerId;

  @JsonKey(name: 'full_cc_number')
  QuerySearchParamString fullCCNumber;
  @JsonKey(name: 'cc_last_four')
  QuerySearchParamString last4CCNumber;
  @JsonKey(name: 'cc_first_six')
  QuerySearchParamString first6CCNumber;

  Address billingAddress;
  Address shippingAddress;

  Map<String, QuerySearchParamString> customFields;

  SearchDateRange createdAt;
  SearchDateRange updatedAt;
  SearchDateRange capturedAt;
  SearchDateRange settledAt;

  int limit;
  int offset;

  TransactionSearchRequest(
      {this.merchantId,
      this.transactionOrOrderId,
      this.transactionId,
      this.userId,
      this.userName,
      this.type,
      this.transactionSource,
      this.ipAddress,
      this.amount,
      this.amountAuthorized,
      this.amountCaptured,
      this.amountSettled,
      this.taxAmount,
      this.poNumber,
      this.orderId,
      this.settlementBatchId,
      this.currencyIsoCode,
      this.paymentMethod,
      this.paymentType,
      this.status,
      this.state,
      this.processorId,
      this.processorName,
      this.terminalId,
      this.terminalDescription,
      this.subscriptionId,
      this.customerId,
      this.fullCCNumber,
      this.last4CCNumber,
      this.first6CCNumber,
      this.billingAddress,
      this.shippingAddress,
      this.customFields,
      this.createdAt,
      this.updatedAt,
      this.capturedAt,
      this.settledAt,
      this.limit,
      this.offset});

  @override
  TransactionSearchResponse buildResponse(Map<String, dynamic> json) => TransactionSearchResponse.fromJson(json);

  @override
  String getUrl() => '/transaction/search${merchantId != null ? '/$merchantId' : ''}';

  @override
  Map<String, dynamic> toJson() => _$TransactionSearchRequestToJson(this);
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

@JsonSerializable(fieldRename: FieldRename.snake)
class SearchDateRange extends QuerySearchParamDateRange {
  SearchDateRangeDuration duration;

  SearchDateRange({DateTime startDate, DateTime endDate, this.duration}) : super(startDate: startDate, endDate: endDate);

  SearchDateRange.fromDuration(SearchDateRangeDuration duration) {
    final now = DateTime.now();

    switch (duration) {
      case SearchDateRangeDuration.today:
        startDate = DateTime(now.year, now.month, now.day);
        endDate = DateTime(now.year, now.month, now.day).add(Duration(days: 1)).subtract(Duration(microseconds: 1));
        break;
      case SearchDateRangeDuration.yesterday:
        startDate = DateTime(now.year, now.month, now.day).subtract(Duration(days: 1));
        endDate = DateTime(now.year, now.month, now.day).subtract(Duration(microseconds: 1));
        break;
      case SearchDateRangeDuration.thisMonth:
        startDate = DateTime(now.year, now.month);

        final nextMonth = now.month + 1;
        endDate = DateTime(now.year + nextMonth ~/ DateTime.monthsPerYear, nextMonth % DateTime.monthsPerYear)
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

  factory SearchDateRange.fromJson(Map<String, dynamic> json) => _$SearchDateRangeFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SearchDateRangeToJson(this);
}
