import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/processors/processor_settings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorCreateResponse extends Responsable<ProcessorResponseData> {
  ProcessorCreateResponse();

  factory ProcessorCreateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProcessorCreateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorCreateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorUpdateResponse extends Responsable<ProcessorResponseData> {
  ProcessorUpdateResponse();

  factory ProcessorUpdateResponse.fromJson(Map<String, dynamic> json) =>
      _$ProcessorUpdateResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorUpdateResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorDeleteResponse extends Responsable<dynamic> {
  ProcessorDeleteResponse();

  factory ProcessorDeleteResponse.fromJson(Map<String, dynamic> json) =>
      _$ProcessorDeleteResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorDeleteResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorSearchResponse extends Responsable<List<ProcessorResponseData>> {
  ProcessorSearchResponse();

  factory ProcessorSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ProcessorSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorStatusSearchResponse extends Responsable<dynamic> {
  ProcessorStatusSearchResponse();

  factory ProcessorStatusSearchResponse.fromJson(Map<String, dynamic> json) =>
      _$ProcessorStatusSearchResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorStatusSearchResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorResponseData extends Decodable {
  String id;
  String name;
  String description;
  bool defaultCard;
  bool defaultAch;
  bool defaultApm;
  bool defaultCash;
  String timezone;
  String tag;
  String status;
  String settleAt;
  int maxDaily;
  int maxMonthly;
  String paymentAdjType;
  int paymentAdjVal;
  ProcessorSettings settings;
  List<String> supportedPaymentMethods;
  List<String> supportedCurrencies;

  ProcessorResponseData();

  factory ProcessorResponseData.fromJson(Map<String, dynamic> json) =>
      _$ProcessorResponseDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcessorResponseDataToJson(this);
}
