import 'serialization.dart';

abstract class BaseRequest with Serializable {
  String getUrl();

  BaseResponse buildResponse(Map<String, dynamic> json);

  @override
  String toString() {
    return toJson().toString();
  }
}

abstract class BaseResponse extends Deserializable {
  String status;

  BaseResponse.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    status = json['status'];
  }

  @override
  String toString() {
    return 'BaseResponse{status: $status}';
  }
}
