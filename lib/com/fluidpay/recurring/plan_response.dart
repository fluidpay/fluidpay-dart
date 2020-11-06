import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/recurring/addon_response.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'plan_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class PlanResponse extends Responsable<PlanResponseData> {
  PlanResponse();

  factory PlanResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlanResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PlanSearchResponse extends Responsable<List<PlanResponseData>> {
  PlanSearchResponse();

  factory PlanSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$PlanSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PlanSearchResponseToJson(this);
}

@JsonSerializable()
class PlanResponseData extends Decodable {
  String id;
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
  List<AddOnResponseData> addOns;
  @JsonKey(name: 'total_add_ons')
  int totalAddOns;
  @JsonKey(name: 'total_discounts')
  int totalDiscounts;
  @JsonKey(name: 'discounts')
  List<DiscountResponseData> discounts;
  @JsonKey(name: 'subscription_count')
  int subscriptionCount;
  @JsonKey(name: 'created_at')
  String createdAt;
  @JsonKey(name: 'updated_at')
  String updatedAt;

  PlanResponseData();

  factory PlanResponseData.fromJson(Map<String, dynamic> json) =>
      _$PlanResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PlanResponseDataToJson(this);
}
