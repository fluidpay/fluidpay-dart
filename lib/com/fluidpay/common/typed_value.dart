import 'package:json_annotation/json_annotation.dart';

part 'typed_value.g.dart';

@JsonSerializable()
class TypedValue {
  final String type;
  final int value;
  final bool include;

  TypedValue({required this.type, required this.value, required this.include});

  factory TypedValue.fromJson(Map<String, dynamic> json) => _$TypedValueFromJson(json);

  Map<String, dynamic> toJson() => _$TypedValueToJson(this);
}