// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionCreateRequest _$SubscriptionCreateRequestFromJson(
    Map<String, dynamic> json) {
  return SubscriptionCreateRequest(
    planId: json['plan_id'] as String,
    description: json['description'] as String,
    customer: json['customer'] == null
        ? null
        : CustomerRequest.fromJson(json['customer'] as Map<String, dynamic>),
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    billingCycleInterval: json['billing_cycle_interval'] as int,
    billingFrequency: json['billing_frequency'] as String,
    billingDays: json['billing_days'] as String,
    duration: json['duration'] as int,
    nextBillDate: json['next_bill_date'] as String,
    addOns: (json['add_ons'] as List)
        ?.map((e) =>
            e == null ? null : AddOnRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    discounts: (json['discounts'] as List)
        ?.map((e) => e == null
            ? null
            : DiscountRequest.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    processorId: json['processor_id'] as String,
  );
}

Map<String, dynamic> _$SubscriptionCreateRequestToJson(
        SubscriptionCreateRequest instance) =>
    <String, dynamic>{
      'plan_id': instance.planId,
      'description': instance.description,
      'customer': instance.customer,
      'amount': instance.amount,
      'currency': instance.currency,
      'billing_cycle_interval': instance.billingCycleInterval,
      'billing_frequency': instance.billingFrequency,
      'billing_days': instance.billingDays,
      'duration': instance.duration,
      'next_bill_date': instance.nextBillDate,
      'add_ons': instance.addOns,
      'discounts': instance.discounts,
      'processor_id': instance.processorId,
    };
