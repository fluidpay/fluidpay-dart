import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'defaults.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DefaultValues extends Decodable {
  LineItemsDefaults lineItems;
  VirtualTerminalDefaults virtualTerminal;
  InvoicesDefaults invoices;
  Merchant merchant;
  RecurringDefaults recurring;
  CardSyncDefaults cardsync;

  DefaultValues({
    this.lineItems,
    this.virtualTerminal,
    this.invoices,
    this.merchant,
    this.recurring,
    this.cardsync,
  });

  factory DefaultValues.fromJson(Map<String, dynamic> json) =>
      _$DefaultValuesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DefaultValuesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LineItemsDefaults extends Decodable {
  String unitOfMeasure;
  bool taxable;
  String localTaxRate;
  String nationalTaxRate;
  String commodityCode;
  String alternateTaxIdentifier;

  LineItemsDefaults({
    this.unitOfMeasure,
    this.taxable,
    this.localTaxRate,
    this.nationalTaxRate,
    this.commodityCode,
    this.alternateTaxIdentifier,
  });

  factory LineItemsDefaults.fromJson(Map<String, dynamic> json) =>
      _$LineItemsDefaultsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LineItemsDefaultsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class VirtualTerminalDefaults extends Decodable {
  bool emailReceipt;
  bool allowPartialPayment;
  bool vaultRecord;
  bool addTaxToTotal;
  bool addShippingToTotal;
  bool calculateTotalFromLineItems;
  bool enableAdvancedFields;
  String printReceipt;
  bool signatureRequired;

  VirtualTerminalDefaults({
    this.emailReceipt,
    this.allowPartialPayment,
    this.vaultRecord,
    this.addTaxToTotal,
    this.addShippingToTotal,
    this.calculateTotalFromLineItems,
    this.enableAdvancedFields,
    this.printReceipt,
    this.signatureRequired,
  });

  factory VirtualTerminalDefaults.fromJson(Map<String, dynamic> json) =>
      _$VirtualTerminalDefaultsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VirtualTerminalDefaultsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoicesDefaults extends Decodable {
  bool enableAdvancedFields;
  bool enableTax;
  bool enableShipping;
  bool allowPartialPayment;
  String transactionType;
  bool requireShippingDetails;
  String message;

  InvoicesDefaults({
    this.enableAdvancedFields,
    this.enableTax,
    this.enableShipping,
    this.allowPartialPayment,
    this.transactionType,
    this.requireShippingDetails,
    this.message,
  });

  factory InvoicesDefaults.fromJson(Map<String, dynamic> json) =>
      _$InvoicesDefaultsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoicesDefaultsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Merchant extends Decodable {
  String currency;
  String taxRate;
  String taxIdentifier;
  String vatRegistrationNumber;
  String shipFromPostalCode;
  String summaryCommodityCode;

  Merchant({
    this.currency,
    this.taxRate,
    this.taxIdentifier,
    this.vatRegistrationNumber,
    this.shipFromPostalCode,
    this.summaryCommodityCode,
  });

  factory Merchant.fromJson(Map<String, dynamic> json) =>
      _$MerchantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RecurringDefaults extends Decodable {
  bool emailReceipt;

  RecurringDefaults({this.emailReceipt});

  factory RecurringDefaults.fromJson(Map<String, dynamic> json) =>
      _$RecurringDefaultsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RecurringDefaultsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CardSyncDefaults extends Decodable {
  String submissionFrequency;
  String dayOfTheMonth;

  CardSyncDefaults({
    this.submissionFrequency,
    this.dayOfTheMonth,
  });

  factory CardSyncDefaults.fromJson(Map<String, dynamic> json) =>
      _$CardSyncDefaultsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CardSyncDefaultsToJson(this);
}
