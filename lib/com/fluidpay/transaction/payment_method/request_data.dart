import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:fluidpay/com/fluidpay/common/typed_value.dart';
import 'package:fluidpay/com/fluidpay/transaction/apple_pay.dart';
import 'package:fluidpay/com/fluidpay/calculate/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request_data.g.dart';

enum TransactionType {
  authorize,
  sale,
  credit,
  capture,
  refund,
  verification,
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AmountsFlags extends Decodable {
  bool skipCashDiscount;
  bool skipSurcharge;
  bool skipServiceFee;
  bool skipConsumerChoice;
  bool? includeDefaultTaxToTotal;
  bool? taxExempt;
  bool processorSurchargeFallback;
  bool? addTaxToTotal;

  AmountsFlags({
    this.skipCashDiscount = false,
    this.skipSurcharge = false,
    this.skipServiceFee = false,
    this.skipConsumerChoice = false,
    this.includeDefaultTaxToTotal,
    this.taxExempt,
    this.processorSurchargeFallback = false,
    this.addTaxToTotal,
  });

  factory AmountsFlags.fromJson(Map<String, dynamic> json) => _$AmountsFlagsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AmountsFlagsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentMethodRequest extends Decodable {
  CreditCardRequest? card;
  ACHRequest? ach;
  CustomerTransactionRequest? customer;
  TerminalTransactionRequest? terminal;
  String? token;
  ApplePayTokenRequest? applePayToken;
  APMRequest? apm;
  PlaidRequest? plaid;
  CashRequest? cash;
  EMVRequest? emv;

  PaymentMethodRequest(
      {this.card,
      this.ach,
      this.customer,
      this.terminal,
      this.token,
      this.applePayToken,
      this.apm,
      this.plaid,
      this.cash,
      this.emv});

  factory PaymentMethodRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentMethodRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateAmountsRequest extends Creatable<CalculateAmountsResponse> {
  String? type;
  String? typeID;
  String? processorID;
  String? paymentMethod;
  String? ccBin;
  String? state;

  List<LineItem>? lineItems;
  int? subtotal;
  int? amount;
  TypedValue? taxOverrideAmount;

  TypedValue? shippingAmount;
  List<TypedValue>? addonAmount;
  List<TypedValue>? discountAmount;
  TypedValue? dutyAmount;
  TypedValue? tipAmount;
  TypedValue? nationalTaxAmount;
  TypedValue? localTaxAmount;
  TypedValue? serviceFee;
  TypedValue? surcharge;

  int? base;
  int? shipping;
  double? taxRate;
  String? currency;
  PaymentAdjustmentRequest? paymentAdj;
  List<CalculateItem>? items;
  CalculateSettings? settings;
  AmountsFlags? flags;

  CalculateAmountsRequest({
    this.type,
    this.typeID,
    this.processorID,
    this.paymentMethod,
    this.ccBin,
    this.state,
    this.base,
    this.shipping,
    this.taxRate,
    this.currency,
    this.paymentAdj,
    this.items,
    this.settings,
    this.lineItems,
    this.subtotal,
    this.amount,
    this.taxOverrideAmount,
    this.shippingAmount,
    this.addonAmount,
    this.discountAmount,
    this.dutyAmount,
    this.tipAmount,
    this.nationalTaxAmount,
    this.localTaxAmount,
    this.serviceFee,
    this.surcharge,
    this.flags,
  });

  @override
  CalculateAmountsResponse buildResponse(Map<String, dynamic> json) =>
      CalculateAmountsResponse.fromJson(json);

  @override
  String getPath() => '/calculate/amounts';

  @override
  Map<String, dynamic> toJson() => _$CalculateAmountsRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateFeesRequest extends Creatable<CalculateFeesResponse> {
  String? type;
  @JsonKey(name: 'type_id')
  String? typeID;
  String? state;
  String? bin;
  String? paymentMethod;
  int? baseAmount;
  List<LineItem>? lineItems;
  int? tax;
  @JsonKey(name: 'processor_id')
  String? processorID;
  PaymentAdjustmentRequest? surcharge;

  CalculateFeesRequest(
      {this.type,
      this.typeID,
      this.state,
      this.bin,
      this.paymentMethod,
      this.baseAmount,
      this.lineItems,
      this.tax,
      this.processorID,
      this.surcharge});

  CalculateFeesResponse buildResponse(Map<String, dynamic> json) =>
      CalculateFeesResponse.fromJson(json);

  String getPath() => '/lookup/fees';
  Map<String, dynamic> toJson() => _$CalculateFeesRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateSettings extends Decodable {
  String? cashDiscount;
  String? surcharge;
  String? consumerChoice;

  CalculateSettings({this.cashDiscount, this.surcharge, this.consumerChoice});

  factory CalculateSettings.fromJson(Map<String, dynamic> json) =>
      _$CalculateSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CalculateSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CalculateItem extends Decodable {
  int? qty;
  int? base;
  double? local_tax;
  double? national_tax;

  CalculateItem({this.qty, this.base, this.local_tax, this.national_tax});
  factory CalculateItem.fromJson(Map<String, dynamic> json) =>
      _$CalculateItemFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CalculateItemToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentAdjustmentRequest extends Decodable {
  int? value;
  String? type;

  PaymentAdjustmentRequest({this.value, this.type});

  factory PaymentAdjustmentRequest.fromJson(Map<String, dynamic> json) => _$PaymentAdjustmentRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentAdjustmentRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CreditCardRequest extends Decodable {
  String? entryType;
  String? number;
  String? expirationDate;
  String? cvc;
  @JsonKey(name: 'track_1')
  String? track1;
  @JsonKey(name: 'track_2')
  String? track2;
  @JsonKey(name: 'encrypted_track_1')
  String? encryptedTrack1;
  @JsonKey(name: 'encrypted_track_2')
  String? encryptedTrack2;
  String? ksn;
  String? encryptedData;
  CardholderAuthenticationRequest? cardholderAuthentication;
  String? cardPresent;
  String? signatureData;

  CreditCardRequest(
      {this.entryType,
      this.number,
      this.expirationDate,
      this.cvc,
      this.track1,
      this.track2,
      this.encryptedTrack1,
      this.encryptedTrack2,
      this.ksn,
      this.encryptedData,
      this.cardholderAuthentication,
      this.cardPresent,
      this.signatureData});

  factory CreditCardRequest.fromJson(Map<String, dynamic> json) =>
      _$CreditCardRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CreditCardRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CardholderAuthenticationRequest extends Decodable {
  String? eci;
  String? cavv;
  String? xid;
  String? version;
  String? dsTransactionId;
  String? acsTransactionId;

  CardholderAuthenticationRequest(
      {this.eci,
      this.cavv,
      this.xid,
      this.version,
      this.dsTransactionId,
      this.acsTransactionId});

  factory CardholderAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$CardholderAuthenticationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CardholderAuthenticationRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHRequest extends Decodable {
  String? routingNumber;
  String? accountNumber;
  String? accountType;
  String? secCode;
  String? checkNumber;
  @JsonKey(name: 'accountholder_authentication')
  ACHAuthenticationRequest? accountHolderAuthentication;

  ACHRequest({
    this.routingNumber,
    this.accountNumber,
    this.accountType,
    this.secCode,
    this.checkNumber,
    this.accountHolderAuthentication,
  });

  factory ACHRequest.fromJson(Map<String, dynamic> json) =>
      _$ACHRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHAuthenticationRequest extends Decodable {
  String? dlState;
  String? dlNumber;
  String? ssn4;
  String? dobYear;

  ACHAuthenticationRequest({
    this.dlState,
    this.dlNumber,
    this.ssn4,
    this.dobYear,
  });

  factory ACHAuthenticationRequest.fromJson(Map<String, dynamic> json) =>
      _$ACHAuthenticationRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHAuthenticationRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerTransactionRequest extends Decodable {
  String? id;
  String? sourceMerchantId;
  String? paymentMethodType;
  String? paymentMethodId;
  String? billingAddressId;
  String? shippingAddressId;
  String? cvc;
  String? terminalId;

  CustomerTransactionRequest({
    this.id,
    this.sourceMerchantId,
    this.paymentMethodType,
    this.paymentMethodId,
    this.billingAddressId,
    this.shippingAddressId,
    this.cvc,
    this.terminalId,
  });

  factory CustomerTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerTransactionRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerTransactionRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalTransactionRequest extends Decodable {
  String? id;
  String? expirationDate;
  String? cvc;
  String? printReceipt;
  bool? signatureRequired;
  int? clerkId;
  bool? debit;
  String? ebt;
  String? traceNum;
  String? hostToken;

  TerminalTransactionRequest({
    this.id,
    this.expirationDate,
    this.cvc,
    this.printReceipt,
    this.signatureRequired,
    this.clerkId,
    this.debit,
    this.ebt,
    this.traceNum,
    this.hostToken,
  });

  factory TerminalTransactionRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalTransactionRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalTransactionRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class APMRequest extends Decodable {
  String? type;
  String? sellingPoint;
  String? soldService;
  String? merchantRedirectUrl;
  String? locale;
  bool? mobileView;
  String? nationalId;
  String? consumerRef;
  String? logoUrl;
  String? hppTitle;
  String? preferredLanguage;

  APMRequest({
    this.type,
    this.sellingPoint,
    this.soldService,
    this.merchantRedirectUrl,
    this.locale,
    this.mobileView,
    this.nationalId,
    this.consumerRef,
    this.logoUrl,
    this.hppTitle,
    this.preferredLanguage,
  });

  factory APMRequest.fromJson(Map<String, dynamic> json) =>
      _$APMRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$APMRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PlaidRequest extends Decodable {
  String? refId;
  String? accountId;

  PlaidRequest({this.refId, this.accountId});

  factory PlaidRequest.fromJson(Map<String, dynamic> json) =>
      _$PlaidRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlaidRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CashRequest extends Decodable {
  CashRequest();

  factory CashRequest.fromJson(Map<String, dynamic> json) =>
      _$CashRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CashRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EMVRequest extends Decodable {
  String? deviceType;
  String? deviceSerialNumber;
  String? ksn;
  @JsonKey(name: 'tlv_data')
  Map<String, String>? tlvData;

  EMVRequest({
    this.deviceType,
    this.deviceSerialNumber,
    this.ksn,
    this.tlvData,
  });

  factory EMVRequest.fromJson(Map<String, dynamic> json) =>
      _$EMVRequestFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EMVRequestToJson(this);
}
