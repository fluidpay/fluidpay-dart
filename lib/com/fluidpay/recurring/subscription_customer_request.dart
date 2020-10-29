import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/recurring/subscription_customer_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_customer_request.g.dart';

@JsonSerializable()
class SubscriptionCustomerRequest
    extends Creatable<SubscriptionCustomerResponse> {
  String id;
  String paymentMethodType;
  String paymentMethodID;
  String billingAddressID;
  String shippingAddressID;

  SubscriptionCustomerRequest(
      {this.id,
      this.paymentMethodType,
      this.paymentMethodID,
      this.billingAddressID,
      this.shippingAddressID});

  @override
  Map<String, dynamic> toJson() => _$SubscriptionCustomerRequestToJson(this);

  factory SubscriptionCustomerRequest.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCustomerRequestFromJson(json);

  @override
  String getUrl() => null;

  @override
  SubscriptionCustomerResponse buildResponse(Map<String, dynamic> json) {
    return SubscriptionCustomerResponse.fromJson(json);
  }
}
