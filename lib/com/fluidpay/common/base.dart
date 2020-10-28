import 'dart:convert';
import 'serialization.dart';

abstract class BaseRequest with Serializable {
  String getUrl();

  BaseResponse buildResponse(Map<String, dynamic> json);

  @override
  String toString() {
    return toJson().toString();
  }
}

abstract class BaseResponse<Data> {
  String status;
  Data data;

  BaseResponse();

  @override
  String toString() {
    return 'BaseResponse{status: $status, data: $data}';
  }
}

abstract class BaseData extends Serializable{
  @override
  String toString() {
    return jsonEncode(toJson());
  }
}
