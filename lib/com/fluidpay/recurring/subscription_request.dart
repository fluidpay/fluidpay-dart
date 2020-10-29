import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/subscription_response.dart';
import 'package:json_annotation/json_annotation.dart';

import 'subscription_customer_request.dart';

part 'subscription_request.g.dart';

@JsonSerializable()
class SubscriptionCreateRequest extends Creatable<SubscriptionResponse> {
  @JsonKey(name: 'plan_id')
  String planId;
  String description;
  @JsonKey(name: 'customer')
  SubscriptionCustomerRequest subscriptionCustomerRequest;
  int amount;
  String currency;
  @JsonKey(name: 'billing_cycle_interval')
  int billingCycleInterval;
  @JsonKey(name: 'billing_frequency')
  String billingFrequency;
  @JsonKey(name: 'billing_days')
  String billingDays;
  int duration;
  @JsonKey(name: 'next_bill_date')
  String nextBillDate;
  @JsonKey(name: 'add_ons')
  List<AddOnRequest> addons;
  @JsonKey(name: 'discounts')
  List<DiscountRequest> discounts;
  @JsonKey(name: 'processor_id')
  String processorId;

  SubscriptionCreateRequest(
      {this.planId,
      this.description,
      this.subscriptionCustomerRequest,
      this.amount,
      this.currency,
      this.billingCycleInterval,
      this.billingFrequency,
      this.billingDays,
      this.duration,
      this.nextBillDate,
      this.addons,
      this.discounts,
      this.processorId});

  @override
  Map<String, dynamic> toJson() => _$SubscriptionCreateRequestToJson(this);

  @override
  String getUrl() => '/recurring/subscription';

  @override
  SubscriptionResponse buildResponse(Map<String, dynamic> json) {
    return SubscriptionResponse.fromJson(json);
  }
}

class SubscriptionSearchRequest extends Searchable<SubscriptionSearchResponse> {
  String id;

  @override
  String getUrl() => id?.isNotEmpty == true
      ? '/recurring/subscription/$id'
      : '/recurring/subscriptions';

  SubscriptionSearchRequest({this.id});

  @override
  SubscriptionSearchResponse buildResponse(Map<String, dynamic> json) {
    return SubscriptionSearchResponse.fromJson(json);
  }
}
