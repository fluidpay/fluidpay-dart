import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:json_annotation/json_annotation.dart';
import 'common.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceCreateResponse extends Responsable<InvoiceCreateResponseData> {
  InvoiceCreateResponse();

  factory InvoiceCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceCreateResponseData extends InvoiceResponseData {
  InvoiceCreateResponseData() : super();

  factory InvoiceCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceCreateResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceUpdateResponse extends Responsable<InvoiceUpdateResponseData> {
  InvoiceUpdateResponse();

  factory InvoiceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceUpdateResponseData extends InvoiceResponseData {
  InvoiceUpdateResponseData() : super();

  factory InvoiceUpdateResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceUpdateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceUpdateResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceMarkAsPaidResponse extends Responsable<InvoiceMarkAsPaidResponseData> {
  InvoiceMarkAsPaidResponse();

  factory InvoiceMarkAsPaidResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceMarkAsPaidResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceMarkAsPaidResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceMarkAsPaidResponseData extends InvoiceResponseData {
  InvoiceMarkAsPaidResponseData() : super();

  factory InvoiceMarkAsPaidResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceMarkAsPaidResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceMarkAsPaidResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceReactivateResponse extends Responsable<InvoiceResponseData> {
  InvoiceReactivateResponse();

  factory InvoiceReactivateResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceReactivateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceReactivateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceReactivateResponseData extends InvoiceResponseData {
  InvoiceReactivateResponseData() : super();

  factory InvoiceReactivateResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceReactivateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceReactivateResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceGetResponse extends Responsable<InvoiceGetResponseData> {
  InvoiceGetResponse();

  factory InvoiceGetResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceGetResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceGetResponseData extends InvoiceResponseData {
  InvoiceGetResponseData() : super();

  factory InvoiceGetResponseData.fromJson(Map<String, dynamic> json) =>
      _$InvoiceGetResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceGetResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
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

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceResendResponse extends Responsable<dynamic> {
  InvoiceResendResponse();

  factory InvoiceResendResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceResendResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceResendResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceDeleteResponse extends Responsable<dynamic> {
  InvoiceDeleteResponse();

  factory InvoiceDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$InvoiceDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InvoiceDeleteResponseToJson(this);
}
