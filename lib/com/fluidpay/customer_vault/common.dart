import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/common/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerAddress extends Address {
  String id;
  @override
  @JsonKey(name: 'line_1')
  String addressLine1;
  @override
  @JsonKey(name: 'line_2')
  String addressLine2;
  String hash;

  CustomerAddress({
    this.id,
    firstName,
    lastName,
    company,
    this.addressLine1,
    this.addressLine2,
    city,
    state,
    postalCode,
    country,
    phone,
    fax,
    email,
    this.hash,
  }) : super(
          firstName: firstName,
          lastName: lastName,
          company: company,
          city: city,
          state: state,
          postalCode: postalCode,
          country: country,
          phone: phone,
          fax: fax,
          email: email,
        );

  @override
  Map<String, dynamic> toJson() => _$CustomerAddressToJson(this);

  factory CustomerAddress.fromJson(Map<String, dynamic> json) =>
      _$CustomerAddressFromJson(json);
}

abstract class CustomerPaymentMethod extends Decodable {
  CustomerPaymentMethod.fromJson(Map<String, dynamic> json);

  CustomerPaymentMethod();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerCard extends CustomerPaymentMethod {
  String id;
  String number;
  String maskedNumber;
  String encryptedNumber;
  String digest;
  String expirationDate;
  String cardType;
  String processorId;
  List<String> flags;
  String lockValue;
  String cvc;
  String initialTransactionId;
  String instrumentType;
  String genericCardLevel;

  CustomerCard({
    this.id,
    this.number,
    this.maskedNumber,
    this.encryptedNumber,
    this.digest,
    this.expirationDate,
    this.cardType,
    this.processorId,
    this.flags,
    this.lockValue,
    this.cvc,
    this.initialTransactionId,
    this.instrumentType,
    this.genericCardLevel,
  }) : super();

  @override
  Map<String, dynamic> toJson() => _$CustomerCardToJson(this);

  @override
  factory CustomerCard.fromJson(Map<String, dynamic> json) =>
      _$CustomerCardFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerACH extends CustomerPaymentMethod {
  String id;
  String accountNumber;
  String maskedAccountNumber;
  String encryptedAccountNumber;
  String digest;
  String routingNumber;
  String accountType;
  String secCode;
  String processorId;
  List<String> flags;
  String lockValue;

  CustomerACH({
    this.id,
    this.accountNumber,
    this.maskedAccountNumber,
    this.encryptedAccountNumber,
    this.digest,
    this.routingNumber,
    this.accountType,
    this.secCode,
    this.processorId,
    this.flags,
    this.lockValue,
  }) : super();

  @override
  Map<String, dynamic> toJson() => _$CustomerACHToJson(this);

  @override
  factory CustomerACH.fromJson(Map<String, dynamic> json) =>
      _$CustomerACHFromJson(json);
}
