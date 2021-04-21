import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/recurring/customer_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'customer_request.g.dart';

@JsonSerializable()
class CustomerRequest
    extends Creatable<CustomerResponse> {
  String? id;
  String? paymentMethodType;
  String? paymentMethodID;
  String? billingAddressID;
  String? shippingAddressID;

  CustomerRequest(
      {this.id,
      this.paymentMethodType,
      this.paymentMethodID,
      this.billingAddressID,
      this.shippingAddressID});

  @override
  Map<String, dynamic> toJson() => _$CustomerRequestToJson(this);

  factory CustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$CustomerRequestFromJson(json);

  @override
  String getPath() => '';

  @override
  CustomerResponse buildResponse(Map<String, dynamic> json) {
    return CustomerResponse.fromJson(json);
  }
}
