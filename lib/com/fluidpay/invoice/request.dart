import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/invoice/response.dart';
import 'package:json_annotation/json_annotation.dart';
import 'common.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceCreateRequest extends Creatable<InvoiceCreateResponse> {
  String currency;
  String companyName;
  String customerNumber;
  String invoiceNumber;
  String customerId;
  InvoicePayableTo payableTo;
  InvoiceBillTo billTo;
  String dateDue;
  List<LineItem> items;
  bool advancedFields;
  bool enableTax;
  bool enableShipping;
  bool requireShippingDetails;
  bool requireBillingDetailsOnPaymentOnly;
  String taxPercent;
  int shipping;
  int amountPaid;
  int adjustment;
  bool allowPartialPayment;
  String transactionType;
  List<String> paymentMethods;
  String cardProcessorId;
  String achProcessorId;
  String message;
  SendVia sendVia;
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

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceUpdateRequest extends Updatable<InvoiceUpdateResponse> {
  String id;
  String currency;
  String companyName;
  String customerNumber;
  String invoiceNumber;
  String customerId;
  InvoicePayableTo payableTo;
  InvoiceBillTo billTo;
  String dateDue;
  List<LineItem> items;
  bool advancedFields;
  bool enableTax;
  bool enableShipping;
  bool requireShippingDetails;
  bool requireBillingDetailsOnPaymentOnly;
  String taxPercent;
  int shipping;
  int amountPaid;
  int adjustment;
  bool allowPartialPayment;
  String transactionType;
  List<String> paymentMethods;
  String cardProcessorId;
  String achProcessorId;
  String message;
  SendVia sendVia;
  String emailTo;
  bool markAsPaid;
  bool reactivate;

  InvoiceUpdateRequest(this.id,
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

@JsonSerializable()
class InvoiceResendRequest extends Updatable<InvoiceResendResponse> {
  String id;

  InvoiceResendRequest(this.id);

  @override
  InvoiceResendResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceResendResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}/resend';
}

@JsonSerializable()
class InvoiceMarkAsPaidRequest extends Updatable<InvoiceMarkAsPaidResponse> {
  String id;

  InvoiceMarkAsPaidRequest(this.id);

  @override
  InvoiceMarkAsPaidResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceMarkAsPaidResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}/mark-as-paid';
}

@JsonSerializable()
class InvoiceReactivateRequest extends Updatable<InvoiceReactivateResponse> {
  String id;

  InvoiceReactivateRequest(this.id);

  @override
  InvoiceReactivateResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceReactivateResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}/reactivate';
}

@JsonSerializable()
class InvoiceDeleteRequest extends Deletable<InvoiceDeleteResponse> {
  String id;

  InvoiceDeleteRequest(this.id);

  @override
  InvoiceDeleteResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}';
}

@JsonSerializable()
class InvoiceGetRequest extends Searchable<InvoiceGetResponse> {
  String id;

  InvoiceGetRequest(this.id);

  @override
  InvoiceGetResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceGetResponse.fromJson(json);

  @override
  String getUrl() => '/invoice/${id}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceSearchRequest extends Searchable<InvoiceSearchResponse> {
  QuerySearchParamString id;
  QuerySearchParamString customerId;
  QuerySearchParamString invoiceNumber;
  QuerySearchParamDateRange dateDue;
  QuerySearchParamInt amountDue;
  QuerySearchParamString status;
  int offset;
  int limit;

  InvoiceSearchRequest(
      {this.id,
      this.customerId,
      this.invoiceNumber,
      this.dateDue,
      this.amountDue,
      this.status,
      this.offset,
      this.limit});

  @override
  InvoiceSearchResponse buildResponse(Map<String, dynamic> json) =>
      InvoiceSearchResponse.fromJson(json);

  @override
  String getUrl() => '/invoices/search';

  @override
  Map<String, dynamic> toJson() => _$InvoiceSearchRequestToJson(this);
}
