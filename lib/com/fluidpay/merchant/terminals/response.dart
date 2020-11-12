import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/processors/processor_settings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalCreateResponse extends Responsable<TerminalResponseData> {
  TerminalCreateResponse();

  factory TerminalCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalUpdateResponse extends Responsable<TerminalResponseData> {
  TerminalUpdateResponse();

  factory TerminalUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalDeleteResponse extends Responsable<dynamic> {
  TerminalDeleteResponse();

  factory TerminalDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalDeleteResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalSearchResponse extends Responsable<List<TerminalResponseData>> {
  TerminalSearchResponse();

  factory TerminalSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalStatusSearchResponse extends Responsable<dynamic> {
  TerminalStatusSearchResponse();

  factory TerminalStatusSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalStatusSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalStatusSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalResponseData extends Decodable {
  String id;
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
  String createdAt;
  String updatedAt;

  TerminalResponseData();

  factory TerminalResponseData.fromJson(Map<String, dynamic> json) =>
      _$TerminalResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalResponseDataToJson(this);
}
