import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/recurring/discount_response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_request.g.dart';

@JsonSerializable()
class DiscountCreateRequest extends Creatable<DiscountResponse> {
  String name;
  String description;
  int amount;
  int percentage;
  int duration;

  DiscountCreateRequest(
      {this.name,
      this.description,
      this.amount,
      this.percentage,
      this.duration});

  @override
  Map<String, dynamic> toJson() => _$DiscountCreateRequestToJson(this);

  @override
  String getUrl() => '/recurring/discount';

  @override
  DiscountResponse buildResponse(Map<String, dynamic> json) {
    return DiscountResponse.fromJson(json);
  }
}

class DiscountSearchRequest extends Searchable<DiscountSearchResponse> {
  String id;

  @override
  String getUrl() => id?.isNotEmpty == true
      ? '/recurring/discount/$id'
      : '/recurring/discounts';

  DiscountSearchRequest({this.id});

  @override
  DiscountSearchResponse buildResponse(Map<String, dynamic> json) {
    return DiscountSearchResponse.fromJson(json);
  }
}

@JsonSerializable()
class DiscountRequest extends Creatable<DiscountResponse> {
  String id;
  String description;
  int amount;
  int percentage;
  int duration;

  DiscountRequest(
      {this.id, this.description, this.amount, this.percentage, this.duration});

  @override
  Map<String, dynamic> toJson() => _$DiscountRequestToJson(this);

  factory DiscountRequest.fromJson(Map<String, dynamic> json) =>
      _$DiscountRequestFromJson(json);

  @override
  String getUrl() => null;

  @override
  DiscountResponse buildResponse(Map<String, dynamic> json) {
    return DiscountResponse.fromJson(json);
  }
}