import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/merchant/processors/response.dart';
import 'package:json_annotation/json_annotation.dart';

part 'request.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorCreateRequest extends Creatable<ProcessorCreateResponse> {
  String merchantId;
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
  Map<String, dynamic> settings;

  ProcessorCreateRequest({
    this.merchantId,
    this.name,
    this.description,
    this.defaultCard,
    this.defaultAch,
    this.defaultApm,
    this.defaultCash,
    this.timezone,
    this.tag,
    this.status,
    this.settleAt,
    this.maxDaily,
    this.maxMonthly,
    this.paymentAdjType,
    this.paymentAdjVal,
    this.settings,
  });

  @override
  ProcessorCreateResponse buildResponse(Map<String, dynamic> json) =>
      ProcessorCreateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/processor';

  @override
  Map<String, dynamic> toJson() => _$ProcessorCreateRequestToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorUpdateRequest extends Updatable<ProcessorUpdateResponse> {
  String merchantId;
  String processorId;
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
  Map<String, dynamic> settings;

  ProcessorUpdateRequest({
    this.merchantId,
    this.processorId,
    this.name,
    this.description,
    this.defaultCard,
    this.defaultAch,
    this.defaultApm,
    this.defaultCash,
    this.timezone,
    this.tag,
    this.status,
    this.settleAt,
    this.maxDaily,
    this.maxMonthly,
    this.paymentAdjType,
    this.paymentAdjVal,
    this.settings,
  });

  @override
  ProcessorUpdateResponse buildResponse(Map<String, dynamic> json) =>
      ProcessorUpdateResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/processor/${processorId}';

  @override
  Map<String, dynamic> toJson() => _$ProcessorUpdateRequestToJson(this);
}

@JsonSerializable()
class ProcessorDeleteRequest extends Deletable<ProcessorDeleteResponse> {
  String merchantId;
  String processorId;

  ProcessorDeleteRequest(this.processorId);

  @override
  ProcessorDeleteResponse buildResponse(Map<String, dynamic> json) =>
      ProcessorDeleteResponse.fromJson(json);

  @override
  String getUrl() => '/merchant/${merchantId}/processor/${processorId}';
}

@JsonSerializable()
class ProcessorSearchRequest extends Searchable<ProcessorSearchResponse> {
  String merchantId;
  String processorId;

  ProcessorSearchRequest({
    this.merchantId,
    this.processorId,
  });

  @override
  ProcessorSearchResponse buildResponse(Map<String, dynamic> json) =>
      ProcessorSearchResponse.fromJson(json);

  @override
  String getUrl() => processorId?.isNotEmpty == true
      ? '/merchant/${merchantId}/processor/${processorId}'
      : '/merchant/${merchantId}/processors';
}

@JsonSerializable()
class ProcessorStatusSearchRequest
    extends Searchable<ProcessorStatusSearchResponse> {
  String merchantId;
  String processorId;
  String action;

  ProcessorStatusSearchRequest({
    this.merchantId,
    this.processorId,
    this.action,
  });

  @override
  ProcessorStatusSearchResponse buildResponse(Map<String, dynamic> json) =>
      ProcessorStatusSearchResponse.fromJson(json);

  @override
  String getUrl() =>
      '/merchant/${merchantId}/processor/${processorId}/status/${action}';
}
