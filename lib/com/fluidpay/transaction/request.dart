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

  factory BoltPay.fromJson(Map<String, dynamic> json) =>
      _$BoltPayFromJson(json);

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

class TransactionSearchRequest extends Searchable<TransactionSearchResponse> {
  final String merchantId;
  final String transactionId;

  TransactionSearchRequest(this.transactionId, {this.merchantId});


  @override
  TransactionSearchResponse buildResponse(Map<String, dynamic> json) =>
      TransactionSearchResponse.fromJson(json);

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