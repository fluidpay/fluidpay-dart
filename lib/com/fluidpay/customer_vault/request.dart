import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/common.dart';
import 'package:fluidpay/com/fluidpay/customer_vault/response.dart';
import 'package:fluidpay/com/fluidpay/invoice/common.dart';
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

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerGetRequest extends Searchable<CustomerGetResponse> {
  String id;

  CustomerGetRequest({this.id});

  @override
  CustomerGetResponse buildResponse(Map<String, dynamic> json) =>
      CustomerGetResponse.fromJson(json);

  @override
  String getUrl() => '/vault/${id}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerDeleteRequest extends Deletable<CustomerDeleteResponse> {
  String id;

  CustomerDeleteRequest({this.id});

  @override
  CustomerDeleteResponse buildResponse(Map<String, dynamic> json) =>
      CustomerDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/vault/${id}';
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerUpdateRequest extends Updatable<CustomerUpdateResponse> {
  String id;
  String description;
  String notes;
  CustomerDefaults defaults;
  List<String> flags;

  CustomerUpdateRequest(
    this.id, {
    this.description,
    this.notes,
    this.defaults,
    this.flags,
  });

  @override
  CustomerUpdateResponse buildResponse(Map<String, dynamic> json) =>
      CustomerUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/vault/customer/${id}';

  @override
  Map<String, dynamic> toJson() => _$CustomerUpdateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerSearchRequest extends Searchable<CustomerSearchResponse> {
  QuerySearchParamString id;
  QuerySearchParamString paymentMethodType;
  QuerySearchParamString paymentMethodId;
  QuerySearchParamString billingAddressId;
  QuerySearchParamString shippingAddressId;
  QuerySearchParamString addressId;
  QuerySearchParamString firstName;
  QuerySearchParamString lastName;
  QuerySearchParamString company;
  @JsonKey(name: 'address_line_1')
  QuerySearchParamString addressLine1;
  @JsonKey(name: 'address_line_2')
  QuerySearchParamString addressLine2;
  QuerySearchParamString city;
  QuerySearchParamString state;
  QuerySearchParamString postalCode;
  QuerySearchParamString country;
  QuerySearchParamString email;
  QuerySearchParamString phone;
  QuerySearchParamString fax;
  QuerySearchParamDateRange createdAt;
  QuerySearchParamDateRange updatedAt;
  int limit;
  int offset;

  CustomerSearchRequest({
    this.id,
    this.paymentMethodType,
    this.paymentMethodId,
    this.billingAddressId,
    this.shippingAddressId,
    this.addressId,
    this.firstName,
    this.lastName,
    this.company,
    this.addressLine1,
    this.addressLine2,
    this.city,
    this.state,
    this.postalCode,
    this.country,
    this.email,
    this.phone,
    this.fax,
    this.createdAt,
    this.updatedAt,
    this.limit,
    this.offset,
  });

  @override
  CustomerSearchResponse buildResponse(Map<String, dynamic> json) =>
      CustomerSearchResponse.fromJson(json);

  @override
  String getUrl() => '/vault/customer/search';

  @override
  Map<String, dynamic> toJson() => _$CustomerSearchRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerAddressCreateRequest
    extends Creatable<CustomerAddressCreateResponse> {
  String customerId;
  CustomerAddress address;

  CustomerAddressCreateRequest(this.customerId, {this.address});

  @override
  CustomerAddressCreateResponse buildResponse(Map<String, dynamic> json) =>
      CustomerAddressCreateResponse.fromJson(json);

  @override
  String getUrl() => '/vault/customer/${customerId}/address';

  @override
  Map<String, dynamic> toJson() => address.toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerAddressUpdateRequest
    extends Updatable<CustomerAddressUpdateResponse> {
  String customerId;
  String addressId;
  CustomerAddress address;

  CustomerAddressUpdateRequest(this.customerId, this.addressId, {this.address});

  @override
  CustomerAddressUpdateResponse buildResponse(Map<String, dynamic> json) =>
      CustomerAddressUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/vault/customer/${customerId}/address/${addressId}';

  @override
  Map<String, dynamic> toJson() => address.toJson();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerAddressDeleteRequest
    extends Deletable<CustomerAddressDeleteResponse> {
  String customerId;
  String addressId;

  CustomerAddressDeleteRequest(this.customerId, this.addressId);

  @override
  CustomerAddressDeleteResponse buildResponse(Map<String, dynamic> json) =>
      CustomerAddressDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/vault/customer/${customerId}/address/${addressId}';
}
