// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartGetResponse _$CartGetResponseFromJson(Map<String, dynamic> json) {
  return CartGetResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CartDataFullProduct.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartGetResponseToJson(CartGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartSearchResponse _$CartSearchResponseFromJson(Map<String, dynamic> json) {
  return CartSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : CartDataStringProduct.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CartSearchResponseToJson(CartSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartGetAllResponse _$CartGetAllResponseFromJson(Map<String, dynamic> json) {
  return CartGetAllResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : CartDataStringProduct.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$CartGetAllResponseToJson(CartGetAllResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartCreateResponse _$CartCreateResponseFromJson(Map<String, dynamic> json) {
  return CartCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CartDataStringProduct.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartCreateResponseToJson(CartCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartUpdateResponse _$CartUpdateResponseFromJson(Map<String, dynamic> json) {
  return CartUpdateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CartDataStringProduct.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartUpdateResponseToJson(CartUpdateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartDeleteResponse _$CartDeleteResponseFromJson(Map<String, dynamic> json) {
  return CartDeleteResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] as String;
}

Map<String, dynamic> _$CartDeleteResponseToJson(CartDeleteResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartSessionCreateResponse _$CartSessionCreateResponseFromJson(
    Map<String, dynamic> json) {
  return CartSessionCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : CartSession.fromJson(json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartSessionCreateResponseToJson(
        CartSessionCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

CartCheckoutResponse _$CartCheckoutResponseFromJson(Map<String, dynamic> json) {
  return CartCheckoutResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$CartCheckoutResponseToJson(
        CartCheckoutResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };
