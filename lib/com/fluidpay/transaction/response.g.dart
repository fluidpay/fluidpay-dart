// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionCreateResponse _$TransactionCreateResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionCreateResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionCreateResponseToJson(
        TransactionCreateResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionGetResponse _$TransactionGetResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionGetResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionGetResponseToJson(
        TransactionGetResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionCaptureResponse _$TransactionCaptureResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionCaptureResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionCaptureResponseToJson(
        TransactionCaptureResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionVoidResponse _$TransactionVoidResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionVoidResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionVoidResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionVoidResponseToJson(
        TransactionVoidResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionRefundResponse _$TransactionRefundResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionRefundResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionRefundResponseToJson(
        TransactionRefundResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionCreateVaultResponse _$TransactionCreateVaultResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionCreateVaultResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionCreateVaultResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionCreateVaultResponseToJson(
        TransactionCreateVaultResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionEmailReceiptResponse _$TransactionEmailReceiptResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionEmailReceiptResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionEmailReceiptResponseToJson(
        TransactionEmailReceiptResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionPrintReceiptResponse _$TransactionPrintReceiptResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionPrintReceiptResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] as String;
}

Map<String, dynamic> _$TransactionPrintReceiptResponseToJson(
        TransactionPrintReceiptResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionTipAdjustmentResponse _$TransactionTipAdjustmentResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionTipAdjustmentResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'];
}

Map<String, dynamic> _$TransactionTipAdjustmentResponseToJson(
        TransactionTipAdjustmentResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionMultiResponse _$TransactionMultiResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionMultiResponseToJson(
        TransactionMultiResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionMultiVoidResponse _$TransactionMultiVoidResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiVoidResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : TransactionMultiVoidResponseData.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TransactionMultiVoidResponseToJson(
        TransactionMultiVoidResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionMultiRefundResponse _$TransactionMultiRefundResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionMultiRefundResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = json['data'] == null
        ? null
        : TransactionResponseData.fromJson(
            json['data'] as Map<String, dynamic>);
}

Map<String, dynamic> _$TransactionMultiRefundResponseToJson(
        TransactionMultiRefundResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };

TransactionSearchResponse _$TransactionSearchResponseFromJson(
    Map<String, dynamic> json) {
  return TransactionSearchResponse()
    ..status = json['status'] as String
    ..msg = json['msg'] as String
    ..statusCode = json['status_code'] as int
    ..totalCount = json['total_count'] as int
    ..data = (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : TransactionResponseData.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$TransactionSearchResponseToJson(
        TransactionSearchResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'status_code': instance.statusCode,
      'total_count': instance.totalCount,
      'data': instance.data,
    };
