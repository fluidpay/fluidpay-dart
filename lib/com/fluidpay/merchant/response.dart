import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class MerchantGetResponse extends Responsable<MerchantData> {
  MerchantGetResponse();
  factory MerchantGetResponse.fromJson(Map<String, dynamic> map) =>
      _$MerchantGetResponseFromJson(map);
  Map<String, dynamic> toJson() => _$MerchantGetResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MerchantData extends Decodable {
  @JsonKey(name: 'id')
  String? merchantId;
  String? partnerId;
  String? type;
  String? name;
  String? description;
  String? website;
  String? phone;
  String? phoneExt;
  String? receiptEmail;
  String? timezone;
  String? status;
  String? feeScheduleId;
  String? logoUrl;
  Permissions? permissions;
  AdminFlags? flags;
  Map<String, Requireds>? requireds;
  DefaultValues? defaultValues;
  Contact? primaryContact;
  Contact? billingContact;
  BillingDetails? billingDetails;
  Map<String, String>? parentStructure;
  String? tosAcceptedBy;
  String? tosAcceptedByUsername;
  List<Services>? services;
  String? createdAt;
  String? tosLastAcceptedAt;

  MerchantData();

  factory MerchantData.fromJson(Map<String, dynamic> json) =>
      _$MerchantDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MerchantDataToJson(this);
}