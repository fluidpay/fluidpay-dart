import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/recurring/addon_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_request.dart';
import 'package:fluidpay/com/fluidpay/recurring/plan_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plan_request.g.dart';

@JsonSerializable()
class PlanCreateRequest extends Creatable<PlanResponse> {
  String name;
  String description;
  int amount;
  String currency;
  @JsonKey(name: 'billing_cycle_interval')
  int billingCycleInterval;
  @JsonKey(name: 'billing_frequency')
  String billingFrequency;
  @JsonKey(name: 'billing_days')
  String billingDays;
  int duration;
  @JsonKey(name: 'add_ons')
  List<AddOnRequest> addons;
  @JsonKey(name: 'discounts')
  List<DiscountRequest> discounts;
  @JsonKey(name: 'update_subscriptions')
  bool updateSubscriptions;

  PlanCreateRequest(
      {this.name,
      this.description,
      this.amount,
      this.currency,
      this.billingCycleInterval,
      this.billingFrequency,
      this.billingDays,
      this.duration,
      this.addons,
      this.discounts,
      this.updateSubscriptions});

  @override
  Map<String, dynamic> toJson() => _$PlanCreateRequestToJson(this);

  @override
  String getUrl() => '/recurring/plan';

  @override
  PlanResponse buildResponse(Map<String, dynamic> json) {
    return PlanResponse.fromJson(json);
  }
}

class PlanSearchRequest extends Searchable<PlanSearchResponse> {
  String id;

  @override
  String getUrl() =>
      id?.isNotEmpty == true ? '/recurring/plan/$id' : '/recurring/plans';

  PlanSearchRequest({this.id});

  @override
  PlanSearchResponse buildResponse(Map<String, dynamic> json) {
    return PlanSearchResponse.fromJson(json);
  }
}
