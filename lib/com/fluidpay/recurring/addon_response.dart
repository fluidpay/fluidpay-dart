import 'package:fluidpay_dart/com/fluidpay/common/base.dart';

class AddOnResponse extends BaseResponse {
  String id;
  String createdAt;
  String updatedAt;

  AddOnResponse.fromJson(Map<String, dynamic> json)
      : this.fromDataJson(json['data'], fullJson: json);

  AddOnResponse.fromDataJson(Map<String, dynamic> data,
      {Map<String, dynamic> fullJson = const {}})
      : super.fromJson(fullJson) {
    id = data['id'];
    createdAt = data['created_at'];
    updatedAt = data['updated_at'];
  }

  @override
  String toString() {
    return super.toString() +
        '\nAddOnResponse{id: $id, createdAt: $createdAt, updatedAt: $updatedAt}';
  }
}

class AddOnSearchResponse extends BaseResponse {
  List<AddOnResponse> data = [];

  AddOnSearchResponse.fromJson(Map<String, dynamic> json)
      : super.fromJson(json) {
    (json['data'] as List<dynamic>).forEach((element) => data.add(
        AddOnResponse.fromDataJson(element as Map<String, dynamic>,
            fullJson: json)));
  }

  @override
  String toString() {
    return super.toString() + '\nAddOnSearchResponse{data: $data}';
  }
}
