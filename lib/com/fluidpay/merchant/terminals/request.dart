import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/terminals/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalCreateRequest extends Creatable<TerminalCreateResponse> {
  String merchantId;
  String manufacturer;
  String model;
  String serialNumber;
  String tpn;
  String description;
  String status;
  String authKey;
  String registerId;
  bool autoSettle;
  String settleAt;

  TerminalCreateRequest({
    this.merchantId,
    this.manufacturer,
    this.model,
    this.serialNumber,
    this.tpn,
    this.description,
    this.status,
    this.authKey,
    this.registerId,
    this.autoSettle,
    this.settleAt,
  });

  @override
  TerminalCreateResponse buildResponse(Map<String, dynamic> json) =>
      TerminalCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/terminal';

  @override
  Map<String, dynamic> toJson() => _$TerminalCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalUpdateRequest extends Updatable<TerminalUpdateResponse> {
  String merchantId;
  String terminalId;
  String manufacturer;
  String model;
  String serialNumber;
  String tpn;
  String description;
  String status;
  String authKey;
  String registerId;
  bool autoSettle;
  String settleAt;

  TerminalUpdateRequest({
    this.merchantId,
    this.terminalId,
    this.manufacturer,
    this.model,
    this.serialNumber,
    this.tpn,
    this.description,
    this.status,
    this.authKey,
    this.registerId,
    this.autoSettle,
    this.settleAt,
  });

  @override
  TerminalUpdateResponse buildResponse(Map<String, dynamic> json) =>
      TerminalUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/terminal/${terminalId}';

  @override
  Map<String, dynamic> toJson() => _$TerminalUpdateRequestToJson(this);
}

@JsonSerializable()
class TerminalDeleteRequest extends Deletable<TerminalDeleteResponse> {
  String merchantId;
  String terminalId;

  TerminalDeleteRequest(this.terminalId);

  @override
  TerminalDeleteResponse buildResponse(Map<String, dynamic> json) =>
      TerminalDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/terminal/${terminalId}';
}

@JsonSerializable()
class TerminalSearchRequest extends Searchable<TerminalSearchResponse> {
  String merchantId;

  TerminalSearchRequest({
    this.merchantId,
  });

  @override
  TerminalSearchResponse buildResponse(Map<String, dynamic> json) =>
      TerminalSearchResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/terminals';
}
