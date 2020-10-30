import 'package:json_annotation/json_annotation.dart';

part 'common.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: 'first_name')
  String firstName;
  @JsonKey(name: 'last_name')
  String lastName;
  String company;
  @JsonKey(name: 'address_line_1')
  String addressLine1;
  @JsonKey(name: 'address_line_2')
  String addressLine2;
  String city;
  String state;
  @JsonKey(name: 'postal_code')
  String postalCode;
  String country;
  String phone;
  String fax;
  String email;

  Address();

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
