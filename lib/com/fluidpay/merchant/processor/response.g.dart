// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProcessorGetResponse _$ProcessorGetResponseFromJson(Map<String, dynamic> json) {
  return ProcessorGetResponse()
    ..status = json['status'] as String?
    ..msg = json['msg'] as String?
    ..statusCode = json['status_code'] as int?
    ..totalCount = json['total_count'] as int?
    ..data = (json['data'] as List<dynamic>?)
        ?.map((e) => ProcessorData.fromJson(e as Map<String, dynamic>))
        .toList();
}

Map<String, dynamic> _$ProcessorGetResponseToJson(
    ProcessorGetResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  writeNotNull('msg', instance.msg);
  writeNotNull('status_code', instance.statusCode);
  writeNotNull('total_count', instance.totalCount);
  writeNotNull('data', instance.data);
  return val;
}

ProcessorData _$ProcessorDataFromJson(Map<String, dynamic> json) {
  return ProcessorData(
    id: json['id'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    defaultCard: json['default_card'] as bool?,
    defaultAch: json['default_ach'] as bool?,
    defaultApm: json['default_apm'] as bool?,
    defaultCash: json['default_cash'] as bool?,
    timezone: json['timezone'] as String?,
    tag: json['tag'] as String?,
    status: json['status'] as String?,
    settleAt: json['settle_at'] as String?,
    maxDaily: json['max_daily'] as int?,
    maxMonthly: json['max_monthly'] as int?,
    paymentAdjType: json['payment_adj_type'] as String?,
    paymentAdjVal: json['payment_adj_val'] as int?,
    settings: json['settings'] == null
        ? null
        : ProcessorSettingsResponse.fromJson(
            json['settings'] as Map<String, dynamic>),
    supportedPaymentMethods:
        (json['supported_payment_methods'] as List<dynamic>?)
            ?.map((e) => e as String)
            .toList(),
    supportedCurrencies: (json['supported_currencies'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$ProcessorDataToJson(ProcessorData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('default_card', instance.defaultCard);
  writeNotNull('default_ach', instance.defaultAch);
  writeNotNull('default_apm', instance.defaultApm);
  writeNotNull('default_cash', instance.defaultCash);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('tag', instance.tag);
  writeNotNull('status', instance.status);
  writeNotNull('settle_at', instance.settleAt);
  writeNotNull('max_daily', instance.maxDaily);
  writeNotNull('max_monthly', instance.maxMonthly);
  writeNotNull('payment_adj_type', instance.paymentAdjType);
  writeNotNull('payment_adj_val', instance.paymentAdjVal);
  writeNotNull('settings', instance.settings);
  writeNotNull('supported_payment_methods', instance.supportedPaymentMethods);
  writeNotNull('supported_currencies', instance.supportedCurrencies);
  return val;
}

ProcessorSettingsResponse _$ProcessorSettingsResponseFromJson(
    Map<String, dynamic> json) {
  return ProcessorSettingsResponse(
    json['tsys_sierra'] == null
        ? null
        : TsysSierraSettings.fromJson(
            json['tsys_sierra'] as Map<String, dynamic>),
    json['sage_ach'] == null
        ? null
        : SageACHSettings.fromJson(json['sage_ach'] as Map<String, dynamic>),
    json['house_ach'] == null
        ? null
        : HouseACHSettings.fromJson(json['house_ach'] as Map<String, dynamic>),
    json['achnow'] == null
        ? null
        : ACHNowSettings.fromJson(json['achnow'] as Map<String, dynamic>),
    json['achcom'] == null
        ? null
        : ACHCOMSettings.fromJson(json['achcom'] as Map<String, dynamic>),
    json['epx'] == null
        ? null
        : EPXSettings.fromJson(json['epx'] as Map<String, dynamic>),
    json['rapid_connect'] == null
        ? null
        : RapidConnectSettings.fromJson(
            json['rapid_connect'] as Map<String, dynamic>),
    json['cardpmt'] == null
        ? null
        : CardPMTSettings.fromJson(json['cardpmt'] as Map<String, dynamic>),
    json['nmi'] == null
        ? null
        : NMISettings.fromJson(json['nmi'] as Map<String, dynamic>),
    json['vantiv'] == null
        ? null
        : VantivSettings.fromJson(json['vantiv'] as Map<String, dynamic>),
    json['boltpay'] == null
        ? null
        : BoltPaySettings.fromJson(json['boltpay'] as Map<String, dynamic>),
    json['paymentxp'] == null
        ? null
        : PaymentXPSettings.fromJson(json['paymentxp'] as Map<String, dynamic>),
    json['paysafe_continuity'] == null
        ? null
        : PaysafeContinuitySettings.fromJson(
            json['paysafe_continuity'] as Map<String, dynamic>),
    json['realexpayments'] == null
        ? null
        : RealexPaymentsSettings.fromJson(
            json['realexpayments'] as Map<String, dynamic>),
    json['rapidiq'] == null
        ? null
        : RapidIQSettings.fromJson(json['rapidiq'] as Map<String, dynamic>),
    json['moneris'] == null
        ? null
        : MonerisSettings.fromJson(json['moneris'] as Map<String, dynamic>),
    json['mxmerchant'] == null
        ? null
        : MXMerchantSettings.fromJson(
            json['mxmerchant'] as Map<String, dynamic>),
    json['globalpayuc'] == null
        ? null
        : GlobalPayUCSettings.fromJson(
            json['globalpayuc'] as Map<String, dynamic>),
    json['mgiapm'] == null
        ? null
        : MGIAPMSettings.fromJson(json['mgiapm'] as Map<String, dynamic>),
    ProcessorSettingsResponse._parsePending(json['pending']),
    json['elavon'] == null
        ? null
        : ElavonSettings.fromJson(json['elavon'] as Map<String, dynamic>),
    ProcessorSettingsResponse._parseCash(json['cash']),
    json['payon'] == null
        ? null
        : PayonSettings.fromJson(json['payon'] as Map<String, dynamic>),
    json['consumer_choice'] == null
        ? null
        : ConsumerChoiceSettings.fromJson(
            json['consumer_choice'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProcessorSettingsResponseToJson(
    ProcessorSettingsResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('tsys_sierra', instance.tsysSierra);
  writeNotNull('sage_ach', instance.sageAch);
  writeNotNull('house_ach', instance.houseAch);
  writeNotNull('achnow', instance.achnow);
  writeNotNull('achcom', instance.achcom);
  writeNotNull('epx', instance.epx);
  writeNotNull('rapid_connect', instance.rapidConnect);
  writeNotNull('cardpmt', instance.cardpmt);
  writeNotNull('nmi', instance.nmi);
  writeNotNull('vantiv', instance.vantiv);
  writeNotNull('boltpay', instance.boltpay);
  writeNotNull('paymentxp', instance.paymentxp);
  writeNotNull('paysafe_continuity', instance.paysafeContinuity);
  writeNotNull('realexpayments', instance.realexpayments);
  writeNotNull('rapidiq', instance.rapidiq);
  writeNotNull('moneris', instance.moneris);
  writeNotNull('mxmerchant', instance.mxmerchant);
  writeNotNull('globalpayuc', instance.globalpayuc);
  writeNotNull('mgiapm', instance.mgiapm);
  writeNotNull('pending', instance.pending);
  writeNotNull('elavon', instance.elavon);
  writeNotNull('cash', instance.cash);
  writeNotNull('payon', instance.payon);
  writeNotNull('consumer_choice', instance.consumerChoice);
  return val;
}

TsysSierraSettings _$TsysSierraSettingsFromJson(Map<String, dynamic> json) {
  return TsysSierraSettings(
    bin: json['bin'] as String?,
    mid: json['mid'] as String?,
    agentBankNumber: json['agent_bank_number'] as String?,
    agentChainNumber: json['agent_chain_number'] as String?,
    storeNumber: json['store_number'] as String?,
    terminalNumber: json['terminal_number'] as String?,
    terminalIdentificationNumber:
        json['terminal_identification_number'] as String?,
    industryCode: json['industry_code'] as String?,
    currencyCode: json['currency_code'] as String?,
    countryCode: json['country_code'] as String?,
    cityCode: json['city_code'] as String?,
    languageIndicator: json['language_indicator'] as String?,
    timezone: json['timezone'] as String?,
    mcc: json['mcc'] as String?,
    merchantName: json['merchant_name'] as String?,
    merchantLocation: json['merchant_location'] as String?,
    merchantState: json['merchant_state'] as String?,
    merchantLocationNumber: json['merchant_location_number'] as String?,
    classification: json['classification'] as String?,
  );
}

Map<String, dynamic> _$TsysSierraSettingsToJson(TsysSierraSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bin', instance.bin);
  writeNotNull('mid', instance.mid);
  writeNotNull('agent_bank_number', instance.agentBankNumber);
  writeNotNull('agent_chain_number', instance.agentChainNumber);
  writeNotNull('store_number', instance.storeNumber);
  writeNotNull('terminal_number', instance.terminalNumber);
  writeNotNull(
      'terminal_identification_number', instance.terminalIdentificationNumber);
  writeNotNull('industry_code', instance.industryCode);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('city_code', instance.cityCode);
  writeNotNull('language_indicator', instance.languageIndicator);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('mcc', instance.mcc);
  writeNotNull('merchant_name', instance.merchantName);
  writeNotNull('merchant_location', instance.merchantLocation);
  writeNotNull('merchant_state', instance.merchantState);
  writeNotNull('merchant_location_number', instance.merchantLocationNumber);
  writeNotNull('classification', instance.classification);
  return val;
}

SageACHSettings _$SageACHSettingsFromJson(Map<String, dynamic> json) {
  return SageACHSettings(
    terminals: (json['terminals'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, SageACHTerminalSettings.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$SageACHSettingsToJson(SageACHSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('terminals', instance.terminals);
  return val;
}

HouseACHSettings _$HouseACHSettingsFromJson(Map<String, dynamic> json) {
  return HouseACHSettings(
    terminals: (json['terminals'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(
          k, HouseACHTerminalSettings.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$HouseACHSettingsToJson(HouseACHSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('terminals', instance.terminals);
  return val;
}

ACHNowSettings _$ACHNowSettingsFromJson(Map<String, dynamic> json) {
  return ACHNowSettings(
    username: json['username'] as String?,
    password: json['password'] as String?,
    enableVerification: json['enable_verification'] as bool?,
  );
}

Map<String, dynamic> _$ACHNowSettingsToJson(ACHNowSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('enable_verification', instance.enableVerification);
  return val;
}

ACHCOMSettings _$ACHCOMSettingsFromJson(Map<String, dynamic> json) {
  return ACHCOMSettings(
    token: json['token'] as String?,
    nachaID: json['nachaid'] as String?,
  );
}

Map<String, dynamic> _$ACHCOMSettingsToJson(ACHCOMSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  writeNotNull('nachaid', instance.nachaID);
  return val;
}

EPXSettings _$EPXSettingsFromJson(Map<String, dynamic> json) {
  return EPXSettings(
    customerNumber: json['customer_number'] as String?,
    merchantNumber: json['merchant_number'] as String?,
    dbaNumber: json['dba_number'] as String?,
    terminalNumber: json['terminal_number'] as String?,
    mcc: json['mcc'] as String?,
    classification: json['classification'] as String?,
    softDescriptor1: json['soft_descriptor_1'] as String?,
    softDescriptor2: json['soft_descriptor_2'] as String?,
  );
}

Map<String, dynamic> _$EPXSettingsToJson(EPXSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer_number', instance.customerNumber);
  writeNotNull('merchant_number', instance.merchantNumber);
  writeNotNull('dba_number', instance.dbaNumber);
  writeNotNull('terminal_number', instance.terminalNumber);
  writeNotNull('mcc', instance.mcc);
  writeNotNull('classification', instance.classification);
  writeNotNull('soft_descriptor_1', instance.softDescriptor1);
  writeNotNull('soft_descriptor_2', instance.softDescriptor2);
  return val;
}

RapidConnectSettings _$RapidConnectSettingsFromJson(Map<String, dynamic> json) {
  return RapidConnectSettings(
    merchantID: json['merchant_id'] as String?,
    groupID: json['group_id'] as String?,
    terminalID: json['terminal_id'] as String?,
    classification: json['classification'] as String?,
    did: json['did'] as String?,
    forceDev: json['force_dev'] as bool?,
    mcc: json['mcc'] as String?,
  );
}

Map<String, dynamic> _$RapidConnectSettingsToJson(
    RapidConnectSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchantID);
  writeNotNull('group_id', instance.groupID);
  writeNotNull('terminal_id', instance.terminalID);
  writeNotNull('classification', instance.classification);
  writeNotNull('did', instance.did);
  writeNotNull('force_dev', instance.forceDev);
  writeNotNull('mcc', instance.mcc);
  return val;
}

CardPMTSettings _$CardPMTSettingsFromJson(Map<String, dynamic> json) {
  return CardPMTSettings(
    username: json['username'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$CardPMTSettingsToJson(CardPMTSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  return val;
}

NMISettings _$NMISettingsFromJson(Map<String, dynamic> json) {
  return NMISettings(
    username: json['username'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$NMISettingsToJson(NMISettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  return val;
}

VantivSettings _$VantivSettingsFromJson(Map<String, dynamic> json) {
  return VantivSettings(
    merchantID: json['merchant_id'] as String?,
    reportGroup: json['report_group'] as String?,
  );
}

Map<String, dynamic> _$VantivSettingsToJson(VantivSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchantID);
  writeNotNull('report_group', instance.reportGroup);
  return val;
}

BoltPaySettings _$BoltPaySettingsFromJson(Map<String, dynamic> json) {
  return BoltPaySettings(
    merchantToken: json['merchant_token'] as String?,
    secretKey: json['secret_key'] as String?,
  );
}

Map<String, dynamic> _$BoltPaySettingsToJson(BoltPaySettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_token', instance.merchantToken);
  writeNotNull('secret_key', instance.secretKey);
  return val;
}

PaymentXPSettings _$PaymentXPSettingsFromJson(Map<String, dynamic> json) {
  return PaymentXPSettings(
    merchantID: json['merchant_id'] as String?,
    merchantKey: json['merchant_key'] as String?,
  );
}

Map<String, dynamic> _$PaymentXPSettingsToJson(PaymentXPSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchantID);
  writeNotNull('merchant_key', instance.merchantKey);
  return val;
}

PaysafeContinuitySettings _$PaysafeContinuitySettingsFromJson(
    Map<String, dynamic> json) {
  return PaysafeContinuitySettings(
    merchantID: json['merchant_id'] as String?,
    altKey: json['alt_key'] as String?,
    classification: json['classification'] as String?,
    mcc: json['mcc'] as String?,
    tangible: json['tangible'] as bool?,
    nonTangible: json['non_tangible'] as bool?,
    freeTrialContinuity: json['free_trial_continuity'] as bool?,
    continuityOnly: json['continuity_only'] as bool?,
    straightSale: json['straight_sale'] as bool?,
  );
}

Map<String, dynamic> _$PaysafeContinuitySettingsToJson(
    PaysafeContinuitySettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchantID);
  writeNotNull('alt_key', instance.altKey);
  writeNotNull('classification', instance.classification);
  writeNotNull('mcc', instance.mcc);
  writeNotNull('tangible', instance.tangible);
  writeNotNull('non_tangible', instance.nonTangible);
  writeNotNull('free_trial_continuity', instance.freeTrialContinuity);
  writeNotNull('continuity_only', instance.continuityOnly);
  writeNotNull('straight_sale', instance.straightSale);
  return val;
}

RealexPaymentsSettings _$RealexPaymentsSettingsFromJson(
    Map<String, dynamic> json) {
  return RealexPaymentsSettings(
    merchantID: json['merchant_id'] as String?,
    sharedSecret: json['shared_secret'] as String?,
    refundPassword: json['refund_password'] as String?,
  );
}

Map<String, dynamic> _$RealexPaymentsSettingsToJson(
    RealexPaymentsSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('merchant_id', instance.merchantID);
  writeNotNull('shared_secret', instance.sharedSecret);
  writeNotNull('refund_password', instance.refundPassword);
  return val;
}

RapidIQSettings _$RapidIQSettingsFromJson(Map<String, dynamic> json) {
  return RapidIQSettings(
    account: json['account'] as String?,
    password: json['password'] as String?,
  );
}

Map<String, dynamic> _$RapidIQSettingsToJson(RapidIQSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('account', instance.account);
  writeNotNull('password', instance.password);
  return val;
}

MonerisSettings _$MonerisSettingsFromJson(Map<String, dynamic> json) {
  return MonerisSettings(
    storeID: json['store_id'] as String?,
    apiToken: json['api_token'] as String?,
  );
}

Map<String, dynamic> _$MonerisSettingsToJson(MonerisSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('store_id', instance.storeID);
  writeNotNull('api_token', instance.apiToken);
  return val;
}

MXMerchantSettings _$MXMerchantSettingsFromJson(Map<String, dynamic> json) {
  return MXMerchantSettings(
    consumerKey: json['consumer_key'] as String?,
    consumerSecret: json['consumer_secret'] as String?,
    merchantID: json['merchant_id'] as String?,
  );
}

Map<String, dynamic> _$MXMerchantSettingsToJson(MXMerchantSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('consumer_key', instance.consumerKey);
  writeNotNull('consumer_secret', instance.consumerSecret);
  writeNotNull('merchant_id', instance.merchantID);
  return val;
}

GlobalPayUCSettings _$GlobalPayUCSettingsFromJson(Map<String, dynamic> json) {
  return GlobalPayUCSettings(
    appID: json['app_id'] as String?,
    appKey: json['app_key'] as String?,
  );
}

Map<String, dynamic> _$GlobalPayUCSettingsToJson(GlobalPayUCSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('app_id', instance.appID);
  writeNotNull('app_key', instance.appKey);
  return val;
}

MGIAPMSettings _$MGIAPMSettingsFromJson(Map<String, dynamic> json) {
  return MGIAPMSettings(
    contractID: json['contract_id'] as String?,
    paymentMethods: (json['payment_methods'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, MGIAPMDetails.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$MGIAPMSettingsToJson(MGIAPMSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contract_id', instance.contractID);
  writeNotNull('payment_methods', instance.paymentMethods);
  return val;
}

PendingSettings _$PendingSettingsFromJson(Map<String, dynamic> json) {
  return PendingSettings();
}

Map<String, dynamic> _$PendingSettingsToJson(PendingSettings instance) =>
    <String, dynamic>{};

ElavonSettings _$ElavonSettingsFromJson(Map<String, dynamic> json) {
  return ElavonSettings(
    mid: json['mid'] as String?,
    tid: json['tid'] as String?,
    bankID: json['bank_id'] as String?,
    classification: json['classification'] as String?,
    deviceTag: json['device_tag'] as String?,
    merchantCurrency: json['merchant_currency'] as String?,
    mcc: json['mcc'] as String?,
    multiCurrencyConversionEnabled:
        json['multi_currency_conversion_enabled'] as bool?,
  );
}

Map<String, dynamic> _$ElavonSettingsToJson(ElavonSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('mid', instance.mid);
  writeNotNull('tid', instance.tid);
  writeNotNull('bank_id', instance.bankID);
  writeNotNull('classification', instance.classification);
  writeNotNull('device_tag', instance.deviceTag);
  writeNotNull('merchant_currency', instance.merchantCurrency);
  writeNotNull('mcc', instance.mcc);
  writeNotNull('multi_currency_conversion_enabled',
      instance.multiCurrencyConversionEnabled);
  return val;
}

CashSettings _$CashSettingsFromJson(Map<String, dynamic> json) {
  return CashSettings();
}

Map<String, dynamic> _$CashSettingsToJson(CashSettings instance) =>
    <String, dynamic>{};

PayonSettings _$PayonSettingsFromJson(Map<String, dynamic> json) {
  return PayonSettings(
    entityID: json['entityID'] as String?,
    token: json['token'] as String?,
  );
}

Map<String, dynamic> _$PayonSettingsToJson(PayonSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('entityID', instance.entityID);
  writeNotNull('token', instance.token);
  return val;
}

SageACHTerminalSettings _$SageACHTerminalSettingsFromJson(
    Map<String, dynamic> json) {
  return SageACHTerminalSettings(
    secCode: json['sec_code'] as String?,
    type: json['type'] as String?,
    dlRequired: json['dl_required'] as bool?,
    idRequired: json['id_required'] as bool?,
    checkVerification: json['check_verification'] as bool?,
    isGatewayTerminal: json['is_gateway_terminal'] as bool?,
    allowCredits: json['allow_credits'] as bool?,
    checkLimit: json['check_limit'] as int?,
  );
}

Map<String, dynamic> _$SageACHTerminalSettingsToJson(
    SageACHTerminalSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sec_code', instance.secCode);
  writeNotNull('type', instance.type);
  writeNotNull('dl_required', instance.dlRequired);
  writeNotNull('id_required', instance.idRequired);
  writeNotNull('check_verification', instance.checkVerification);
  writeNotNull('is_gateway_terminal', instance.isGatewayTerminal);
  writeNotNull('allow_credits', instance.allowCredits);
  writeNotNull('check_limit', instance.checkLimit);
  return val;
}

HouseACHTerminalSettings _$HouseACHTerminalSettingsFromJson(
    Map<String, dynamic> json) {
  return HouseACHTerminalSettings(
    secCode: json['sec_code'] as String?,
    type: json['type'] as String?,
    dlRequired: json['dl_required'] as bool?,
    idRequired: json['id_required'] as bool?,
    checkVerification: json['check_verification'] as bool?,
    isGatewayTerminal: json['is_gateway_terminal'] as bool?,
    allowCredits: json['allow_credits'] as bool?,
    checkLimit: json['check_limit'] as int?,
  );
}

Map<String, dynamic> _$HouseACHTerminalSettingsToJson(
    HouseACHTerminalSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('sec_code', instance.secCode);
  writeNotNull('type', instance.type);
  writeNotNull('dl_required', instance.dlRequired);
  writeNotNull('id_required', instance.idRequired);
  writeNotNull('check_verification', instance.checkVerification);
  writeNotNull('is_gateway_terminal', instance.isGatewayTerminal);
  writeNotNull('allow_credits', instance.allowCredits);
  writeNotNull('check_limit', instance.checkLimit);
  return val;
}

MGIAPMDetails _$MGIAPMDetailsFromJson(Map<String, dynamic> json) {
  return MGIAPMDetails(
    displayName: json['display_name'] as String?,
    supportedCurrencies: (json['supported_currencies'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    supportedCountries: (json['supported_countries'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$MGIAPMDetailsToJson(MGIAPMDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('display_name', instance.displayName);
  writeNotNull('supported_currencies', instance.supportedCurrencies);
  writeNotNull('supported_countries', instance.supportedCountries);
  return val;
}

ConsumerChoiceSettings _$ConsumerChoiceSettingsFromJson(
    Map<String, dynamic> json) {
  return ConsumerChoiceSettings(
    bin: json['bin'] as String?,
    mid: json['mid'] as String?,
    mvv: json['mvv'] as String?,
    agentBankNumber: json['agent_bank_number'] as String?,
    agentChainNumber: json['agent_chain_number'] as String?,
    storeNumber: json['store_number'] as String?,
    terminalNumber: json['terminal_number'] as String?,
    terminalIdentificationNumber:
        json['terminal_identification_number'] as String?,
    industryCode: json['industry_code'] as String?,
    currencyCode: json['currency_code'] as String?,
    countryCode: json['country_code'] as String?,
    cityCode: json['city_code'] as String?,
    languageIndicator: json['language_indicator'] as String?,
    timezone: json['timezone'] as String?,
    mcc: json['mcc'] as String?,
    merchantName: json['merchant_name'] as String?,
    merchantLocation: json['merchant_location'] as String?,
    merchantState: json['merchant_state'] as String?,
    merchantLocationNumber: json['merchant_location_number'] as String?,
    classification: json['classification'] as String?,
    username: json['username'] as String?,
    password: json['password'] as String?,
    clientID: json['client_id'] as String?,
  );
}

Map<String, dynamic> _$ConsumerChoiceSettingsToJson(
    ConsumerChoiceSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('bin', instance.bin);
  writeNotNull('mid', instance.mid);
  writeNotNull('mvv', instance.mvv);
  writeNotNull('agent_bank_number', instance.agentBankNumber);
  writeNotNull('agent_chain_number', instance.agentChainNumber);
  writeNotNull('store_number', instance.storeNumber);
  writeNotNull('terminal_number', instance.terminalNumber);
  writeNotNull(
      'terminal_identification_number', instance.terminalIdentificationNumber);
  writeNotNull('industry_code', instance.industryCode);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('city_code', instance.cityCode);
  writeNotNull('language_indicator', instance.languageIndicator);
  writeNotNull('timezone', instance.timezone);
  writeNotNull('mcc', instance.mcc);
  writeNotNull('merchant_name', instance.merchantName);
  writeNotNull('merchant_location', instance.merchantLocation);
  writeNotNull('merchant_state', instance.merchantState);
  writeNotNull('merchant_location_number', instance.merchantLocationNumber);
  writeNotNull('classification', instance.classification);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('client_id', instance.clientID);
  return val;
}
