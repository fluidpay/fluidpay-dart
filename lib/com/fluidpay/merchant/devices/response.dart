import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceCreateResponse extends Responsable<DeviceResponseData> {
  DeviceCreateResponse();

  factory DeviceCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceUpdateResponse extends Responsable<DeviceResponseData> {
  DeviceUpdateResponse();

  factory DeviceUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceDeleteResponse extends Responsable<dynamic> {
  DeviceDeleteResponse();

  factory DeviceDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceDeleteResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceSearchResponse extends Responsable<List<DeviceResponseData>> {
  DeviceSearchResponse();

  factory DeviceSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceStatusSearchResponse extends Responsable<dynamic> {
  DeviceStatusSearchResponse();

  factory DeviceStatusSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$DeviceStatusSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceStatusSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceResponseData extends Decodable {
  String id;
  String friendly_name;
  String manufacturer;
  String part_number;
  String serial_number;
  String status;
  String created_at;
  String updated_at;

  DeviceResponseData();

  factory DeviceResponseData.fromJson(Map<String, dynamic> json) =>
      _$DeviceResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$DeviceResponseDataToJson(this);
}
