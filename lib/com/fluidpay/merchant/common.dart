import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Contact extends Decodable {
  String id;
  String firstName;
  String lastName;
  String company;
  @JsonKey(name: 'address_line_1')
  String addressLine1;
  @JsonKey(name: 'address_line_2')
  String addressLine2;
  String city;
  String state;
  String postalCode;
  String country;
  String phone;
  String fax;
  String email;

  Contact(
      {this.id,
        this.firstName,
        this.lastName,
        this.company,
        this.addressLine1,
        this.addressLine2,
        this.city,
        this.state,
        this.postalCode,
        this.country,
        this.phone,
        this.fax,
        this.email});

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ContactToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BillingDetails extends Decodable {
  @JsonKey(name: 'ach')
  ACHDetails achDetails;

  BillingDetails(this.achDetails);

  factory BillingDetails.fromJson(Map<String, dynamic> json) =>
      _$BillingDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BillingDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHDetails extends Decodable {
  String type;
  String routingNumber;
  String accountNumber;
  String maskedAccountNumber;
  String accountType;

  ACHDetails(
      {this.type,
        this.routingNumber,
        this.accountNumber,
        this.maskedAccountNumber,
        this.accountType});

  factory ACHDetails.fromJson(Map<String, dynamic> json) =>
      _$ACHDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Permissions extends Decodable {
  bool supportBlindCredits;
  bool allowRuleEngineAccess;
  bool allowInvoiceAccess;
  bool allowCustomerVaultAccess;
  bool allowRecurringBilling_access;
  bool allowCart_access;
  bool allowDeveloperHubLink;
  bool allowAdvancedFields;
  bool enableTerminalDebitTransactions;
  bool allowDefaultsPopulation;
  bool allowBillingAccess;
  bool allowDashboardStats;
  bool allowFileBatch;
  bool allowCardSync;
  bool allowIbxBinLookup;
  bool allowSurcharge;
  bool allowMidigator;

  Permissions({
    this.supportBlindCredits,
    this.allowRuleEngineAccess,
    this.allowInvoiceAccess,
    this.allowCustomerVaultAccess,
    this.allowRecurringBilling_access,
    this.allowCart_access,
    this.allowDeveloperHubLink,
    this.allowAdvancedFields,
    this.enableTerminalDebitTransactions,
    this.allowDefaultsPopulation,
    this.allowBillingAccess,
    this.allowDashboardStats,
    this.allowFileBatch,
    this.allowCardSync,
    this.allowIbxBinLookup,
    this.allowSurcharge,
    this.allowMidigator
  });

  factory Permissions.fromJson(Map<String, dynamic> json) =>
      _$PermissionsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PermissionsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class AdminFlags extends Decodable {
  bool perProcessorBilling;
  bool cashDiscountEnabled;
  bool surchargeEnabled;
  bool splitPaymentAdjustment;
  bool surchargeFallback;
  bool genericCashDiscount;
  bool skipBilling;
  bool itFallback;

  AdminFlags({
    this.perProcessorBilling,
    this.cashDiscountEnabled,
    this.surchargeEnabled,
    this.splitPaymentAdjustment,
    this.surchargeFallback,
    this.genericCashDiscount,
    this.skipBilling,
    this.itFallback,
  });

  factory AdminFlags.fromJson(Map<String, dynamic> json) =>
      _$AdminFlagsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AdminFlagsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Services extends Decodable {
  String id;
  String type;
  String status;
  dynamic data;
  String createdAt;
  String updatedAt;
  String activatedAt;
  String deactivatedAt;
  String agreementUrl;

  Services({
    this.id,
    this.type,
    this.status,
    this.data,
    this.createdAt,
    this.updatedAt,
    this.activatedAt,
    this.deactivatedAt,
    this.agreementUrl,
  });

  factory Services.fromJson(Map<String, dynamic> json) =>
      _$ServicesFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ServicesToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Requireds extends Decodable {
  @JsonKey(name: 'default')
  String def;
  String type;
  String taxExempt;
  String currency;
  String description;
  String orderId;
  String poNumber;
  String ipAddress;
  String emailReceipt;
  String emailAddress;
  String processorId;
  String allowPartialPayment;
  String createVaultRecord;
  String vendorId;
  String amount;
  String taxAmount;
  String shippingAmount;
  String discountAmount;
  String paymentAdjustment;
  String paymentMethodCard;
  String paymentMethodAch;
  String paymentMethodTerminal;
  String paymentMethodCustomerToken;
  String paymentMethodCardCvc;
  String billingFirstName;
  String billingLastName;
  String billingCompany;
  @JsonKey(name: 'billing_address_line_1')
  String billingAddressLine1;
  @JsonKey(name: 'billing_address_line_2')
  String billingAddressLine2;
  String billingCity;
  String billingState;
  String billingPostalCode;
  String billingCountry;
  String billingEmail;
  String billingPhone;
  String billingFax;
  String shippingFirstName;
  String shippingLastName;
  String shippingCompany;
  @JsonKey(name: 'shipping_address_line_1')
  String shippingAddressLine1;
  @JsonKey(name: 'shipping_address_line_2')
  String shippingAddressLine2;
  String shippingCity;
  String shippingState;
  String shippingPostalCode;
  String shippingCountry;
  String shippingEmail;
  String shippingPhone;
  String shippingFax;
  String nationalTaxAmount;
  String dutyAmount;
  String shipFromPostalCode;
  String summaryCommodityCode;
  String merchantVatRegistrationNumber;
  String customerVatRegistrationNumber;
  String driversLicense;
  @JsonKey(name: 'social_security_number_last_4')
  String socialSecurityNumberLast4;

  Requireds({
    this.def,
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
    this.vendorId,
    this.amount,
    this.taxAmount,
    this.shippingAmount,
    this.discountAmount,
    this.paymentAdjustment,
    this.paymentMethodCard,
    this.paymentMethodAch,
    this.paymentMethodTerminal,
    this.paymentMethodCustomerToken,
    this.paymentMethodCardCvc,
    this.billingFirstName,
    this.billingLastName,
    this.billingCompany,
    this.billingAddressLine1,
    this.billingAddressLine2,
    this.billingCity,
    this.billingState,
    this.billingPostalCode,
    this.billingCountry,
    this.billingEmail,
    this.billingPhone,
    this.billingFax,
    this.shippingFirstName,
    this.shippingLastName,
    this.shippingCompany,
    this.shippingAddressLine1,
    this.shippingAddressLine2,
    this.shippingCity,
    this.shippingState,
    this.shippingPostalCode,
    this.shippingCountry,
    this.shippingEmail,
    this.shippingPhone,
    this.shippingFax,
    this.nationalTaxAmount,
    this.dutyAmount,
    this.shipFromPostalCode,
    this.summaryCommodityCode,
    this.merchantVatRegistrationNumber,
    this.customerVatRegistrationNumber,
    this.driversLicense,
    this.socialSecurityNumberLast4,
  });

  factory Requireds.fromJson(Map<String, dynamic> json) =>
      _$RequiredsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RequiredsToJson(this);
}

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
class CartDataFullProduct extends CartData<ProductData> {
  CartDataFullProduct({
    String id,
    String publicHash,
    String merchantId,
    String cardProcessorId,
    String achProcessorId,
    String name,
    String description,
    String type = 'normal',
    String customFieldsGroup,
    List<ProductData> products,
    bool showAvailableProducts,
    bool requireShippingDetails,
    bool emailReceipt,
    bool payments,
    String shopifyHash,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime deletedAt,
  }) : super(
          id: id,
          publicHash: publicHash,
          merchantId: merchantId,
          cardProcessorId: cardProcessorId,
          achProcessorId: achProcessorId,
          name: name,
          description: description,
          type: type,
          customFieldsGroup: customFieldsGroup,
          products: products,
          showAvailableProducts: showAvailableProducts,
          requireShippingDetails: requireShippingDetails,
          emailReceipt: emailReceipt,
          payments: payments,
          shopifyHash: shopifyHash,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
        );

  factory CartDataFullProduct.fromJson(Map<String, dynamic> json) =>
      _$CartDataFullProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartDataFullProductToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartDataStringProduct extends CartData<String> {
  CartDataStringProduct({
    String id,
    String publicHash,
    String merchantId,
    String cardProcessorId,
    String achProcessorId,
    String name,
    String description,
    String type = 'normal',
    String customFieldsGroup,
    List<String> products,
    bool showAvailableProducts,
    bool requireShippingDetails,
    bool emailReceipt,
    bool payments,
    String shopifyHash,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime deletedAt,
  }) : super(
          id: id,
          publicHash: publicHash,
          merchantId: merchantId,
          cardProcessorId: cardProcessorId,
          achProcessorId: achProcessorId,
          name: name,
          description: description,
          type: type,
          customFieldsGroup: customFieldsGroup,
          products: products,
          showAvailableProducts: showAvailableProducts,
          requireShippingDetails: requireShippingDetails,
          emailReceipt: emailReceipt,
          payments: payments,
          shopifyHash: shopifyHash,
          createdAt: createdAt,
          updatedAt: updatedAt,
          deletedAt: deletedAt,
        );

  factory CartDataStringProduct.fromJson(Map<String, dynamic> json) =>
      _$CartDataStringProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartDataStringProductToJson(this);
}

abstract class CartData<ProductType> extends Decodable {
  String id;
  String publicHash;
  String merchantId;
  String cardProcessorId;
  String achProcessorId;
  String name;
  String description;
  String type;
  String customFieldsGroup;
  List<ProductType> products;
  bool showAvailableProducts;
  bool requireShippingDetails;
  bool emailReceipt;
  bool payments;
  String shopifyHash;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  CartData({
    this.id,
    this.publicHash,
    this.merchantId,
    this.cardProcessorId,
    this.achProcessorId,
    this.name,
    this.description,
    this.type = 'normal',
    this.customFieldsGroup,
    this.products,
    this.showAvailableProducts,
    this.requireShippingDetails,
    this.emailReceipt,
    this.payments,
    this.shopifyHash,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProductData extends Decodable {
  @JsonKey(name: 'id')
  String productId;
  String publicHash;
  String merchantId;
  String name;
  String img;
  int price;
  int localTax;
  int nationalTax;
  bool fixedAmount;
  bool fixedQty;
  String description;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime deletedAt;

  ProductData({
    this.productId,
    this.publicHash,
    this.merchantId,
    this.name,
    this.img,
    this.price,
    this.localTax,
    this.nationalTax,
    this.fixedAmount,
    this.fixedQty,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProductDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartSessionProduct extends Decodable {
  String publicHash;
  int qty;
  int price;

  CartSessionProduct({this.publicHash, this.qty, this.price});

  factory CartSessionProduct.fromJson(Map<String, dynamic> json) =>
      _$CartSessionProductFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartSessionProductToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CartSession extends Decodable {
  String id;
  String cartPublicHash;
  String checkoutUrl;
  String cancelUrl;
  String successUrl;

  CartSession({
    this.id,
    this.cartPublicHash,
    this.checkoutUrl,
    this.cancelUrl,
    this.successUrl,
  });

  factory CartSession.fromJson(Map<String, dynamic> json) =>
      _$CartSessionFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CartSessionToJson(this);
}
