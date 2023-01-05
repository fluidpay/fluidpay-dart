// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    id: json['id'] as String?,
    firstName: json['first_name'] as String?,
    lastName: json['last_name'] as String?,
    company: json['company'] as String?,
    addressLine1: json['address_line_1'] as String?,
    addressLine2: json['address_line_2'] as String?,
    city: json['city'] as String?,
    state: json['state'] as String?,
    postalCode: json['postal_code'] as String?,
    country: json['country'] as String?,
    phone: json['phone'] as String?,
    fax: json['fax'] as String?,
    email: json['email'] as String?,
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address_line_1', instance.addressLine1);
  writeNotNull('address_line_2', instance.addressLine2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postal_code', instance.postalCode);
  writeNotNull('country', instance.country);
  writeNotNull('phone', instance.phone);
  writeNotNull('fax', instance.fax);
  writeNotNull('email', instance.email);
  return val;
}

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) {
  return BillingDetails(
    ACHDetails.fromJson(json['ach'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BillingDetailsToJson(BillingDetails instance) =>
    <String, dynamic>{
      'ach': instance.achDetails,
    };

ACHDetails _$ACHDetailsFromJson(Map<String, dynamic> json) {
  return ACHDetails(
    type: json['type'] as String?,
    routingNumber: json['routing_number'] as String?,
    accountNumber: json['account_number'] as String?,
    maskedAccountNumber: json['masked_account_number'] as String?,
    accountType: json['account_type'] as String?,
  );
}

Map<String, dynamic> _$ACHDetailsToJson(ACHDetails instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('type', instance.type);
  writeNotNull('routing_number', instance.routingNumber);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('masked_account_number', instance.maskedAccountNumber);
  writeNotNull('account_type', instance.accountType);
  return val;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return Permissions(
    supportBlindCredits: json['support_blind_credits'] as bool?,
    allowRuleEngineAccess: json['allow_rule_engine_access'] as bool?,
    allowInvoiceAccess: json['allow_invoice_access'] as bool?,
    allowCustomerVaultAccess: json['allow_customer_vault_access'] as bool?,
    allowRecurringBilling_access:
        json['allow_recurring_billing_access'] as bool?,
    allowCart_access: json['allow_cart_access'] as bool?,
    allowDeveloperHubLink: json['allow_developer_hub_link'] as bool?,
    allowAdvancedFields: json['allow_advanced_fields'] as bool?,
    enableTerminalDebitTransactions:
        json['enable_terminal_debit_transactions'] as bool?,
    allowDefaultsPopulation: json['allow_defaults_population'] as bool?,
    allowBillingAccess: json['allow_billing_access'] as bool?,
    allowDashboardStats: json['allow_dashboard_stats'] as bool?,
    allowFileBatch: json['allow_file_batch'] as bool?,
    allowCardSync: json['allow_card_sync'] as bool?,
    allowIbxBinLookup: json['allow_ibx_bin_lookup'] as bool?,
    allowSurcharge: json['allow_surcharge'] as bool?,
    allowMidigator: json['allow_midigator'] as bool?,
    allowAdvancedRuleEngineFeatures:
        json['allow_advanced_rule_engine_features'] as bool?,
    allowConsumerChoice: json['allow_consumer_choice'] as bool?,
  );
}

Map<String, dynamic> _$PermissionsToJson(Permissions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('support_blind_credits', instance.supportBlindCredits);
  writeNotNull('allow_rule_engine_access', instance.allowRuleEngineAccess);
  writeNotNull('allow_invoice_access', instance.allowInvoiceAccess);
  writeNotNull(
      'allow_customer_vault_access', instance.allowCustomerVaultAccess);
  writeNotNull(
      'allow_recurring_billing_access', instance.allowRecurringBilling_access);
  writeNotNull('allow_cart_access', instance.allowCart_access);
  writeNotNull('allow_developer_hub_link', instance.allowDeveloperHubLink);
  writeNotNull('allow_advanced_fields', instance.allowAdvancedFields);
  writeNotNull('enable_terminal_debit_transactions',
      instance.enableTerminalDebitTransactions);
  writeNotNull('allow_defaults_population', instance.allowDefaultsPopulation);
  writeNotNull('allow_billing_access', instance.allowBillingAccess);
  writeNotNull('allow_dashboard_stats', instance.allowDashboardStats);
  writeNotNull('allow_file_batch', instance.allowFileBatch);
  writeNotNull('allow_card_sync', instance.allowCardSync);
  writeNotNull('allow_ibx_bin_lookup', instance.allowIbxBinLookup);
  writeNotNull('allow_surcharge', instance.allowSurcharge);
  writeNotNull('allow_midigator', instance.allowMidigator);
  writeNotNull('allow_advanced_rule_engine_features',
      instance.allowAdvancedRuleEngineFeatures);
  writeNotNull('allow_consumer_choice', instance.allowConsumerChoice);
  return val;
}

AdminFlags _$AdminFlagsFromJson(Map<String, dynamic> json) {
  return AdminFlags(
    perProcessorBilling: json['per_processor_billing'] as bool?,
    cashDiscountEnabled: json['cash_discount_enabled'] as bool?,
    surchargeEnabled: json['surcharge_enabled'] as bool?,
    splitPaymentAdjustment: json['split_payment_adjustment'] as bool?,
    surchargeFallback: json['surcharge_fallback'] as bool?,
    genericCashDiscount: json['generic_cash_discount'] as bool?,
    skipBilling: json['skip_billing'] as bool?,
    itFallback: json['it_fallback'] as bool?,
    tokenLocking: json['token_locking'] as bool?,
  );
}

Map<String, dynamic> _$AdminFlagsToJson(AdminFlags instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('per_processor_billing', instance.perProcessorBilling);
  writeNotNull('cash_discount_enabled', instance.cashDiscountEnabled);
  writeNotNull('surcharge_enabled', instance.surchargeEnabled);
  writeNotNull('split_payment_adjustment', instance.splitPaymentAdjustment);
  writeNotNull('surcharge_fallback', instance.surchargeFallback);
  writeNotNull('generic_cash_discount', instance.genericCashDiscount);
  writeNotNull('skip_billing', instance.skipBilling);
  writeNotNull('it_fallback', instance.itFallback);
  writeNotNull('token_locking', instance.tokenLocking);
  return val;
}

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return Services(
    id: json['id'] as String?,
    type: json['type'] as String?,
    status: json['status'] as String?,
    data: json['data'],
    createdAt: json['created_at'] as String?,
    updatedAt: json['updated_at'] as String?,
    activatedAt: json['activated_at'] as String?,
    deactivatedAt: json['deactivated_at'] as String?,
    agreementUrl: json['agreement_url'] as String?,
  );
}

Map<String, dynamic> _$ServicesToJson(Services instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('type', instance.type);
  writeNotNull('status', instance.status);
  writeNotNull('data', instance.data);
  writeNotNull('created_at', instance.createdAt);
  writeNotNull('updated_at', instance.updatedAt);
  writeNotNull('activated_at', instance.activatedAt);
  writeNotNull('deactivated_at', instance.deactivatedAt);
  writeNotNull('agreement_url', instance.agreementUrl);
  return val;
}

Requireds _$RequiredsFromJson(Map<String, dynamic> json) {
  return Requireds(
    def: json['default'] as String?,
    type: json['type'] as String?,
    taxExempt: json['tax_exempt'] as String?,
    currency: json['currency'] as String?,
    description: json['description'] as String?,
    orderId: json['order_id'] as String?,
    poNumber: json['po_number'] as String?,
    ipAddress: json['ip_address'] as String?,
    emailReceipt: json['email_receipt'] as String?,
    emailAddress: json['email_address'] as String?,
    processorId: json['processor_id'] as String?,
    allowPartialPayment: json['allow_partial_payment'] as String?,
    createVaultRecord: json['create_vault_record'] as String?,
    vendorId: json['vendor_id'] as String?,
    amount: json['amount'] as String?,
    taxAmount: json['tax_amount'] as String?,
    shippingAmount: json['shipping_amount'] as String?,
    discountAmount: json['discount_amount'] as String?,
    paymentAdjustment: json['payment_adjustment'] as String?,
    paymentMethodCard: json['payment_method_card'] as String?,
    paymentMethodAch: json['payment_method_ach'] as String?,
    paymentMethodTerminal: json['payment_method_terminal'] as String?,
    paymentMethodCustomerToken:
        json['payment_method_customer_token'] as String?,
    paymentMethodCardCvc: json['payment_method_card_cvc'] as String?,
    billingFirstName: json['billing_first_name'] as String?,
    billingLastName: json['billing_last_name'] as String?,
    billingCompany: json['billing_company'] as String?,
    billingAddressLine1: json['billing_address_line_1'] as String?,
    billingAddressLine2: json['billing_address_line_2'] as String?,
    billingCity: json['billing_city'] as String?,
    billingState: json['billing_state'] as String?,
    billingPostalCode: json['billing_postal_code'] as String?,
    billingCountry: json['billing_country'] as String?,
    billingEmail: json['billing_email'] as String?,
    billingPhone: json['billing_phone'] as String?,
    billingFax: json['billing_fax'] as String?,
    shippingFirstName: json['shipping_first_name'] as String?,
    shippingLastName: json['shipping_last_name'] as String?,
    shippingCompany: json['shipping_company'] as String?,
    shippingAddressLine1: json['shipping_address_line_1'] as String?,
    shippingAddressLine2: json['shipping_address_line_2'] as String?,
    shippingCity: json['shipping_city'] as String?,
    shippingState: json['shipping_state'] as String?,
    shippingPostalCode: json['shipping_postal_code'] as String?,
    shippingCountry: json['shipping_country'] as String?,
    shippingEmail: json['shipping_email'] as String?,
    shippingPhone: json['shipping_phone'] as String?,
    shippingFax: json['shipping_fax'] as String?,
    nationalTaxAmount: json['national_tax_amount'] as String?,
    dutyAmount: json['duty_amount'] as String?,
    shipFromPostalCode: json['ship_from_postal_code'] as String?,
    summaryCommodityCode: json['summary_commodity_code'] as String?,
    merchantVatRegistrationNumber:
        json['merchant_vat_registration_number'] as String?,
    customerVatRegistrationNumber:
        json['customer_vat_registration_number'] as String?,
    driversLicense: json['drivers_license'] as String?,
    socialSecurityNumberLast4: json['social_security_number_last_4'] as String?,
  )
    ..driversLicenseState = json['drivers_license_state'] as String?
    ..dateOfBirth = json['date_of_birth'] as String?
    ..guaranty = json['guaranty'] as String?;
}

Map<String, dynamic> _$RequiredsToJson(Requireds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('default', instance.def);
  writeNotNull('type', instance.type);
  writeNotNull('tax_exempt', instance.taxExempt);
  writeNotNull('currency', instance.currency);
  writeNotNull('description', instance.description);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('po_number', instance.poNumber);
  writeNotNull('ip_address', instance.ipAddress);
  writeNotNull('email_receipt', instance.emailReceipt);
  writeNotNull('email_address', instance.emailAddress);
  writeNotNull('processor_id', instance.processorId);
  writeNotNull('allow_partial_payment', instance.allowPartialPayment);
  writeNotNull('create_vault_record', instance.createVaultRecord);
  writeNotNull('vendor_id', instance.vendorId);
  writeNotNull('amount', instance.amount);
  writeNotNull('tax_amount', instance.taxAmount);
  writeNotNull('shipping_amount', instance.shippingAmount);
  writeNotNull('discount_amount', instance.discountAmount);
  writeNotNull('payment_adjustment', instance.paymentAdjustment);
  writeNotNull('payment_method_card', instance.paymentMethodCard);
  writeNotNull('payment_method_ach', instance.paymentMethodAch);
  writeNotNull('payment_method_terminal', instance.paymentMethodTerminal);
  writeNotNull(
      'payment_method_customer_token', instance.paymentMethodCustomerToken);
  writeNotNull('payment_method_card_cvc', instance.paymentMethodCardCvc);
  writeNotNull('billing_first_name', instance.billingFirstName);
  writeNotNull('billing_last_name', instance.billingLastName);
  writeNotNull('billing_company', instance.billingCompany);
  writeNotNull('billing_address_line_1', instance.billingAddressLine1);
  writeNotNull('billing_address_line_2', instance.billingAddressLine2);
  writeNotNull('billing_city', instance.billingCity);
  writeNotNull('billing_state', instance.billingState);
  writeNotNull('billing_postal_code', instance.billingPostalCode);
  writeNotNull('billing_country', instance.billingCountry);
  writeNotNull('billing_email', instance.billingEmail);
  writeNotNull('billing_phone', instance.billingPhone);
  writeNotNull('billing_fax', instance.billingFax);
  writeNotNull('shipping_first_name', instance.shippingFirstName);
  writeNotNull('shipping_last_name', instance.shippingLastName);
  writeNotNull('shipping_company', instance.shippingCompany);
  writeNotNull('shipping_address_line_1', instance.shippingAddressLine1);
  writeNotNull('shipping_address_line_2', instance.shippingAddressLine2);
  writeNotNull('shipping_city', instance.shippingCity);
  writeNotNull('shipping_state', instance.shippingState);
  writeNotNull('shipping_postal_code', instance.shippingPostalCode);
  writeNotNull('shipping_country', instance.shippingCountry);
  writeNotNull('shipping_email', instance.shippingEmail);
  writeNotNull('shipping_phone', instance.shippingPhone);
  writeNotNull('shipping_fax', instance.shippingFax);
  writeNotNull('national_tax_amount', instance.nationalTaxAmount);
  writeNotNull('duty_amount', instance.dutyAmount);
  writeNotNull('ship_from_postal_code', instance.shipFromPostalCode);
  writeNotNull('summary_commodity_code', instance.summaryCommodityCode);
  writeNotNull('merchant_vat_registration_number',
      instance.merchantVatRegistrationNumber);
  writeNotNull('customer_vat_registration_number',
      instance.customerVatRegistrationNumber);
  writeNotNull('drivers_license', instance.driversLicense);
  writeNotNull(
      'social_security_number_last_4', instance.socialSecurityNumberLast4);
  writeNotNull('drivers_license_state', instance.driversLicenseState);
  writeNotNull('date_of_birth', instance.dateOfBirth);
  writeNotNull('guaranty', instance.guaranty);
  return val;
}

DefaultValues _$DefaultValuesFromJson(Map<String, dynamic> json) {
  return DefaultValues(
    lineItems: json['line_items'] == null
        ? null
        : LineItemsDefaults.fromJson(
            json['line_items'] as Map<String, dynamic>),
    virtualTerminal: json['virtual_terminal'] == null
        ? null
        : VirtualTerminalDefaults.fromJson(
            json['virtual_terminal'] as Map<String, dynamic>),
    invoices: json['invoices'] == null
        ? null
        : InvoicesDefaults.fromJson(json['invoices'] as Map<String, dynamic>),
    merchant: json['merchant'] == null
        ? null
        : Merchant.fromJson(json['merchant'] as Map<String, dynamic>),
    recurring: json['recurring'] == null
        ? null
        : RecurringDefaults.fromJson(json['recurring'] as Map<String, dynamic>),
    cardsync: json['cardsync'] == null
        ? null
        : CardSyncDefaults.fromJson(json['cardsync'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DefaultValuesToJson(DefaultValues instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_items', instance.lineItems);
  writeNotNull('virtual_terminal', instance.virtualTerminal);
  writeNotNull('invoices', instance.invoices);
  writeNotNull('merchant', instance.merchant);
  writeNotNull('recurring', instance.recurring);
  writeNotNull('cardsync', instance.cardsync);
  return val;
}

VirtualTerminalDefaults _$VirtualTerminalDefaultsFromJson(
    Map<String, dynamic> json) {
  return VirtualTerminalDefaults(
    emailReceipt: json['email_receipt'] as bool?,
    allowPartialPayment: json['allow_partial_payment'] as bool?,
    vaultRecord: json['vault_record'] as bool?,
    addTaxToTotal: json['add_tax_to_total'] as bool?,
    addShippingToTotal: json['add_shipping_to_total'] as bool?,
    calculateTotalFromLineItems:
        json['calculate_total_from_line_items'] as bool?,
    enableAdvancedFields: json['enable_advanced_fields'] as bool?,
    printReceipt: json['print_receipt'] as String?,
    signatureRequired: json['signature_required'] as bool?,
  );
}

Map<String, dynamic> _$VirtualTerminalDefaultsToJson(
    VirtualTerminalDefaults instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email_receipt', instance.emailReceipt);
  writeNotNull('allow_partial_payment', instance.allowPartialPayment);
  writeNotNull('vault_record', instance.vaultRecord);
  writeNotNull('add_tax_to_total', instance.addTaxToTotal);
  writeNotNull('add_shipping_to_total', instance.addShippingToTotal);
  writeNotNull(
      'calculate_total_from_line_items', instance.calculateTotalFromLineItems);
  writeNotNull('enable_advanced_fields', instance.enableAdvancedFields);
  writeNotNull('print_receipt', instance.printReceipt);
  writeNotNull('signature_required', instance.signatureRequired);
  return val;
}

InvoicesDefaults _$InvoicesDefaultsFromJson(Map<String, dynamic> json) {
  return InvoicesDefaults(
    enableAdvancedFields: json['enable_advanced_fields'] as bool?,
    enableTax: json['enable_tax'] as bool?,
    enableShipping: json['enable_shipping'] as bool?,
    allowPartialPayment: json['allow_partial_payment'] as bool?,
    transactionType: json['transaction_type'] as String?,
    requireShippingDetails: json['require_shipping_details'] as bool?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$InvoicesDefaultsToJson(InvoicesDefaults instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('enable_advanced_fields', instance.enableAdvancedFields);
  writeNotNull('enable_tax', instance.enableTax);
  writeNotNull('enable_shipping', instance.enableShipping);
  writeNotNull('allow_partial_payment', instance.allowPartialPayment);
  writeNotNull('transaction_type', instance.transactionType);
  writeNotNull('require_shipping_details', instance.requireShippingDetails);
  writeNotNull('message', instance.message);
  return val;
}

Merchant _$MerchantFromJson(Map<String, dynamic> json) {
  return Merchant(
    currency: json['currency'] as String?,
    taxRate: json['tax_rate'] as String?,
    taxIdentifier: json['tax_identifier'] as String?,
    vatRegistrationNumber: json['vat_registration_number'] as String?,
    shipFromPostalCode: json['ship_from_postal_code'] as String?,
    summaryCommodityCode: json['summary_commodity_code'] as String?,
  );
}

Map<String, dynamic> _$MerchantToJson(Merchant instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency', instance.currency);
  writeNotNull('tax_rate', instance.taxRate);
  writeNotNull('tax_identifier', instance.taxIdentifier);
  writeNotNull('vat_registration_number', instance.vatRegistrationNumber);
  writeNotNull('ship_from_postal_code', instance.shipFromPostalCode);
  writeNotNull('summary_commodity_code', instance.summaryCommodityCode);
  return val;
}

RecurringDefaults _$RecurringDefaultsFromJson(Map<String, dynamic> json) {
  return RecurringDefaults(
    emailReceipt: json['email_receipt'] as bool?,
  );
}

Map<String, dynamic> _$RecurringDefaultsToJson(RecurringDefaults instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email_receipt', instance.emailReceipt);
  return val;
}

CardSyncDefaults _$CardSyncDefaultsFromJson(Map<String, dynamic> json) {
  return CardSyncDefaults(
    submissionFrequency: json['submission_frequency'] as String?,
    dayOfTheMonth: json['day_of_the_month'] as String?,
  );
}

Map<String, dynamic> _$CardSyncDefaultsToJson(CardSyncDefaults instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('submission_frequency', instance.submissionFrequency);
  writeNotNull('day_of_the_month', instance.dayOfTheMonth);
  return val;
}

LineItemsDefaults _$LineItemsDefaultsFromJson(Map<String, dynamic> json) {
  return LineItemsDefaults(
    unitOfMeasure: json['unit_of_measure'] as String?,
    taxable: json['taxable'] as bool?,
    localTaxRate: json['local_tax_rate'] as String?,
    nationalTaxRate: json['national_tax_rate'] as String?,
    commodityCode: json['commodity_code'] as String?,
    alternateTaxIdentifier: json['alternate_tax_identifier'] as String?,
  );
}

Map<String, dynamic> _$LineItemsDefaultsToJson(LineItemsDefaults instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('unit_of_measure', instance.unitOfMeasure);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('local_tax_rate', instance.localTaxRate);
  writeNotNull('national_tax_rate', instance.nationalTaxRate);
  writeNotNull('commodity_code', instance.commodityCode);
  writeNotNull('alternate_tax_identifier', instance.alternateTaxIdentifier);
  return val;
}

CartDataFullProduct _$CartDataFullProductFromJson(Map<String, dynamic> json) {
  return CartDataFullProduct(
    id: json['id'] as String?,
    publicHash: json['public_hash'] as String?,
    merchantId: json['merchant_id'] as String?,
    cardProcessorId: json['card_processor_id'] as String?,
    achProcessorId: json['ach_processor_id'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    type: json['type'] as String?,
    customFieldsGroup: json['custom_fields_group'] as String?,
    products: (json['products'] as List<dynamic>?)
        ?.map((e) => ProductData.fromJson(e as Map<String, dynamic>))
        .toList(),
    showAvailableProducts: json['show_available_products'] as bool?,
    requireShippingDetails: json['require_shipping_details'] as bool?,
    emailReceipt: json['email_receipt'] as bool?,
    payments: json['payments'] as bool?,
    shopifyHash: json['shopify_hash'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$CartDataFullProductToJson(CartDataFullProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('public_hash', instance.publicHash);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('card_processor_id', instance.cardProcessorId);
  writeNotNull('ach_processor_id', instance.achProcessorId);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('custom_fields_group', instance.customFieldsGroup);
  writeNotNull('products', instance.products);
  writeNotNull('show_available_products', instance.showAvailableProducts);
  writeNotNull('require_shipping_details', instance.requireShippingDetails);
  writeNotNull('email_receipt', instance.emailReceipt);
  writeNotNull('payments', instance.payments);
  writeNotNull('shopify_hash', instance.shopifyHash);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

CartDataStringProduct _$CartDataStringProductFromJson(
    Map<String, dynamic> json) {
  return CartDataStringProduct(
    id: json['id'] as String?,
    publicHash: json['public_hash'] as String?,
    merchantId: json['merchant_id'] as String?,
    cardProcessorId: json['card_processor_id'] as String?,
    achProcessorId: json['ach_processor_id'] as String?,
    name: json['name'] as String?,
    description: json['description'] as String?,
    type: json['type'] as String?,
    customFieldsGroup: json['custom_fields_group'] as String?,
    products:
        (json['products'] as List<dynamic>?)?.map((e) => e as String).toList(),
    showAvailableProducts: json['show_available_products'] as bool?,
    requireShippingDetails: json['require_shipping_details'] as bool?,
    emailReceipt: json['email_receipt'] as bool?,
    payments: json['payments'] as bool?,
    shopifyHash: json['shopify_hash'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$CartDataStringProductToJson(
    CartDataStringProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('public_hash', instance.publicHash);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('card_processor_id', instance.cardProcessorId);
  writeNotNull('ach_processor_id', instance.achProcessorId);
  writeNotNull('name', instance.name);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('custom_fields_group', instance.customFieldsGroup);
  writeNotNull('products', instance.products);
  writeNotNull('show_available_products', instance.showAvailableProducts);
  writeNotNull('require_shipping_details', instance.requireShippingDetails);
  writeNotNull('email_receipt', instance.emailReceipt);
  writeNotNull('payments', instance.payments);
  writeNotNull('shopify_hash', instance.shopifyHash);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData(
    productId: json['id'] as String?,
    publicHash: json['public_hash'] as String?,
    merchantId: json['merchant_id'] as String?,
    name: json['name'] as String?,
    img: json['img'] as String?,
    price: json['price'] as int?,
    localTax: json['local_tax'] as int?,
    nationalTax: json['national_tax'] as int?,
    fixedAmount: json['fixed_amount'] as bool?,
    fixedQty: json['fixed_qty'] as bool?,
    description: json['description'] as String?,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    deletedAt: json['deleted_at'] == null
        ? null
        : DateTime.parse(json['deleted_at'] as String),
  );
}

Map<String, dynamic> _$ProductDataToJson(ProductData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.productId);
  writeNotNull('public_hash', instance.publicHash);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('name', instance.name);
  writeNotNull('img', instance.img);
  writeNotNull('price', instance.price);
  writeNotNull('local_tax', instance.localTax);
  writeNotNull('national_tax', instance.nationalTax);
  writeNotNull('fixed_amount', instance.fixedAmount);
  writeNotNull('fixed_qty', instance.fixedQty);
  writeNotNull('description', instance.description);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('deleted_at', instance.deletedAt?.toIso8601String());
  return val;
}

CartSessionProduct _$CartSessionProductFromJson(Map<String, dynamic> json) {
  return CartSessionProduct(
    publicHash: json['public_hash'] as String?,
    qty: json['qty'] as int?,
    price: json['price'] as int?,
  );
}

Map<String, dynamic> _$CartSessionProductToJson(CartSessionProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('public_hash', instance.publicHash);
  writeNotNull('qty', instance.qty);
  writeNotNull('price', instance.price);
  return val;
}

CartSession _$CartSessionFromJson(Map<String, dynamic> json) {
  return CartSession(
    id: json['id'] as String?,
    cartPublicHash: json['cart_public_hash'] as String?,
    checkoutUrl: json['checkout_url'] as String?,
    cancelUrl: json['cancel_url'] as String?,
    successUrl: json['success_url'] as String?,
  );
}

Map<String, dynamic> _$CartSessionToJson(CartSession instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('cart_public_hash', instance.cartPublicHash);
  writeNotNull('checkout_url', instance.checkoutUrl);
  writeNotNull('cancel_url', instance.cancelUrl);
  writeNotNull('success_url', instance.successUrl);
  return val;
}
