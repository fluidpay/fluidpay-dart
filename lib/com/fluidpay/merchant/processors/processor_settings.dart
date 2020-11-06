import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'processor_settings.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorSettings extends Decodable {
  factory ProcessorSettings.fromJson(Map<String, dynamic> json) =>
      _$ProcessorSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcessorSettingsToJson(this);

  ProcessorSettings();
}
