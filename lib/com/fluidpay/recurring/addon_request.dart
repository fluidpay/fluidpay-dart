import 'package:fluidpay_dart/com/fluidpay/common/actions.dart';
import 'package:fluidpay_dart/com/fluidpay/common/base.dart';
import 'package:fluidpay_dart/com/fluidpay/recurring/addon_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'addon_request.g.dart';

@JsonSerializable(createToJson: true)
class AddOnRequest extends ForCreate {
  String name;
  String description;
  int amount;
  int percentage;
  String duration;

  AddOnRequest(
      {this.name,
      this.description,
      this.amount,
      this.percentage,
      this.duration});

  @override
  Map<String, dynamic> toJson() => _$AddOnRequestToJson(this);

  @override
  String getUrl() => '/recurring/addon';

  @override
  BaseResponse buildResponse(Map<String, dynamic> json) {
    return AddOnResponse.fromJson(json);
  }
}

class AddOnSearchRequest extends ForSearch {
  @override
  String getUrl() => '/recurring/addons';

  @override
  Map<String, dynamic> toJson() => {};

  @override
  BaseResponse buildResponse(Map<String, dynamic> json) {
    return AddOnSearchResponse.fromJson(json);
  }
}
