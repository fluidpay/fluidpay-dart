import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'processor_settings.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ProcessorSettings extends Decodable {
  TsysSierra tsysSierra;
  SageACH sageAch;
  HouseACH houseAch;
  ACHNow achnow;
  ACHCOM achcom;
  EPX epx;
  RapidConnect rapidConnect;
  CardPMT cardpmt;
  NMI nmi;
  Vantiv vantiv;
  BoltPay boltpay;
  PaymentXP paymentxp;
  PaysafeContinuity paysafeContinuity;
  RealexPayments realexpayments;
  Synapse synapse;
  Moneris moneris;
  MXMerchant mxmerchant;
  GlobalPayUC globalpayuc;
  MGIAPM mgiapm;
  Pending pending;
  Elavon elavon;
  Cash cash;
  Payon payon;

  ProcessorSettings({
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
    this.synapse,
    this.moneris,
    this.mxmerchant,
    this.globalpayuc,
    this.mgiapm,
    this.pending,
    this.elavon,
    this.cash,
    this.payon,
  });

  factory ProcessorSettings.fromJson(Map<String, dynamic> json) =>
      _$ProcessorSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProcessorSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class TsysSierra extends Decodable {
  String bin;
  String mid;
  String agentBankNumber;
  String agentChainNumber;
  String storeNumber;
  String terminalNumber;
  String terminalIdentificationNumber;
  String industryCode;
  String currencyCode;
  String countryCode;
  String cityCode;
  String languageIndicator;
  String timezone;
  String mcc;
  String merchantName;
  String merchantLocation;
  String merchantState;
  String merchantLocationNumber;
  String classification;

  TsysSierra({
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

  factory TsysSierra.fromJson(Map<String, dynamic> json) =>
      _$TsysSierraFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$TsysSierraToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SageACH extends Decodable {
  Map<String, SageTerminalSettings> terminals;

  SageACH({this.terminals});

  factory SageACH.fromJson(Map<String, dynamic> json) =>
      _$SageACHFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SageACHToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HouseACH extends Decodable {
  Map<String, HouseACHTerminalSettings> terminals;

  HouseACH({this.terminals});

  factory HouseACH.fromJson(Map<String, dynamic> json) =>
      _$HouseACHFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HouseACHToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHNow extends Decodable {
  String username;
  String password;
  bool enableVerification;

  ACHNow({
    this.username,
    this.password,
    this.enableVerification,
  });

  factory ACHNow.fromJson(Map<String, dynamic> json) => _$ACHNowFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHNowToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class ACHCOM extends Decodable {
  String token;
  String nachaid;

  ACHCOM({
    this.token,
    this.nachaid,
  });

  factory ACHCOM.fromJson(Map<String, dynamic> json) => _$ACHCOMFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ACHCOMToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class EPX extends Decodable {
  String customerNumber;
  String merchantNumber;
  String dbaNumber;
  String terminalNumber;
  String mcc;
  String classification;
  @JsonKey(name: 'soft_descriptor_1')
  String softDescriptor1;
  @JsonKey(name: 'soft_descriptor_2')
  String softDescriptor2;

  EPX({
    this.customerNumber,
    this.merchantNumber,
    this.dbaNumber,
    this.terminalNumber,
    this.mcc,
    this.classification,
    this.softDescriptor1,
    this.softDescriptor2,
  });

  factory EPX.fromJson(Map<String, dynamic> json) => _$EPXFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$EPXToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RapidConnect extends Decodable {
  String merchantId;
  String groupId;
  String terminalId;
  String classification;
  String did;
  bool forceDev;

  RapidConnect({
    this.merchantId,
    this.groupId,
    this.terminalId,
    this.classification,
    this.did,
    this.forceDev,
  });

  factory RapidConnect.fromJson(Map<String, dynamic> json) =>
      _$RapidConnectFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RapidConnectToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class CardPMT extends Decodable {
  String username;
  String password;

  CardPMT({
    this.username,
    this.password,
  });

  factory CardPMT.fromJson(Map<String, dynamic> json) =>
      _$CardPMTFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CardPMTToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class NMI extends Decodable {
  String username;
  String password;

  NMI({
    this.username,
    this.password,
  });

  factory NMI.fromJson(Map<String, dynamic> json) => _$NMIFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$NMIToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Vantiv extends Decodable {
  String merchantId;
  String reportGroup;

  Vantiv({
    this.merchantId,
    this.reportGroup,
  });

  factory Vantiv.fromJson(Map<String, dynamic> json) => _$VantivFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$VantivToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class BoltPay extends Decodable {
  String merchantToken;
  String secretKey;

  BoltPay({
    this.merchantToken,
    this.secretKey,
  });

  factory BoltPay.fromJson(Map<String, dynamic> json) =>
      _$BoltPayFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$BoltPayToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentXP extends Decodable {
  String merchantId;
  String merchantKey;

  PaymentXP({
    this.merchantId,
    this.merchantKey,
  });

  factory PaymentXP.fromJson(Map<String, dynamic> json) =>
      _$PaymentXPFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentXPToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaysafeContinuity extends Decodable {
  String merchantId;
  String altKey;
  String classification;
  String mcc;
  bool tangible;
  bool nonTangible;
  bool freeTrialContinuity;
  bool continuityOnly;
  bool straightSale;

  PaysafeContinuity({
    this.merchantId,
    this.altKey,
    this.classification,
    this.mcc,
    this.tangible,
    this.nonTangible,
    this.freeTrialContinuity,
    this.continuityOnly,
    this.straightSale,
  });

  factory PaysafeContinuity.fromJson(Map<String, dynamic> json) =>
      _$PaysafeContinuityFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaysafeContinuityToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class RealexPayments extends Decodable {
  String merchantId;
  String sharedSecret;
  String refundPassword;

  RealexPayments({
    this.merchantId,
    this.sharedSecret,
    this.refundPassword,
  });

  factory RealexPayments.fromJson(Map<String, dynamic> json) =>
      _$RealexPaymentsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$RealexPaymentsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Synapse extends Decodable {
  String account;
  String password;

  Synapse({
    this.account,
    this.password,
  });

  factory Synapse.fromJson(Map<String, dynamic> json) =>
      _$SynapseFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SynapseToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Moneris extends Decodable {
  String storeId;
  String apiToken;

  Moneris({
    this.storeId,
    this.apiToken,
  });

  factory Moneris.fromJson(Map<String, dynamic> json) =>
      _$MonerisFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MonerisToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MXMerchant extends Decodable {
  String consumerKey;
  String consumerSecret;
  int merchantId;

  MXMerchant({
    this.consumerKey,
    this.consumerSecret,
    this.merchantId,
  });

  factory MXMerchant.fromJson(Map<String, dynamic> json) =>
      _$MXMerchantFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MXMerchantToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class GlobalPayUC extends Decodable {
  String appId;
  String appKey;

  GlobalPayUC({
    this.appId,
    this.appKey,
  });

  factory GlobalPayUC.fromJson(Map<String, dynamic> json) =>
      _$GlobalPayUCFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$GlobalPayUCToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class MGIAPM extends Decodable {
  String contractId;
  Map<String, PaymentMethodDetails> paymentMethods;

  MGIAPM({
    this.contractId,
    this.paymentMethods,
  });

  factory MGIAPM.fromJson(Map<String, dynamic> json) => _$MGIAPMFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$MGIAPMToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Pending extends Decodable {
  factory Pending.fromJson(Map<String, dynamic> json) =>
      _$PendingFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PendingToJson(this);

  Pending();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Elavon extends Decodable {
  String mid;
  String tid;
  String bankId;
  String classification;
  String deviceTag;
  String merchantCurrency;
  String mcc;
  bool multiCurrencyConversionEnabled;

  Elavon({
    this.mid,
    this.tid,
    this.bankId,
    this.classification,
    this.deviceTag,
    this.merchantCurrency,
    this.mcc,
    this.multiCurrencyConversionEnabled,
  });

  factory Elavon.fromJson(Map<String, dynamic> json) => _$ElavonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ElavonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Cash extends Decodable {
  factory Cash.fromJson(Map<String, dynamic> json) => _$CashFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$CashToJson(this);

  Cash();
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Payon extends Decodable {
  @JsonKey(name: 'entityID')
  String entityID;
  String token;

  Payon({
    this.entityID,
    this.token,
  });

  factory Payon.fromJson(Map<String, dynamic> json) => _$PayonFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PayonToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class SageTerminalSettings extends Decodable {
  String secCode;
  String type;
  bool dlRequired;
  bool idRequired;
  bool checkVerification;
  bool isGatewayTerminal;
  bool allowCredits;
  int checkLimit;

  SageTerminalSettings({
    this.secCode,
    this.type,
    this.dlRequired,
    this.idRequired,
    this.checkVerification,
    this.isGatewayTerminal,
    this.allowCredits,
    this.checkLimit,
  });

  factory SageTerminalSettings.fromJson(Map<String, dynamic> json) =>
      _$SageTerminalSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$SageTerminalSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class HouseACHTerminalSettings extends Decodable {
  String secCode;
  String type;
  bool dlRequired;
  bool idRequired;
  bool checkVerification;
  bool isGatewayTerminal;
  bool allowCredits;
  int checkLimit;

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

  factory HouseACHTerminalSettings.fromJson(Map<String, dynamic> json) =>
      _$HouseACHTerminalSettingsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$HouseACHTerminalSettingsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class PaymentMethodDetails extends Decodable {
  String displayName;
  List<String> supportedCurrencies;
  List<String> supportedCountries;

  PaymentMethodDetails({
    this.displayName,
    this.supportedCurrencies,
    this.supportedCountries,
  });

  factory PaymentMethodDetails.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodDetailsFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PaymentMethodDetailsToJson(this);
}
