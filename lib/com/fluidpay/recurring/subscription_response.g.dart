// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionResponse _$SubscriptionResponseFromJson(Map<String, dynamic> json) {
  return SubscriptionResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = json['data'] == null
        ? null
        : SubscriptionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$SubscriptionResponseToJson(
        SubscriptionResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

SubscriptionSearchResponse _$SubscriptionSearchResponseFromJson(
    Map<String, dynamic> json) {
  return SubscriptionSearchResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map(
            (e) => SubscriptionResponseData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$SubscriptionSearchResponseToJson(
        SubscriptionSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

SubscriptionResponseData _$SubscriptionResponseDataFromJson(
    Map<String, dynamic> json) {
  return SubscriptionResponseData()
    ..id = json['id'] as String?
    ..planId = json['plan_id'] as String?
    ..status = json['status'] as String?
    ..description = json['description'] as String?
    ..customer = json['customer'] == null
        ? null
        : CustomerResponseData.fromJson(
            json['customer'] as Map<String, dynamic>)
    ..amount = json['amount'] as int?
    ..currency = json['currency'] as String?
    ..billingCycleInterval = json['billing_cycle_interval'] as int?
    ..billingFrequency = json['billing_frequency'] as String?
    ..billingDays = json['billing_days'] as String?
    ..duration = json['duration'] as int?
    ..nextBillDate = json['next_bill_date'] as String?
    ..addOns = (json['add_ons'] as List<dynamic>?)
        ?.map((e) => AddOnResponseData.fromJson(e as Map<String, dynamic>))
        .toList()
    ..discounts = (json['discounts'] as List<dynamic>?)
        ?.map((e) => DiscountResponseData.fromJson(e as Map<String, dynamic>))
        .toList()
    ..processorId = json['processor_id'] as String?
    ..createdAt = json['created_at'] as String?
    ..updatedAt = json['updated_at'] as String?;
}

Map<String, dynamic> _$SubscriptionResponseDataToJson(
        SubscriptionResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plan_id': instance.planId,
      'status': instance.status,
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
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
