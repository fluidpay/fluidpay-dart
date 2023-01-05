import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'response.g.dart';

@JsonSerializable()
class ProcessorGetResponse extends Responsable<List<ProcessorData>> {
  factory ProcessorGetResponse.fromJson(Map<String, dynamic> json) => _$ProcessorGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProcessorGetResponseToJson(this);

  ProcessorGetResponse();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorData extends Decodable {
  String? id;
  String? name;
  String? description;
  bool? defaultCard;
  bool? defaultAch;
  bool? defaultApm;
  bool? defaultCash;
  String? timezone;
  String? tag;
  String? status;
  String? settleAt;
  int? maxDaily;
  int? maxMonthly;
  String? paymentAdjType;
  int? paymentAdjVal;
  ProcessorSettingsResponse? settings;
  List<String>? supportedPaymentMethods;
  List<String>? supportedCurrencies;

  ProcessorData(
      {this.id,
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
      this.supportedPaymentMethods,
      this.supportedCurrencies});

  factory ProcessorData.fromJson(Map<String, dynamic> json) => _$ProcessorDataFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcessorDataToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorSettingsResponse extends Decodable {
  TsysSierraSettings? tsysSierra;
  SageACHSettings? sageAch;
  HouseACHSettings? houseAch;
  ACHNowSettings? achnow;
  ACHCOMSettings? achcom;
  EPXSettings? epx;
  RapidConnectSettings? rapidConnect;
  CardPMTSettings? cardpmt;
  NMISettings? nmi;
  VantivSettings? vantiv;
  BoltPaySettings? boltpay;
  PaymentXPSettings? paymentxp;
  PaysafeContinuitySettings? paysafeContinuity;
  RealexPaymentsSettings? realexpayments;
  RapidIQSettings? rapidiq;
  MonerisSettings? moneris;
  MXMerchantSettings? mxmerchant;
  GlobalPayUCSettings? globalpayuc;
  MGIAPMSettings? mgiapm;
  @JsonKey(fromJson: _parsePending)
  PendingSettings? pending;
  ElavonSettings? elavon;
  @JsonKey(fromJson: _parseCash)
  CashSettings? cash;
  PayonSettings? payon;
  ConsumerChoiceSettings? consumerChoice;

  ProcessorSettingsResponse(
      this.tsysSierra,
      this.sageAch,
      this.houseAch,
      this.achnow,
      this.achcom,
      this.epx,
      this.rapidConnect,
      this.cardpmt,
      this.nmi,
      this.vantiv,
      this.boltpay,
      this.paymentxp,
      this.paysafeContinuity,
      this.realexpayments,
      this.rapidiq,
      this.moneris,
      this.mxmerchant,
      this.globalpayuc,
      this.mgiapm,
      this.pending,
      this.elavon,
      this.cash,
      this.payon,
      this.consumerChoice);

  factory ProcessorSettingsResponse.fromJson(Map<String, dynamic> json) {
    return _$ProcessorSettingsResponseFromJson(json);
  }

  static CashSettings _parseCash(dynamic json) {
    return CashSettings();
  }
  
  static PendingSettings _parsePending(dynamic json) {
    return PendingSettings();
  }

  @override
  Map<String, dynamic> toJson() => _$ProcessorSettingsResponseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TsysSierraSettings extends Decodable {
  String? bin;
  String? mid;
  String? agentBankNumber;
  String? agentChainNumber;
  String? storeNumber;
  String? terminalNumber;
  String? terminalIdentificationNumber;
  String? industryCode;
  String? currencyCode;
  String? countryCode;
  String? cityCode;
  String? languageIndicator;
  String? timezone;
  String? mcc;
  String? merchantName;
  String? merchantLocation;
  String? merchantState;
  String? merchantLocationNumber;
  String? classification;

  TsysSierraSettings({
    this.bin,
    this.mid,
    this.agentBankNumber,
    this.agentChainNumber,
    this.storeNumber,
    this.terminalNumber,
    this.terminalIdentificationNumber,
    this.industryCode,
    this.currencyCode,
    this.countryCode,
    this.cityCode,
    this.languageIndicator,
    this.timezone,
    this.mcc,
    this.merchantName,
    this.merchantLocation,
    this.merchantState,
    this.merchantLocationNumber,
    this.classification,
  });

  factory TsysSierraSettings.fromJson(Map<String, dynamic> json) => _$TsysSierraSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TsysSierraSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SageACHSettings extends Decodable {
  Map<String, SageACHTerminalSettings>? terminals;

  SageACHSettings({this.terminals});

  factory SageACHSettings.fromJson(Map<String, dynamic> json) => _$SageACHSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SageACHSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HouseACHSettings extends Decodable {
  Map<String, HouseACHTerminalSettings>? terminals;

  HouseACHSettings({this.terminals});

  factory HouseACHSettings.fromJson(Map<String, dynamic> json) => _$HouseACHSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HouseACHSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHNowSettings extends Decodable {
  String? username;
  String? password;
  bool? enableVerification;

  ACHNowSettings({
    this.username,
    this.password,
    this.enableVerification,
  });

  factory ACHNowSettings.fromJson(Map<String, dynamic> json) => _$ACHNowSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHNowSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHCOMSettings extends Decodable {
  String? token;
  @JsonKey(name: 'nachaid')
  String? nachaID;

  ACHCOMSettings({
    this.token,
    this.nachaID,
  });

  factory ACHCOMSettings.fromJson(Map<String, dynamic> json) => _$ACHCOMSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHCOMSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EPXSettings extends Decodable {
  String? customerNumber;
  String? merchantNumber;
  String? dbaNumber;
  String? terminalNumber;
  String? mcc;
  String? classification;
  @JsonKey(name: 'soft_descriptor_1')
  String? softDescriptor1;
  @JsonKey(name: 'soft_descriptor_2')
  String? softDescriptor2;

  EPXSettings({
    this.customerNumber,
    this.merchantNumber,
    this.dbaNumber,
    this.terminalNumber,
    this.mcc,
    this.classification,
    this.softDescriptor1,
    this.softDescriptor2,
  });

  factory EPXSettings.fromJson(Map<String, dynamic> json) => _$EPXSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EPXSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RapidConnectSettings extends Decodable {
  @JsonKey(name: 'merchant_id')
  String? merchantID;
  @JsonKey(name: 'group_id')
  String? groupID;
  @JsonKey(name: 'terminal_id')
  String? terminalID;
  String? classification;
  String? did;
  bool? forceDev;
  String? mcc;

  RapidConnectSettings({
    this.merchantID,
    this.groupID,
    this.terminalID,
    this.classification,
    this.did,
    this.forceDev,
    this.mcc,
  });

  factory RapidConnectSettings.fromJson(Map<String, dynamic> json) => _$RapidConnectSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RapidConnectSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CardPMTSettings extends Decodable {
  String? username;
  String? password;

  CardPMTSettings({
    this.username,
    this.password,
  });

  factory CardPMTSettings.fromJson(Map<String, dynamic> json) => _$CardPMTSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CardPMTSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NMISettings extends Decodable {
  String? username;
  String? password;

  NMISettings({
    this.username,
    this.password,
  });

  factory NMISettings.fromJson(Map<String, dynamic> json) => _$NMISettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NMISettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class VantivSettings extends Decodable {
  @JsonKey(name: 'merchant_id')
  String? merchantID;
  String? reportGroup;

  VantivSettings({this.merchantID, this.reportGroup});

  factory VantivSettings.fromJson(Map<String, dynamic> json) => _$VantivSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VantivSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BoltPaySettings extends Decodable {
  String? merchantToken;
  String? secretKey;

  BoltPaySettings({
    this.merchantToken,
    this.secretKey,
  });

  factory BoltPaySettings.fromJson(Map<String, dynamic> json) => _$BoltPaySettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BoltPaySettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentXPSettings extends Decodable {
  @JsonKey(name: 'merchant_id')
  String? merchantID;
  String? merchantKey;

  PaymentXPSettings({
    this.merchantID,
    this.merchantKey,
  });

  factory PaymentXPSettings.fromJson(Map<String, dynamic> json) => _$PaymentXPSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentXPSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaysafeContinuitySettings extends Decodable {
  @JsonKey(name: 'merchant_id')
  String? merchantID;
  String? altKey;
  String? classification;
  String? mcc;
  bool? tangible;
  bool? nonTangible;
  bool? freeTrialContinuity;
  bool? continuityOnly;
  bool? straightSale;

  PaysafeContinuitySettings({
    this.merchantID,
    this.altKey,
    this.classification,
    this.mcc,
    this.tangible,
    this.nonTangible,
    this.freeTrialContinuity,
    this.continuityOnly,
    this.straightSale,
  });

  factory PaysafeContinuitySettings.fromJson(Map<String, dynamic> json) => _$PaysafeContinuitySettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaysafeContinuitySettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RealexPaymentsSettings extends Decodable {
  @JsonKey(name: 'merchant_id')
  String? merchantID;
  String? sharedSecret;
  String? refundPassword;

  RealexPaymentsSettings({
    this.merchantID,
    this.sharedSecret,
    this.refundPassword,
  });

  factory RealexPaymentsSettings.fromJson(Map<String, dynamic> json) => _$RealexPaymentsSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RealexPaymentsSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RapidIQSettings extends Decodable {
  String? account;
  String? password;

  RapidIQSettings({
    this.account,
    this.password,
  });

  factory RapidIQSettings.fromJson(Map<String, dynamic> json) => _$RapidIQSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RapidIQSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MonerisSettings extends Decodable {
  @JsonKey(name: 'store_id')
  String? storeID;
  String? apiToken;

  MonerisSettings({
    this.storeID,
    this.apiToken,
  });

  factory MonerisSettings.fromJson(Map<String, dynamic> json) => _$MonerisSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MonerisSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MXMerchantSettings extends Decodable {
  String? consumerKey;
  String? consumerSecret;
  @JsonKey(name: 'merchant_id')
  String? merchantID;

  MXMerchantSettings({
    this.consumerKey,
    this.consumerSecret,
    this.merchantID,
  });

  factory MXMerchantSettings.fromJson(Map<String, dynamic> json) => _$MXMerchantSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MXMerchantSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GlobalPayUCSettings extends Decodable {
  @JsonKey(name: 'app_id')
  String? appID;
  String? appKey;

  GlobalPayUCSettings({
    this.appID,
    this.appKey,
  });

  factory GlobalPayUCSettings.fromJson(Map<String, dynamic> json) => _$GlobalPayUCSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GlobalPayUCSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MGIAPMSettings extends Decodable {
  @JsonKey(name: 'contract_id')
  String? contractID;
  Map<String, MGIAPMDetails>? paymentMethods;

  MGIAPMSettings({
    this.contractID,
    this.paymentMethods,
  });

  factory MGIAPMSettings.fromJson(Map<String, dynamic> json) => _$MGIAPMSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MGIAPMSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PendingSettings extends Decodable {
  factory PendingSettings.fromJson(Map<String, dynamic> json) => _$PendingSettingsFromJson(json);

  PendingSettings();

  @override
  Map<String, dynamic> toJson() => _$PendingSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ElavonSettings extends Decodable {
  String? mid;
  String? tid;
  @JsonKey(name: 'bank_id')
  String? bankID;
  String? classification;
  String? deviceTag;
  String? merchantCurrency;
  String? mcc;
  bool? multiCurrencyConversionEnabled;

  ElavonSettings({
    this.mid,
    this.tid,
    this.bankID,
    this.classification,
    this.deviceTag,
    this.merchantCurrency,
    this.mcc,
    this.multiCurrencyConversionEnabled,
  });

  factory ElavonSettings.fromJson(Map<String, dynamic> json) => _$ElavonSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ElavonSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CashSettings extends Decodable {
  factory CashSettings.fromJson(Map<String, dynamic> json) => _$CashSettingsFromJson(json);

  CashSettings();

  @override
  Map<String, dynamic> toJson() => _$CashSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PayonSettings extends Decodable {
  @JsonKey(name: 'entityID')
  String? entityID;
  String? token;

  PayonSettings({
    this.entityID,
    this.token,
  });

  factory PayonSettings.fromJson(Map<String, dynamic> json) => _$PayonSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PayonSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SageACHTerminalSettings extends Decodable {
  String? secCode;
  String? type;
  bool? dlRequired;
  bool? idRequired;
  bool? checkVerification;
  bool? isGatewayTerminal;
  bool? allowCredits;
  int? checkLimit;

  SageACHTerminalSettings({
    this.secCode,
    this.type,
    this.dlRequired,
    this.idRequired,
    this.checkVerification,
    this.isGatewayTerminal,
    this.allowCredits,
    this.checkLimit,
  });

  factory SageACHTerminalSettings.fromJson(Map<String, dynamic> json) => _$SageACHTerminalSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SageACHTerminalSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HouseACHTerminalSettings extends Decodable {
  String? secCode;
  String? type;
  bool? dlRequired;
  bool? idRequired;
  bool? checkVerification;
  bool? isGatewayTerminal;
  bool? allowCredits;
  int? checkLimit;

  HouseACHTerminalSettings({
    this.secCode,
    this.type,
    this.dlRequired,
    this.idRequired,
    this.checkVerification,
    this.isGatewayTerminal,
    this.allowCredits,
    this.checkLimit,
  });

  factory HouseACHTerminalSettings.fromJson(Map<String, dynamic> json) => _$HouseACHTerminalSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HouseACHTerminalSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MGIAPMDetails extends Decodable {
  String? displayName;
  List<String>? supportedCurrencies;
  List<String>? supportedCountries;

  MGIAPMDetails({
    this.displayName,
    this.supportedCurrencies,
    this.supportedCountries,
  });

  factory MGIAPMDetails.fromJson(Map<String, dynamic> json) => _$MGIAPMDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MGIAPMDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ConsumerChoiceSettings extends Decodable {
  String? bin;
  String? mid;
  String? mvv;
  String? agentBankNumber;
  String? agentChainNumber;
  String? storeNumber;
  String? terminalNumber;
  String? terminalIdentificationNumber;
  String? industryCode;
  String? currencyCode;
  String? countryCode;
  String? cityCode;
  String? languageIndicator;
  String? timezone;
  String? mcc;
  String? merchantName;
  String? merchantLocation;
  String? merchantState;
  String? merchantLocationNumber;
  String? classification;
  String? username;
  String? password;
  @JsonKey(name: 'client_id')
  String? clientID;

  ConsumerChoiceSettings({
    this.bin,
    this.mid,
    this.mvv,
    this.agentBankNumber,
    this.agentChainNumber,
    this.storeNumber,
    this.terminalNumber,
    this.terminalIdentificationNumber,
    this.industryCode,
    this.currencyCode,
    this.countryCode,
    this.cityCode,
    this.languageIndicator,
    this.timezone,
    this.mcc,
    this.merchantName,
    this.merchantLocation,
    this.merchantState,
    this.merchantLocationNumber,
    this.classification,
    this.username,
    this.password,
    this.clientID,
  });

  factory ConsumerChoiceSettings.fromJson(Map<String, dynamic> json) => _$ConsumerChoiceSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConsumerChoiceSettingsToJson(this);
}
