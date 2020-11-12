import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/devices/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceCreateRequest extends Creatable<DeviceCreateResponse> {
  String merchantId;
  String friendlyName;
  String manufacturer;
  String partNumber;
  String serialNumber;

  DeviceCreateRequest({
    this.merchantId,
    this.friendlyName,
    this.manufacturer,
    this.partNumber,
    this.serialNumber,
  });

  @override
  DeviceCreateResponse buildResponse(Map<String, dynamic> json) =>
      DeviceCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/device';

  @override
  Map<String, dynamic> toJson() => _$DeviceCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class DeviceUpdateRequest extends Updatable<DeviceUpdateResponse> {
  String merchantId;
  String id;

  String friendlyName;
  String manufacturer;
  String partNumber;
  String serialNumber;

  DeviceUpdateRequest({
    this.merchantId,
    this.id,
    this.friendlyName,
    this.manufacturer,
    this.partNumber,
    this.serialNumber,
  });

  @override
  DeviceUpdateResponse buildResponse(Map<String, dynamic> json) =>
      DeviceUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/device/${id}';

  @override
  Map<String, dynamic> toJson() => _$DeviceUpdateRequestToJson(this);
}

@JsonSerializable()
class DeviceSearchRequest extends Searchable<DeviceSearchResponse> {
  String merchantId;
  String id;

  DeviceSearchRequest({
    this.merchantId,
    this.id,
  });

  @override
  DeviceSearchResponse buildResponse(Map<String, dynamic> json) =>
      DeviceSearchResponse.fromJson(json);

  @override
  String getUrl() => id?.isNotEmpty == true
      ? '/merchant/$merchantId/device/$id'
      : '/merchant/$merchantId/devices';
}
