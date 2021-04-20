import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/subscription_response.dart';
import 'package:json_annotation/json_annotation.dart';

import 'customer_request.dart';

part 'subscription_request.g.dart';

@JsonSerializable()
class SubscriptionCreateRequest extends Creatable<SubscriptionResponse> {
  @JsonKey(name: 'plan_id')
  String? planId;
  String? description;
  @JsonKey(name: 'customer')
  CustomerRequest? customer;
  int? amount;
  String? currency;
  @JsonKey(name: 'billing_cycle_interval')
  int? billingCycleInterval;
  @JsonKey(name: 'billing_frequency')
  String? billingFrequency;
  @JsonKey(name: 'billing_days')
  String? billingDays;
  int? duration;
  @JsonKey(name: 'next_bill_date')
  String? nextBillDate;
  @JsonKey(name: 'add_ons')
  List<AddOnRequest>? addOns;
  @JsonKey(name: 'discounts')
  List<DiscountRequest>? discounts;
  @JsonKey(name: 'processor_id')
  String? processorId;

  SubscriptionCreateRequest(
      {this.planId,
      this.description,
      this.customer,
      this.amount,
      this.currency,
      this.billingCycleInterval,
      this.billingFrequency,
      this.billingDays,
      this.duration,
      this.nextBillDate,
      this.addOns,
      this.discounts,
      this.processorId});

  @override
  Map<String, dynamic> toJson() => _$SubscriptionCreateRequestToJson(this);

  @override
  String getPath() => '/recurring/subscription';

  @override
  SubscriptionResponse buildResponse(Map<String, dynamic> json) {
    return SubscriptionResponse.fromJson(json);
  }
}

class SubscriptionSearchRequest extends Searchable<SubscriptionSearchResponse> {
  String? id;

  @override
  String getPath() => id?.isNotEmpty == true
      ? '/recurring/subscription/$id'
      : '/recurring/subscription/search';

  @override
  Method getRequestMethod() => id?.isNotEmpty == true ? Method.GET : Method.POST;

  SubscriptionSearchRequest({this.id});

  @override
  SubscriptionSearchResponse buildResponse(Map<String, dynamic> json) {
    return SubscriptionSearchResponse.fromJson(json);
  }
}
