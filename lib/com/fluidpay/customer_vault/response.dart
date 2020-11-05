import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerCreateResponse extends Responsable<CustomerCreateResponseData> {
  CustomerCreateResponse();

  factory CustomerCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerCreateResponseData extends CustomerResponseData {
  CustomerCreateResponseData() : super();

  factory CustomerCreateResponseData.fromJson(Map<String, dynamic> json) =>
      _$CustomerCreateResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomerCreateResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerResponseData extends Decodable {
  String id;
  CustomerDataContainer data;
  DateTime createAt;
  DateTime updateAt;

  CustomerResponseData({
    this.id,
    this.data,
    this.createAt,
    this.updateAt,
  });

  factory CustomerResponseData.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomerResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerDataContainer extends Decodable {
  Customer customer;

  CustomerDataContainer({this.customer});

  @override
  Map<String, dynamic> toJson() => _$CustomerDataContainerToJson(this);

  factory CustomerDataContainer.fromJson(Map<String, dynamic> json) =>
      _$CustomerDataContainerFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Customer extends Decodable {
  String description;
  CustomerDefaults defaults;
  CustomerPayments payments;
  List<CustomerAddress> addresses;
  List<String> flags;
  String notes;

  Customer({
    this.description,
    this.defaults,
    this.payments,
    this.addresses,
    this.flags,
    this.notes,
  });

  @override
  Map<String, dynamic> toJson() => _$CustomerToJson(this);

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerPayments extends Decodable {
  List<CustomerCard> cards;
  List<CustomerACH> ach;

  CustomerPayments({this.cards, this.ach});

  @override
  Map<String, dynamic> toJson() => _$CustomerPaymentsToJson(this);

  factory CustomerPayments.fromJson(Map<String, dynamic> json) =>
      _$CustomerPaymentsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerDefaults extends Decodable {
  String billingAddressId;
  String shippingAddressId;
  String paymentMethodType;
  String paymentMethodId;

  CustomerDefaults({
    this.billingAddressId,
    this.shippingAddressId,
    this.paymentMethodType,
    this.paymentMethodId,
  });

  @override
  Map<String, dynamic> toJson() => _$CustomerDefaultsToJson(this);

  factory CustomerDefaults.fromJson(Map<String, dynamic> json) =>
      _$CustomerDefaultsFromJson(json);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerGetResponse extends Responsable<CustomerGetResponseData> {
  CustomerGetResponse();

  factory CustomerGetResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerGetResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerGetResponseData extends CustomerResponseData {
  CustomerGetResponseData() : super();

  factory CustomerGetResponseData.fromJson(Map<String, dynamic> json) =>
      _$CustomerGetResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CustomerGetResponseDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerDeleteResponse extends Responsable<dynamic> {
  CustomerDeleteResponse();

  factory CustomerDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerDeleteResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerUpdateResponse extends Responsable<dynamic> {
  CustomerUpdateResponse();

  factory CustomerUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerUpdateResponseToJson(this);
}

