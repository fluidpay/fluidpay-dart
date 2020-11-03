import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/invoice/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'common.dart';

part 'request.g.dart';

@JsonSerializable()
class InvoiceCreateRequest extends Creatable<InvoiceCreateResponse> {
  String currency;
  @JsonKey(name: 'company_name')
  String companyName;
  @JsonKey(name: 'customer_number')
  String customerNumber;
  @JsonKey(name: 'invoice_number')
  String invoiceNumber;
  @JsonKey(name: 'customer_id')
  String customerId;
  @JsonKey(name: 'payable_to')
  InvoicePayableTo payableTo;
  @JsonKey(name: 'bill_to')
  InvoiceBillTo billTo;
  @JsonKey(name: 'date_due')
  String dateDue;
  List<LineItem> items;
  @JsonKey(name: 'advanced_fields')
  bool advancedFields;
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
  int shipping;
  @JsonKey(name: 'amount_paid')
  int amountPaid;
  int adjustment;
  @JsonKey(name: 'allowPartial_payment')
  bool allowPartialPayment;
  @JsonKey(name: 'transaction_type')
  String transactionType;
  @JsonKey(name: 'payment_methods')
  List<String> paymentMethods;
  @JsonKey(name: 'card_processor_id')
  String cardProcessorId;
  @JsonKey(name: 'ach_processor_id')
  String achProcessorId;
  String message;
  @JsonKey(name: 'send_via')
  SendVia sendVia;
  @JsonKey(name: 'email_to')
  String emailTo;

  InvoiceCreateRequest(
      {this.currency,
      this.companyName,
      this.customerNumber,
      this.invoiceNumber,
      this.customerId,
      this.payableTo,
      this.billTo,
      this.dateDue,
      this.items,
      this.advancedFields,
      this.enableTax,
      this.enableShipping,
      this.requireShippingDetails,
      this.requireBillingDetailsOnPaymentOnly,
      this.taxPercent,
      this.shipping,
      this.amountPaid,
      this.adjustment,
      this.allowPartialPayment,
      this.transactionType,
      this.paymentMethods,
      this.cardProcessorId,
      this.achProcessorId,
      this.message,
      this.sendVia,
      this.emailTo});

  @override
  InvoiceCreateResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceCreateResponse.fromJson(json);

  @override
  String getUrl() => '/invoice';

  @override
  Map<String, dynamic> toJson() => _$InvoiceCreateRequestToJson(this);
}

@JsonSerializable()
class InvoiceUpdateRequest extends Updatable<InvoiceUpdateResponse> {
  String id;
  String currency;
  @JsonKey(name: 'company_name')
  String companyName;
  @JsonKey(name: 'customer_number')
  String customerNumber;
  @JsonKey(name: 'invoice_number')
  String invoiceNumber;
  @JsonKey(name: 'customer_id')
  String customerId;
  @JsonKey(name: 'payable_to')
  InvoicePayableTo payableTo;
  @JsonKey(name: 'bill_to')
  InvoiceBillTo billTo;
  @JsonKey(name: 'date_due')
  String dateDue;
  List<LineItem> items;
  @JsonKey(name: 'advanced_fields')
  bool advancedFields;
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
  int shipping;
  @JsonKey(name: 'amount_paid')
  int amountPaid;
  int adjustment;
  @JsonKey(name: 'allowPartial_payment')
  bool allowPartialPayment;
  @JsonKey(name: 'transaction_type')
  String transactionType;
  @JsonKey(name: 'payment_methods')
  List<String> paymentMethods;
  @JsonKey(name: 'card_processor_id')
  String cardProcessorId;
  @JsonKey(name: 'ach_processor_id')
  String achProcessorId;
  String message;
  @JsonKey(name: 'send_via')
  SendVia sendVia;
  @JsonKey(name: 'email_to')
  String emailTo;
  @JsonKey(name: 'mark_as_paid')
  bool markAsPaid;
  bool reactivate;

  InvoiceUpdateRequest(
      {this.id,
      this.currency,
      this.companyName,
      this.customerNumber,
      this.invoiceNumber,
      this.customerId,
      this.payableTo,
      this.billTo,
      this.dateDue,
      this.items,
      this.advancedFields,
      this.enableTax,
      this.enableShipping,
      this.requireShippingDetails,
      this.requireBillingDetailsOnPaymentOnly,
      this.taxPercent,
      this.shipping,
      this.amountPaid,
      this.adjustment,
      this.allowPartialPayment,
      this.transactionType,
      this.paymentMethods,
      this.cardProcessorId,
      this.achProcessorId,
      this.message,
      this.sendVia,
      this.emailTo,
      this.markAsPaid,
      this.reactivate});

  @override
  InvoiceUpdateResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}';

  @override
  Map<String, dynamic> toJson() => _$InvoiceUpdateRequestToJson(this);
}
