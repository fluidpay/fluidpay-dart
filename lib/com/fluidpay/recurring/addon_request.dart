import 'package:fluidpay_dart/com/fluidpay/common/actions.dart';
import 'package:fluidpay_dart/com/fluidpay/common/base.dart';
import 'package:fluidpay_dart/com/fluidpay/recurring/addon_response.dart';

import 'package:json_annotation/json_annotation.dart';

part 'addon_request.g.dart';

@JsonSerializable()
class AddOnCreateRequest extends Creatable<AddOnResponse> {
  String name;
  String description;
  int amount;
  int percentage;
  String duration;

  AddOnCreateRequest(
      {this.name,
      this.description,
      this.amount,
      this.percentage,
      this.duration});

  @override
  Map<String, dynamic> toJson() => _$AddOnCreateRequestToJson(this);

  @override
  String getUrl() => '/recurring/addon';

  @override
  AddOnResponse buildResponse(Map<String, dynamic> json) {
    return AddOnResponse.fromJson(json);
  }
}

class AddOnSearchRequest extends Searchable<AddOnSearchResponse> {
  String id;

  @override
  String getUrl() => id?.isNotEmpty == true ? '/recurring/addon/$id' : '/recurring/addons';

  AddOnSearchRequest({this.id});

  @override
  AddOnSearchResponse buildResponse(Map<String, dynamic> json) {
    return AddOnSearchResponse.fromJson(json);
  }
}
