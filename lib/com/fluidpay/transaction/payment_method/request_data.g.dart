// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AmountsFlags _$AmountsFlagsFromJson(Map<String, dynamic> json) => AmountsFlags(
      skipCashDiscount: json['skip_cash_discount'] as bool? ?? false,
      skipSurcharge: json['skip_surcharge'] as bool? ?? false,
      skipServiceFee: json['skip_service_fee'] as bool? ?? false,
      skipConsumerChoice: json['skip_consumer_choice'] as bool? ?? false,
      includeDefaultTaxToTotal: json['include_default_tax_to_total'] as bool?,
      taxExempt: json['tax_exempt'] as bool?,
      processorSurchargeFallback:
          json['processor_surcharge_fallback'] as bool? ?? false,
      addTaxToTotal: json['add_tax_to_total'] as bool?,
    );

Map<String, dynamic> _$AmountsFlagsToJson(AmountsFlags instance) =>
    <String, dynamic>{
      'skip_cash_discount': instance.skipCashDiscount,
      'skip_surcharge': instance.skipSurcharge,
      'skip_service_fee': instance.skipServiceFee,
      'skip_consumer_choice': instance.skipConsumerChoice,
      'include_default_tax_to_total': instance.includeDefaultTaxToTotal,
      'tax_exempt': instance.taxExempt,
      'processor_surcharge_fallback': instance.processorSurchargeFallback,
      'add_tax_to_total': instance.addTaxToTotal,
    };

PaymentMethodRequest _$PaymentMethodRequestFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodRequest(
      card: json['card'] == null
          ? null
          : CreditCardRequest.fromJson(json['card'] as Map<String, dynamic>),
      ach: json['ach'] == null
          ? null
          : ACHRequest.fromJson(json['ach'] as Map<String, dynamic>),
      customer: json['customer'] == null
          ? null
          : CustomerTransactionRequest.fromJson(
              json['customer'] as Map<String, dynamic>),
      terminal: json['terminal'] == null
          ? null
          : TerminalTransactionRequest.fromJson(
              json['terminal'] as Map<String, dynamic>),
      token: json['token'] as String?,
      applePayToken: json['apple_pay_token'] == null
          ? null
          : ApplePayTokenRequest.fromJson(
              json['apple_pay_token'] as Map<String, dynamic>),
      apm: json['apm'] == null
          ? null
          : APMRequest.fromJson(json['apm'] as Map<String, dynamic>),
      plaid: json['plaid'] == null
          ? null
          : PlaidRequest.fromJson(json['plaid'] as Map<String, dynamic>),
      cash: json['cash'] == null
          ? null
          : CashRequest.fromJson(json['cash'] as Map<String, dynamic>),
      emv: json['emv'] == null
          ? null
          : EMVRequest.fromJson(json['emv'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodRequestToJson(
        PaymentMethodRequest instance) =>
    <String, dynamic>{
      'card': instance.card,
      'ach': instance.ach,
      'customer': instance.customer,
      'terminal': instance.terminal,
      'token': instance.token,
      'apple_pay_token': instance.applePayToken,
      'apm': instance.apm,
      'plaid': instance.plaid,
      'cash': instance.cash,
      'emv': instance.emv,
    };

CalculateAmountsRequest _$CalculateAmountsRequestFromJson(
        Map<String, dynamic> json) =>
    CalculateAmountsRequest(
      type: json['type'] as String?,
      typeID: json['type_i_d'] as String?,
      processorID: json['processor_i_d'] as String?,
      paymentMethod: json['payment_method'] as String?,
      ccBin: json['cc_bin'] as String?,
      state: json['state'] as String?,
      base: (json['base'] as num?)?.toInt(),
      shipping: (json['shipping'] as num?)?.toInt(),
      taxRate: (json['tax_rate'] as num?)?.toDouble(),
      currency: json['currency'] as String?,
      paymentAdj: json['payment_adj'] == null
          ? null
          : PaymentAdjustmentRequest.fromJson(
              json['payment_adj'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => CalculateItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      settings: json['settings'] == null
          ? null
          : CalculateSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      subtotal: (json['subtotal'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      taxOverrideAmount: json['tax_override_amount'] == null
          ? null
          : TypedValue.fromJson(
              json['tax_override_amount'] as Map<String, dynamic>),
      shippingAmount: json['shipping_amount'] == null
          ? null
          : TypedValue.fromJson(
              json['shipping_amount'] as Map<String, dynamic>),
      addonAmount: (json['addon_amount'] as List<dynamic>?)
          ?.map((e) => TypedValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      discountAmount: (json['discount_amount'] as List<dynamic>?)
          ?.map((e) => TypedValue.fromJson(e as Map<String, dynamic>))
          .toList(),
      dutyAmount: json['duty_amount'] == null
          ? null
          : TypedValue.fromJson(json['duty_amount'] as Map<String, dynamic>),
      tipAmount: json['tip_amount'] == null
          ? null
          : TypedValue.fromJson(json['tip_amount'] as Map<String, dynamic>),
      nationalTaxAmount: json['national_tax_amount'] == null
          ? null
          : TypedValue.fromJson(
              json['national_tax_amount'] as Map<String, dynamic>),
      localTaxAmount: json['local_tax_amount'] == null
          ? null
          : TypedValue.fromJson(
              json['local_tax_amount'] as Map<String, dynamic>),
      serviceFee: json['service_fee'] == null
          ? null
          : TypedValue.fromJson(json['service_fee'] as Map<String, dynamic>),
      surcharge: json['surcharge'] == null
          ? null
          : TypedValue.fromJson(json['surcharge'] as Map<String, dynamic>),
      flags: json['flags'] == null
          ? null
          : AmountsFlags.fromJson(json['flags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CalculateAmountsRequestToJson(
        CalculateAmountsRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'type_i_d': instance.typeID,
      'processor_i_d': instance.processorID,
      'payment_method': instance.paymentMethod,
      'cc_bin': instance.ccBin,
      'state': instance.state,
      'line_items': instance.lineItems,
      'subtotal': instance.subtotal,
      'amount': instance.amount,
      'tax_override_amount': instance.taxOverrideAmount,
      'shipping_amount': instance.shippingAmount,
      'addon_amount': instance.addonAmount,
      'discount_amount': instance.discountAmount,
      'duty_amount': instance.dutyAmount,
      'tip_amount': instance.tipAmount,
      'national_tax_amount': instance.nationalTaxAmount,
      'local_tax_amount': instance.localTaxAmount,
      'service_fee': instance.serviceFee,
      'surcharge': instance.surcharge,
      'base': instance.base,
      'shipping': instance.shipping,
      'tax_rate': instance.taxRate,
      'currency': instance.currency,
      'payment_adj': instance.paymentAdj,
      'items': instance.items,
      'settings': instance.settings,
      'flags': instance.flags,
    };

CalculateFeesRequest _$CalculateFeesRequestFromJson(
        Map<String, dynamic> json) =>
    CalculateFeesRequest(
      type: json['type'] as String?,
      typeID: json['type_id'] as String?,
      state: json['state'] as String?,
      bin: json['bin'] as String?,
      paymentMethod: json['payment_method'] as String?,
      baseAmount: (json['base_amount'] as num?)?.toInt(),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      tax: (json['tax'] as num?)?.toInt(),
      processorID: json['processor_id'] as String?,
      surcharge: json['surcharge'] == null
          ? null
          : PaymentAdjustmentRequest.fromJson(
              json['surcharge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CalculateFeesRequestToJson(
        CalculateFeesRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'type_id': instance.typeID,
      'state': instance.state,
      'bin': instance.bin,
      'payment_method': instance.paymentMethod,
      'base_amount': instance.baseAmount,
      'line_items': instance.lineItems,
      'tax': instance.tax,
      'processor_id': instance.processorID,
      'surcharge': instance.surcharge,
    };

CalculateSettings _$CalculateSettingsFromJson(Map<String, dynamic> json) =>
    CalculateSettings(
      cashDiscount: json['cash_discount'] as String?,
      surcharge: json['surcharge'] as String?,
      consumerChoice: json['consumer_choice'] as String?,
    );

Map<String, dynamic> _$CalculateSettingsToJson(CalculateSettings instance) =>
    <String, dynamic>{
      'cash_discount': instance.cashDiscount,
      'surcharge': instance.surcharge,
      'consumer_choice': instance.consumerChoice,
    };

CalculateItem _$CalculateItemFromJson(Map<String, dynamic> json) =>
    CalculateItem(
      qty: (json['qty'] as num?)?.toInt(),
      base: (json['base'] as num?)?.toInt(),
      local_tax: (json['local_tax'] as num?)?.toDouble(),
      national_tax: (json['national_tax'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CalculateItemToJson(CalculateItem instance) =>
    <String, dynamic>{
      'qty': instance.qty,
      'base': instance.base,
      'local_tax': instance.local_tax,
      'national_tax': instance.national_tax,
    };

PaymentAdjustmentRequest _$PaymentAdjustmentRequestFromJson(
        Map<String, dynamic> json) =>
    PaymentAdjustmentRequest(
      value: (json['value'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$PaymentAdjustmentRequestToJson(
        PaymentAdjustmentRequest instance) =>
    <String, dynamic>{
      'value': instance.value,
      'type': instance.type,
    };

CreditCardRequest _$CreditCardRequestFromJson(Map<String, dynamic> json) =>
    CreditCardRequest(
      entryType: json['entry_type'] as String?,
      number: json['number'] as String?,
      expirationDate: json['expiration_date'] as String?,
      cvc: json['cvc'] as String?,
      track1: json['track_1'] as String?,
      track2: json['track_2'] as String?,
      encryptedTrack1: json['encrypted_track_1'] as String?,
      encryptedTrack2: json['encrypted_track_2'] as String?,
      ksn: json['ksn'] as String?,
      encryptedData: json['encrypted_data'] as String?,
      cardholderAuthentication: json['cardholder_authentication'] == null
          ? null
          : CardholderAuthenticationRequest.fromJson(
              json['cardholder_authentication'] as Map<String, dynamic>),
      cardPresent: json['card_present'] as String?,
      signatureData: json['signature_data'] as String?,
    );

Map<String, dynamic> _$CreditCardRequestToJson(CreditCardRequest instance) =>
    <String, dynamic>{
      'entry_type': instance.entryType,
      'number': instance.number,
      'expiration_date': instance.expirationDate,
      'cvc': instance.cvc,
      'track_1': instance.track1,
      'track_2': instance.track2,
      'encrypted_track_1': instance.encryptedTrack1,
      'encrypted_track_2': instance.encryptedTrack2,
      'ksn': instance.ksn,
      'encrypted_data': instance.encryptedData,
      'cardholder_authentication': instance.cardholderAuthentication,
      'card_present': instance.cardPresent,
      'signature_data': instance.signatureData,
    };

CardholderAuthenticationRequest _$CardholderAuthenticationRequestFromJson(
        Map<String, dynamic> json) =>
    CardholderAuthenticationRequest(
      eci: json['eci'] as String?,
      cavv: json['cavv'] as String?,
      xid: json['xid'] as String?,
      version: json['version'] as String?,
      dsTransactionId: json['ds_transaction_id'] as String?,
      acsTransactionId: json['acs_transaction_id'] as String?,
    );

Map<String, dynamic> _$CardholderAuthenticationRequestToJson(
        CardholderAuthenticationRequest instance) =>
    <String, dynamic>{
      'eci': instance.eci,
      'cavv': instance.cavv,
      'xid': instance.xid,
      'version': instance.version,
      'ds_transaction_id': instance.dsTransactionId,
      'acs_transaction_id': instance.acsTransactionId,
    };

ACHRequest _$ACHRequestFromJson(Map<String, dynamic> json) => ACHRequest(
      routingNumber: json['routing_number'] as String?,
      accountNumber: json['account_number'] as String?,
      accountType: json['account_type'] as String?,
      secCode: json['sec_code'] as String?,
      checkNumber: json['check_number'] as String?,
      accountHolderAuthentication: json['accountholder_authentication'] == null
          ? null
          : ACHAuthenticationRequest.fromJson(
              json['accountholder_authentication'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ACHRequestToJson(ACHRequest instance) =>
    <String, dynamic>{
      'routing_number': instance.routingNumber,
      'account_number': instance.accountNumber,
      'account_type': instance.accountType,
      'sec_code': instance.secCode,
      'check_number': instance.checkNumber,
      'accountholder_authentication': instance.accountHolderAuthentication,
    };

ACHAuthenticationRequest _$ACHAuthenticationRequestFromJson(
        Map<String, dynamic> json) =>
    ACHAuthenticationRequest(
      dlState: json['dl_state'] as String?,
      dlNumber: json['dl_number'] as String?,
      ssn4: json['ssn4'] as String?,
      dobYear: json['dob_year'] as String?,
    );

Map<String, dynamic> _$ACHAuthenticationRequestToJson(
        ACHAuthenticationRequest instance) =>
    <String, dynamic>{
      'dl_state': instance.dlState,
      'dl_number': instance.dlNumber,
      'ssn4': instance.ssn4,
      'dob_year': instance.dobYear,
    };

CustomerTransactionRequest _$CustomerTransactionRequestFromJson(
        Map<String, dynamic> json) =>
    CustomerTransactionRequest(
      id: json['id'] as String?,
      sourceMerchantId: json['source_merchant_id'] as String?,
      paymentMethodType: json['payment_method_type'] as String?,
      paymentMethodId: json['payment_method_id'] as String?,
      billingAddressId: json['billing_address_id'] as String?,
      shippingAddressId: json['shipping_address_id'] as String?,
      cvc: json['cvc'] as String?,
      terminalId: json['terminal_id'] as String?,
    );

Map<String, dynamic> _$CustomerTransactionRequestToJson(
        CustomerTransactionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source_merchant_id': instance.sourceMerchantId,
      'payment_method_type': instance.paymentMethodType,
      'payment_method_id': instance.paymentMethodId,
      'billing_address_id': instance.billingAddressId,
      'shipping_address_id': instance.shippingAddressId,
      'cvc': instance.cvc,
      'terminal_id': instance.terminalId,
    };

TerminalTransactionRequest _$TerminalTransactionRequestFromJson(
        Map<String, dynamic> json) =>
    TerminalTransactionRequest(
      id: json['id'] as String?,
      expirationDate: json['expiration_date'] as String?,
      cvc: json['cvc'] as String?,
      printReceipt: json['print_receipt'] as String?,
      signatureRequired: json['signature_required'] as bool?,
      clerkId: (json['clerk_id'] as num?)?.toInt(),
      debit: json['debit'] as bool?,
      ebt: json['ebt'] as String?,
      traceNum: json['trace_num'] as String?,
      hostToken: json['host_token'] as String?,
    );

Map<String, dynamic> _$TerminalTransactionRequestToJson(
        TerminalTransactionRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'expiration_date': instance.expirationDate,
      'cvc': instance.cvc,
      'print_receipt': instance.printReceipt,
      'signature_required': instance.signatureRequired,
      'clerk_id': instance.clerkId,
      'debit': instance.debit,
      'ebt': instance.ebt,
      'trace_num': instance.traceNum,
      'host_token': instance.hostToken,
    };

APMRequest _$APMRequestFromJson(Map<String, dynamic> json) => APMRequest(
      type: json['type'] as String?,
      sellingPoint: json['selling_point'] as String?,
      soldService: json['sold_service'] as String?,
      merchantRedirectUrl: json['merchant_redirect_url'] as String?,
      locale: json['locale'] as String?,
      mobileView: json['mobile_view'] as bool?,
      nationalId: json['national_id'] as String?,
      consumerRef: json['consumer_ref'] as String?,
      logoUrl: json['logo_url'] as String?,
      hppTitle: json['hpp_title'] as String?,
      preferredLanguage: json['preferred_language'] as String?,
    );

Map<String, dynamic> _$APMRequestToJson(APMRequest instance) =>
    <String, dynamic>{
      'type': instance.type,
      'selling_point': instance.sellingPoint,
      'sold_service': instance.soldService,
      'merchant_redirect_url': instance.merchantRedirectUrl,
      'locale': instance.locale,
      'mobile_view': instance.mobileView,
      'national_id': instance.nationalId,
      'consumer_ref': instance.consumerRef,
      'logo_url': instance.logoUrl,
      'hpp_title': instance.hppTitle,
      'preferred_language': instance.preferredLanguage,
    };

PlaidRequest _$PlaidRequestFromJson(Map<String, dynamic> json) => PlaidRequest(
      refId: json['ref_id'] as String?,
      accountId: json['account_id'] as String?,
    );

Map<String, dynamic> _$PlaidRequestToJson(PlaidRequest instance) =>
    <String, dynamic>{
      'ref_id': instance.refId,
      'account_id': instance.accountId,
    };

CashRequest _$CashRequestFromJson(Map<String, dynamic> json) => CashRequest();

Map<String, dynamic> _$CashRequestToJson(CashRequest instance) =>
    <String, dynamic>{};

EMVRequest _$EMVRequestFromJson(Map<String, dynamic> json) => EMVRequest(
      deviceType: json['device_type'] as String?,
      deviceSerialNumber: json['device_serial_number'] as String?,
      ksn: json['ksn'] as String?,
      tlvData: (json['tlv_data'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$EMVRequestToJson(EMVRequest instance) =>
    <String, dynamic>{
      'device_type': instance.deviceType,
      'device_serial_number': instance.deviceSerialNumber,
      'ksn': instance.ksn,
      'tlv_data': instance.tlvData,
    };
