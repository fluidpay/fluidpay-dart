import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

import 'serialization.dart';

enum Method {
  GET,
  POST,
  DELETE
}

abstract class Requestable<Response extends Responsable> with Serializable {
  Map<String, String> getQueryParams() => null;

  String getUrl();

  Method getRequestMethod();

  Response buildResponse(Map<String, dynamic> json);

  @override
  String toString() {
    return toJson().toString();
  }
}

abstract class Responsable<Data> {
  String status;
  String msg;
  @JsonKey(name: 'status_code')
  int statusCode;
  @JsonKey(name: 'total_count')
  int totalCount;
  Data data;

  Responsable();

  @override
  String toString() {
    return 'BaseResponse{status: $status, statusCode: $statusCode, msg: $msg, totalCount: $totalCount, data: $data}';
  }
}

abstract class Decodable extends Serializable {
  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
