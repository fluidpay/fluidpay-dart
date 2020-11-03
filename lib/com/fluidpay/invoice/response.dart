import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';
import 'common.dart';

part 'response.g.dart';

@JsonSerializable()
class InvoiceCreateResponse extends Responsable<InvoiceCreateResponseData> {
  InvoiceCreateResponse();

  factory InvoiceCreateResponse.fromJson(Map<String, dynamic> json) => _$InvoiceCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceCreateResponseToJson(this);
}

@JsonSerializable()
class InvoiceUpdateResponse extends Responsable<InvoiceUpdateResponseData> {
  InvoiceUpdateResponse();

  factory InvoiceUpdateResponse.fromJson(Map<String, dynamic> json) => _$InvoiceUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceUpdateResponseToJson(this);
}

@JsonSerializable()
class InvoiceUpdateResponseData extends InvoiceResponseData {
  InvoiceUpdateResponseData(): super();

  factory InvoiceUpdateResponseData.fromJson(Map<String, dynamic> json) => _$InvoiceUpdateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceUpdateResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceCreateResponseData extends InvoiceResponseData {
  InvoiceCreateResponseData(): super();

  factory InvoiceCreateResponseData.fromJson(Map<String, dynamic> json) => _$InvoiceCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceCreateResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceResponseData extends Decodable {
  String id;
  String currency;
  @JsonKey(name: 'company_name')
  String companyName;
  @JsonKey(name: 'company_logo_url')
  String companyLogoUrl;
  @JsonKey(name: 'customer_number')
  String customerNumber;
  @JsonKey(name: 'invoice_number')
  String invoiceNumber;
  @JsonKey(name: 'payable_to')
  InvoicePayableTo payableTo;
  @JsonKey(name: 'bill_to')
  InvoiceBillTo billTo;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'date_due')
  String dateDue;
  List<LineItem> items;
  @JsonKey(name: 'advanced_fields')
  bool advancedFields;
  int subtotal;
  @JsonKey(name: 'enable_tax')
  bool enableTax;
  @JsonKey(name: 'enable_shipping')
  bool enableShipping;
  @JsonKey(name: 'require_shipping_details')
  bool requireShippingDetails;
  @JsonKey(name: 'require_billing_details_on_payment_only')
  bool requireBillingDetailsOnPaymentOnly;
  @JsonKey(name: 'tax_percent')
  String taxPercent;
  int tax;
  int shipping;
  int total;
  @JsonKey(name: 'amount_paid')
  int amountPaid;
  @JsonKey(name: 'service_fees_paid')
  int serviceFeesPaid;
  @JsonKey(name: 'surcharge_paid')
  int surchargePaid;
  @JsonKey(name: 'discount_credited')
  int discountCredited;
  int adjustment;
  @JsonKey(name: 'amount_due')
  int amountDue;
  @JsonKey(name: 'allow_partial_payment')
  bool allowPartialPayment;
  @JsonKey(name: 'transaction_type')
  String transactionType;
  @JsonKey(name: 'payment_methods')
  List<String> paymentMethods;
  @JsonKey(name: 'card_processor_id')
  String cardProcessorId;
  @JsonKey(name: 'ach_processor_id')
  String achProcessorId;
  InvoiceStatus status;
  String message;
  @JsonKey(name: 'reject_message')
  String rejectMessage;
  @JsonKey(name: 'send_via')
  SendVia sendVia;
  @JsonKey(name: 'email_to')
  String emailTo;
  @JsonKey(name: 'last_sent_at')
  String lastSentAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;
  @JsonKey(name: 'public_hash')
  String publicHash;
  @JsonKey(name: 'hosted_url')
  String hostedUrl;
  @JsonKey(name: 'merchant_id')
  String merchantId;
  @JsonKey(name: 'customer_id')
  String customerId;

  InvoiceResponseData();

  factory InvoiceResponseData.fromJson(Map<String, dynamic> json) => _$InvoiceResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceResponseDataToJson(this);
}
