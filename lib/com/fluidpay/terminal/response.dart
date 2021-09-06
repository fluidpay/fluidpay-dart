import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class TerminalGetResponse extends Responsable<List<TerminalResponseData>> {
  TerminalGetResponse();

  factory TerminalGetResponse.fromJson(Map<String, dynamic> json) =>
      _$TerminalGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalGetResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TerminalResponseData extends Decodable {
  String? id;
  String? merchantId;
  String? manufacturer;
  String? model;
  String? serialNumber;
  String? tpn;
  String? description;
  String? status;
  String? authKey;
  String? registerId;
  bool? autoSettle;
  String? settleAt;
  DateTime? createdAt;
  DateTime? updatedAt;

  TerminalResponseData();

  factory TerminalResponseData.fromJson(Map<String, dynamic> json) =>
      _$TerminalResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TerminalResponseDataToJson(this);
}