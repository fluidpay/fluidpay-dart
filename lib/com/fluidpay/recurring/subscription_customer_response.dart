import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscription_customer_response.g.dart';

@JsonSerializable()
class SubscriptionCustomerResponse
    extends Responsable<SubscriptionCustomerResponseData> {
  SubscriptionCustomerResponse();

  factory SubscriptionCustomerResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionCustomerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionCustomerResponseToJson(this);
}

@JsonSerializable()
class SubscriptionCustomerResponseData extends Decodable {
  String id;
  String paymentMethodType;
  String paymentMethodID;
  String billingAddressID;
  String shippingAddressID;

  SubscriptionCustomerResponseData();

  factory SubscriptionCustomerResponseData.fromJson(
          Map<String, dynamic> json) =>
      _$SubscriptionCustomerResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$SubscriptionCustomerResponseDataToJson(this);
}
