// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanCreateRequest _$PlanCreateRequestFromJson(Map<String, dynamic> json) {
  return PlanCreateRequest(
    name: json['name'] as String,
    description: json['description'] as String,
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    billingCycleInterval: json['billing_cycle_interval'] as int,
    billingFrequency: json['billing_frequency'] as String,
    billingDays: json['billing_days'] as String,
    duration: json['duration'] as int,
    addOns: (json['add_ons'] as List)
        ?.map((e) =>
            e == null ? null : AddOnRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    discounts: (json['discounts'] as List)
        ?.map((e) => e == null
            ? null
            : DiscountRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    updateSubscriptions: json['update_subscriptions'] as bool,
  );
}

Map<String, dynamic> _$PlanCreateRequestToJson(PlanCreateRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'currency': instance.currency,
      'billing_cycle_interval': instance.billingCycleInterval,
      'billing_frequency': instance.billingFrequency,
      'billing_days': instance.billingDays,
      'duration': instance.duration,
      'add_ons': instance.addOns,
      'discounts': instance.discounts,
      'update_subscriptions': instance.updateSubscriptions,
    };
