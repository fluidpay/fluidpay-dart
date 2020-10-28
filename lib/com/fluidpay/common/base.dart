import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

import 'serialization.dart';

abstract class BaseRequest<Response extends BaseResponse> with Serializable {
  String getUrl();

  Response buildResponse(Map<String, dynamic> json);

  @override
  String toString() {
    return toJson().toString();
  }
}

abstract class BaseResponse<Data> {
  String status;
  String msg;
  @JsonKey(name: 'total_count')
  int totalCount;
  Data data;

  BaseResponse();

  @override
  String toString() {
    return 'BaseResponse{status: $status, msg: $msg, totalCount: $totalCount, data: $data}';
  }
}

abstract class BaseData extends Serializable {
  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
