import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';
import 'common.dart';

part 'response.g.dart';

@JsonSerializable()
class InvoiceCreateResponse extends Responsable<InvoiceCreateResponseData> {
  InvoiceCreateResponse();

  factory InvoiceCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceCreateResponseToJson(this);
}

@JsonSerializable()
class InvoiceCreateResponseData extends InvoiceResponseData {
  InvoiceCreateResponseData() : super();

  factory InvoiceCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceCreateResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceUpdateResponse extends Responsable<InvoiceUpdateResponseData> {
  InvoiceUpdateResponse();

  factory InvoiceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceUpdateResponseToJson(this);
}

@JsonSerializable()
class InvoiceUpdateResponseData extends InvoiceResponseData {
  InvoiceUpdateResponseData() : super();

  factory InvoiceUpdateResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceUpdateResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceMarkAsPaidResponse extends Responsable<InvoiceMarkAsPaidResponseData> {
  InvoiceMarkAsPaidResponse();

  factory InvoiceMarkAsPaidResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceMarkAsPaidResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceMarkAsPaidResponseToJson(this);
}

@JsonSerializable()
class InvoiceMarkAsPaidResponseData extends InvoiceResponseData {
  InvoiceMarkAsPaidResponseData() : super();

  factory InvoiceMarkAsPaidResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceMarkAsPaidResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceMarkAsPaidResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceReactivateResponse extends Responsable<InvoiceResponseData> {
  InvoiceReactivateResponse();

  factory InvoiceReactivateResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceReactivateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceReactivateResponseToJson(this);
}

@JsonSerializable()
class InvoiceReactivateResponseData extends InvoiceResponseData {
  InvoiceReactivateResponseData() : super();

  factory InvoiceReactivateResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceReactivateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceReactivateResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceGetResponse extends Responsable<InvoiceGetResponseData> {
  InvoiceGetResponse();

  factory InvoiceGetResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceGetResponseToJson(this);
}

@JsonSerializable()
class InvoiceGetResponseData extends InvoiceResponseData {
  InvoiceGetResponseData() : super();

  factory InvoiceGetResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceGetResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceGetResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceSearchResponse extends Responsable<List<InvoiceResponseData>> {
  InvoiceSearchResponse();

  factory InvoiceSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceResponseData extends Decodable {
  String id;
  String currency;
  String companyName;
  String companyLogoUrl;
  String customerNumber;
  String invoiceNumber;
  InvoicePayableTo payableTo;
  InvoiceBillTo billTo;
  String createdAt;
  String dateDue;
  List<LineItem> items;
  bool advancedFields;
  int subtotal;
  bool enableTax;
  bool enableShipping;
  bool requireShippingDetails;
  bool requireBillingDetailsOnPaymentOnly;
  String taxPercent;
  int tax;
  int shipping;
  int total;
  int amountPaid;
  int serviceFeesPaid;
  int surchargePaid;
  int discountCredited;
  int adjustment;
  int amountDue;
  bool allowPartialPayment;
  String transactionType;
  List<String> paymentMethods;
  String cardProcessorId;
  String achProcessorId;
  InvoiceStatus status;
  String message;
  String rejectMessage;
  SendVia sendVia;
  String emailTo;
  String lastSentAt;
  String updatedAt;
  String publicHash;
  String hostedUrl;
  String merchantId;
  String customerId;

  InvoiceResponseData();

  factory InvoiceResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceResponseDataToJson(this);
}

@JsonSerializable()
class InvoiceResendResponse extends Responsable<dynamic> {
  InvoiceResendResponse();

  factory InvoiceResendResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResendResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceResendResponseToJson(this);
}

@JsonSerializable()
class InvoiceDeleteResponse extends Responsable<dynamic> {
  InvoiceDeleteResponse();

  factory InvoiceDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceDeleteResponseToJson(this);
}
