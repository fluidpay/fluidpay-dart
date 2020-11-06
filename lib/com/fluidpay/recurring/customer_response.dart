import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CustomerResponse
    extends Responsable<CustomerResponseData> {
  CustomerResponse();

  factory CustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResponseToJson(this);
}

@JsonSerializable()
class CustomerResponseData extends Decodable {
  String id;
  String paymentMethodType;
  String paymentMethodID;
  String billingAddressID;
  String shippingAddressID;

  CustomerResponseData();

  factory CustomerResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$CustomerResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$CustomerResponseDataToJson(this);
}
