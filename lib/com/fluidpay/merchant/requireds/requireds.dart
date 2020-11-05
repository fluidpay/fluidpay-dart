import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'requireds.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Requireds extends Decodable {
  @JsonKey(name: 'default')
  FieldStatus def;
  FieldStatus type;
  FieldStatus taxExempt;
  FieldStatus currency;
  FieldStatus description;
  FieldStatus orderId;
  FieldStatus poNumber;
  FieldStatus ipAddress;
  FieldStatus emailReceipt;
  FieldStatus emailAddress;
  FieldStatus processorId;
  FieldStatus allowPartialPayment;
  FieldStatus createVaultRecord;
  FieldStatus vendorId;
  FieldStatus amount;
  FieldStatus taxAmount;
  FieldStatus shippingAmount;
  FieldStatus discountAmount;
  FieldStatus paymentAdjustment;
  FieldStatus paymentMethodCard;
  FieldStatus paymentMethodAch;
  FieldStatus paymentMethodTerminal;
  FieldStatus paymentMethodCustomerToken;
  FieldStatus paymentMethodCardCvc;
  FieldStatus billingFirstName;
  FieldStatus billingLastName;
  FieldStatus billingCompany;
  @JsonKey(name: 'billing_address_line_1')
  FieldStatus billingAddressLine1;
  @JsonKey(name: 'billing_address_line_2')
  FieldStatus billingAddressLine2;
  FieldStatus billingCity;
  FieldStatus billingState;
  FieldStatus billingPostalCode;
  FieldStatus billingCountry;
  FieldStatus billingEmail;
  FieldStatus billingPhone;
  FieldStatus billingFax;
  FieldStatus shippingFirstName;
  FieldStatus shippingLastName;
  FieldStatus shippingCompany;
  @JsonKey(name: 'shipping_address_line_1')
  FieldStatus shippingAddressLine1;
  @JsonKey(name: 'shipping_address_line_2')
  FieldStatus shippingAddressLine2;
  FieldStatus shippingCity;
  FieldStatus shippingState;
  FieldStatus shippingPostalCode;
  FieldStatus shippingCountry;
  FieldStatus shippingEmail;
  FieldStatus shippingPhone;
  FieldStatus shippingFax;
  FieldStatus nationalTaxAmount;
  FieldStatus dutyAmount;
  FieldStatus shipFromPostalCode;
  FieldStatus summaryCommodityCode;
  FieldStatus merchantVatRegistrationNumber;
  FieldStatus customerVatRegistrationNumber;
  FieldStatus driversLicense;
  @JsonKey(name: 'social_security_number_last_4')
  FieldStatus socialSecurityNumberLast4;

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

enum FieldStatus {
  required,
  optional,
  hidden,
}
