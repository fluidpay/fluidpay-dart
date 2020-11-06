// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlanResponse _$PlanResponseFromJson(Map<String, dynamic> json) {
  return PlanResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : PlanResponseData.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PlanResponseToJson(PlanResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

PlanSearchResponse _$PlanSearchResponseFromJson(Map<String, dynamic> json) {
  return PlanSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : PlanResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$PlanSearchResponseToJson(PlanSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

PlanResponseData _$PlanResponseDataFromJson(Map<String, dynamic> json) {
  return PlanResponseData()
    ..id = json['id'] as String
    ..name = json['name'] as String
    ..description = json['description'] as String
    ..amount = json['amount'] as int
    ..currency = json['currency'] as String
    ..billingCycleInterval = json['billing_cycle_interval'] as int
    ..billingFrequency = json['billing_frequency'] as String
    ..billingDays = json['billing_days'] as String
    ..duration = json['duration'] as int
    ..addOns = (json['add_ons'] as List)
        ?.map((e) => e == null
            ? null
            : AddOnResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..totalAddOns = json['total_add_ons'] as int
    ..totalDiscounts = json['total_discounts'] as int
    ..discounts = (json['discounts'] as List)
        ?.map((e) => e == null
            ? null
            : DiscountResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..subscriptionCount = json['subscription_count'] as int
    ..createdAt = json['created_at'] as String
    ..updatedAt = json['updated_at'] as String;
}

Map<String, dynamic> _$PlanResponseDataToJson(PlanResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'amount': instance.amount,
      'currency': instance.currency,
      'billing_cycle_interval': instance.billingCycleInterval,
      'billing_frequency': instance.billingFrequency,
      'billing_days': instance.billingDays,
      'duration': instance.duration,
      'add_ons': instance.addOns,
      'total_add_ons': instance.totalAddOns,
      'total_discounts': instance.totalDiscounts,
      'discounts': instance.discounts,
      'subscription_count': instance.subscriptionCount,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
