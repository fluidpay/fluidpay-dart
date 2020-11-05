import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/common.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerCreateRequest extends Creatable<CustomerCreateResponse> {
  String id;
  String idFormat;
  String description;
  CustomerAddress defaultBillingAddress;
  CustomerAddress defaultShippingAddress;
  CustomerPaymentCreate defaultPayment;
  List<String> flags;

  CustomerCreateRequest({
    this.id,
    this.idFormat,
    this.description,
    this.defaultBillingAddress,
    this.defaultShippingAddress,
    this.defaultPayment,
    this.flags,
  });

  @override
  CustomerCreateResponse buildResponse(Map<String, dynamic> json) =>
      CustomerCreateResponse.fromJson(json);

  @override
  String getUrl() => '/vault/customer';

  @override
  Map<String, dynamic> toJson() => _$CustomerCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerPaymentCreate extends Decodable {
  CustomerCard card;
  CustomerACH ach;
  String token;

  CustomerPaymentCreate({this.card, this.ach, this.token});

  @override
  Map<String, dynamic> toJson() => _$CustomerPaymentCreateToJson(this);

  factory CustomerPaymentCreate.fromJson(Map<String, dynamic> json) =>
      _$CustomerPaymentCreateFromJson(json);
}
