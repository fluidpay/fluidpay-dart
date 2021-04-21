import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/recurring/addon_response.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_response.dart';
import 'package:json_annotation/json_annotation.dart';

import 'customer_response.dart';

part 'subscription_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class SubscriptionResponse extends Responsable<SubscriptionResponseData> {
  SubscriptionResponse();

  factory SubscriptionResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SubscriptionSearchResponse
    extends Responsable<List<SubscriptionResponseData>> {
  SubscriptionSearchResponse();

  factory SubscriptionSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubscriptionSearchResponseToJson(this);
}

@JsonSerializable()
class SubscriptionResponseData extends Decodable {
  String? id;
  @JsonKey(name: 'plan_id')
  String? planId;
  String? status;
  String? description;
  @JsonKey(name: 'customer')
  CustomerResponseData? customer;
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
  List<AddOnResponseData>? addOns;
  @JsonKey(name: 'discounts')
  List<DiscountResponseData>? discounts;
  @JsonKey(name: 'processor_id')
  String? processorId;
  @JsonKey(name: 'created_at')
  String? createdAt;
  @JsonKey(name: 'updated_at')
  String? updatedAt;

  SubscriptionResponseData();

  factory SubscriptionResponseData.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SubscriptionResponseDataToJson(this);
}
