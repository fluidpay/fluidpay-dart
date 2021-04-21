import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

enum SendVia {
  none,
  text,
  email,
  both,
}

enum InvoiceStatus {
  paid,
  authorized,
  @JsonValue('paying_via_mail')
  payingViaMail,
  @JsonValue('partially_paid')
  partiallyPaid,
  pending,
  declined,
  failed,
  rejected,
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoiceBillTo extends Decodable {
  String? id;
  String? firstName;
  String? lastName;
  String? company;
  @JsonKey(name: 'address_line_1')
  String? addressLine1;
  @JsonKey(name: 'address_line_2')
  String? addressLine2;
  String? city;
  String? state;
  String? postalCode;
  String? country;
  String? phone;
  String? fax;
  String? email;

  InvoiceBillTo(
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

  factory InvoiceBillTo.fromJson(Map<String, dynamic> json) =>
      _$InvoiceBillToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoiceBillToToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class InvoicePayableTo extends Decodable {
  String? id;
  String? firstName;
  String? lastName;
  String? company;
  @JsonKey(name: 'address_line_1')
  String? addressLine1;
  @JsonKey(name: 'address_line_2')
  String? addressLine2;
  String? city;
  String? state;
  String? postalCode;
  String? country;
  String? phone;
  String? fax;
  String? email;

  InvoicePayableTo(
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

  factory InvoicePayableTo.fromJson(Map<String, dynamic> json) =>
      _$InvoicePayableToFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$InvoicePayableToToJson(this);
}
