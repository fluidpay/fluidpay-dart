// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Contact _$ContactFromJson(Map<String, dynamic> json) {
  return Contact(
    id: json['id'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    company: json['company'] as String,
    addressLine1: json['address_line_1'] as String,
    addressLine2: json['address_line_2'] as String,
    city: json['city'] as String,
    state: json['state'] as String,
    postalCode: json['postal_code'] as String,
    country: json['country'] as String,
    phone: json['phone'] as String,
    fax: json['fax'] as String,
    email: json['email'] as String,
  );
}

Map<String, dynamic> _$ContactToJson(Contact instance) => <String, dynamic>{
      'id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'address_line_1': instance.addressLine1,
      'address_line_2': instance.addressLine2,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
    };

BillingDetails _$BillingDetailsFromJson(Map<String, dynamic> json) {
  return BillingDetails(
    json['ach'] == null
        ? null
        : ACHDetails.fromJson(json['ach'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$BillingDetailsToJson(BillingDetails instance) =>
    <String, dynamic>{
      'ach': instance.achDetails,
    };

ACHDetails _$ACHDetailsFromJson(Map<String, dynamic> json) {
  return ACHDetails(
    type: json['type'] as String,
    routingNumber: json['routing_number'] as String,
    accountNumber: json['account_number'] as String,
    maskedAccountNumber: json['masked_account_number'] as String,
    accountType: json['account_type'] as String,
  );
}

Map<String, dynamic> _$ACHDetailsToJson(ACHDetails instance) =>
    <String, dynamic>{
      'type': instance.type,
      'routing_number': instance.routingNumber,
      'account_number': instance.accountNumber,
      'masked_account_number': instance.maskedAccountNumber,
      'account_type': instance.accountType,
    };

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return Permissions(
    supportBlindCredits: json['support_blind_credits'] as bool,
    allowRuleEngineAccess: json['allow_rule_engine_access'] as bool,
    allowInvoiceAccess: json['allow_invoice_access'] as bool,
    allowCustomerVaultAccess: json['allow_customer_vault_access'] as bool,
    allowRecurringBilling_access:
        json['allow_recurring_billing_access'] as bool,
    allowCart_access: json['allow_cart_access'] as bool,
    allowDeveloperHubLink: json['allow_developer_hub_link'] as bool,
    allowAdvancedFields: json['allow_advanced_fields'] as bool,
    enableTerminalDebitTransactions:
        json['enable_terminal_debit_transactions'] as bool,
    allowDefaultsPopulation: json['allow_defaults_population'] as bool,
    allowBillingAccess: json['allow_billing_access'] as bool,
    allowDashboardStats: json['allow_dashboard_stats'] as bool,
    allowFileBatch: json['allow_file_batch'] as bool,
    allowCardSync: json['allow_card_sync'] as bool,
    allowIbxBinLookup: json['allow_ibx_bin_lookup'] as bool,
    allowSurcharge: json['allow_surcharge'] as bool,
    allowMidigator: json['allow_midigator'] as bool,
  );
}

Map<String, dynamic> _$PermissionsToJson(Permissions instance) =>
    <String, dynamic>{
      'support_blind_credits': instance.supportBlindCredits,
      'allow_rule_engine_access': instance.allowRuleEngineAccess,
      'allow_invoice_access': instance.allowInvoiceAccess,
      'allow_customer_vault_access': instance.allowCustomerVaultAccess,
      'allow_recurring_billing_access': instance.allowRecurringBilling_access,
      'allow_cart_access': instance.allowCart_access,
      'allow_developer_hub_link': instance.allowDeveloperHubLink,
      'allow_advanced_fields': instance.allowAdvancedFields,
      'enable_terminal_debit_transactions':
          instance.enableTerminalDebitTransactions,
      'allow_defaults_population': instance.allowDefaultsPopulation,
      'allow_billing_access': instance.allowBillingAccess,
      'allow_dashboard_stats': instance.allowDashboardStats,
      'allow_file_batch': instance.allowFileBatch,
      'allow_card_sync': instance.allowCardSync,
      'allow_ibx_bin_lookup': instance.allowIbxBinLookup,
      'allow_surcharge': instance.allowSurcharge,
      'allow_midigator': instance.allowMidigator,
    };

AdminFlags _$AdminFlagsFromJson(Map<String, dynamic> json) {
  return AdminFlags(
    perProcessorBilling: json['per_processor_billing'] as bool,
    cashDiscountEnabled: json['cash_discount_enabled'] as bool,
    surchargeEnabled: json['surcharge_enabled'] as bool,
    splitPaymentAdjustment: json['split_payment_adjustment'] as bool,
    surchargeFallback: json['surcharge_fallback'] as bool,
    genericCashDiscount: json['generic_cash_discount'] as bool,
    skipBilling: json['skip_billing'] as bool,
    itFallback: json['it_fallback'] as bool,
  );
}

Map<String, dynamic> _$AdminFlagsToJson(AdminFlags instance) =>
    <String, dynamic>{
      'per_processor_billing': instance.perProcessorBilling,
      'cash_discount_enabled': instance.cashDiscountEnabled,
      'surcharge_enabled': instance.surchargeEnabled,
      'split_payment_adjustment': instance.splitPaymentAdjustment,
      'surcharge_fallback': instance.surchargeFallback,
      'generic_cash_discount': instance.genericCashDiscount,
      'skip_billing': instance.skipBilling,
      'it_fallback': instance.itFallback,
    };

Services _$ServicesFromJson(Map<String, dynamic> json) {
  return Services(
    id: json['id'] as String,
    type: json['type'] as String,
    status: json['status'] as String,
    data: json['data'],
    createdAt: json['created_at'] as String,
    updatedAt: json['updated_at'] as String,
    activatedAt: json['activated_at'] as String,
    deactivatedAt: json['deactivated_at'] as String,
    agreementUrl: json['agreement_url'] as String,
  );
}

Map<String, dynamic> _$ServicesToJson(Services instance) => <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'status': instance.status,
      'data': instance.data,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'activated_at': instance.activatedAt,
      'deactivated_at': instance.deactivatedAt,
      'agreement_url': instance.agreementUrl,
    };

Requireds _$RequiredsFromJson(Map<String, dynamic> json) {
  return Requireds(
    def: json['default'] as String,
    type: json['type'] as String,
    taxExempt: json['tax_exempt'] as String,
    currency: json['currency'] as String,
    description: json['description'] as String,
    orderId: json['order_id'] as String,
    poNumber: json['po_number'] as String,
    ipAddress: json['ip_address'] as String,
    emailReceipt: json['email_receipt'] as String,
    emailAddress: json['email_address'] as String,
    processorId: json['processor_id'] as String,
    allowPartialPayment: json['allow_partial_payment'] as String,
    createVaultRecord: json['create_vault_record'] as String,
    vendorId: json['vendor_id'] as String,
    amount: json['amount'] as String,
    taxAmount: json['tax_amount'] as String,
    shippingAmount: json['shipping_amount'] as String,
    discountAmount: json['discount_amount'] as String,
    paymentAdjustment: json['payment_adjustment'] as String,
    paymentMethodCard: json['payment_method_card'] as String,
    paymentMethodAch: json['payment_method_ach'] as String,
    paymentMethodTerminal: json['payment_method_terminal'] as String,
    paymentMethodCustomerToken: json['payment_method_customer_token'] as String,
    paymentMethodCardCvc: json['payment_method_card_cvc'] as String,
    billingFirstName: json['billing_first_name'] as String,
    billingLastName: json['billing_last_name'] as String,
    billingCompany: json['billing_company'] as String,
    billingAddressLine1: json['billing_address_line_1'] as String,
    billingAddressLine2: json['billing_address_line_2'] as String,
    billingCity: json['billing_city'] as String,
    billingState: json['billing_state'] as String,
    billingPostalCode: json['billing_postal_code'] as String,
    billingCountry: json['billing_country'] as String,
    billingEmail: json['billing_email'] as String,
    billingPhone: json['billing_phone'] as String,
    billingFax: json['billing_fax'] as String,
    shippingFirstName: json['shipping_first_name'] as String,
    shippingLastName: json['shipping_last_name'] as String,
    shippingCompany: json['shipping_company'] as String,
    shippingAddressLine1: json['shipping_address_line_1'] as String,
    shippingAddressLine2: json['shipping_address_line_2'] as String,
    shippingCity: json['shipping_city'] as String,
    shippingState: json['shipping_state'] as String,
    shippingPostalCode: json['shipping_postal_code'] as String,
    shippingCountry: json['shipping_country'] as String,
    shippingEmail: json['shipping_email'] as String,
    shippingPhone: json['shipping_phone'] as String,
    shippingFax: json['shipping_fax'] as String,
    nationalTaxAmount: json['national_tax_amount'] as String,
    dutyAmount: json['duty_amount'] as String,
    shipFromPostalCode: json['ship_from_postal_code'] as String,
    summaryCommodityCode: json['summary_commodity_code'] as String,
    merchantVatRegistrationNumber:
        json['merchant_vat_registration_number'] as String,
    customerVatRegistrationNumber:
        json['customer_vat_registration_number'] as String,
    driversLicense: json['drivers_license'] as String,
    socialSecurityNumberLast4: json['social_security_number_last_4'] as String,
  );
}

Map<String, dynamic> _$RequiredsToJson(Requireds instance) => <String, dynamic>{
      'default': instance.def,
      'type': instance.type,
      'tax_exempt': instance.taxExempt,
      'currency': instance.currency,
      'description': instance.description,
      'order_id': instance.orderId,
      'po_number': instance.poNumber,
      'ip_address': instance.ipAddress,
      'email_receipt': instance.emailReceipt,
      'email_address': instance.emailAddress,
      'processor_id': instance.processorId,
      'allow_partial_payment': instance.allowPartialPayment,
      'create_vault_record': instance.createVaultRecord,
      'vendor_id': instance.vendorId,
      'amount': instance.amount,
      'tax_amount': instance.taxAmount,
      'shipping_amount': instance.shippingAmount,
      'discount_amount': instance.discountAmount,
      'payment_adjustment': instance.paymentAdjustment,
      'payment_method_card': instance.paymentMethodCard,
      'payment_method_ach': instance.paymentMethodAch,
      'payment_method_terminal': instance.paymentMethodTerminal,
      'payment_method_customer_token': instance.paymentMethodCustomerToken,
      'payment_method_card_cvc': instance.paymentMethodCardCvc,
      'billing_first_name': instance.billingFirstName,
      'billing_last_name': instance.billingLastName,
      'billing_company': instance.billingCompany,
      'billing_address_line_1': instance.billingAddressLine1,
      'billing_address_line_2': instance.billingAddressLine2,
      'billing_city': instance.billingCity,
      'billing_state': instance.billingState,
      'billing_postal_code': instance.billingPostalCode,
      'billing_country': instance.billingCountry,
      'billing_email': instance.billingEmail,
      'billing_phone': instance.billingPhone,
      'billing_fax': instance.billingFax,
      'shipping_first_name': instance.shippingFirstName,
      'shipping_last_name': instance.shippingLastName,
      'shipping_company': instance.shippingCompany,
      'shipping_address_line_1': instance.shippingAddressLine1,
      'shipping_address_line_2': instance.shippingAddressLine2,
      'shipping_city': instance.shippingCity,
      'shipping_state': instance.shippingState,
      'shipping_postal_code': instance.shippingPostalCode,
      'shipping_country': instance.shippingCountry,
      'shipping_email': instance.shippingEmail,
      'shipping_phone': instance.shippingPhone,
      'shipping_fax': instance.shippingFax,
      'national_tax_amount': instance.nationalTaxAmount,
      'duty_amount': instance.dutyAmount,
      'ship_from_postal_code': instance.shipFromPostalCode,
      'summary_commodity_code': instance.summaryCommodityCode,
      'merchant_vat_registration_number':
          instance.merchantVatRegistrationNumber,
      'customer_vat_registration_number':
          instance.customerVatRegistrationNumber,
      'drivers_license': instance.driversLicense,
      'social_security_number_last_4': instance.socialSecurityNumberLast4,
    };

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

Map<String, dynamic> _$DefaultValuesToJson(DefaultValues instance) =>
    <String, dynamic>{
      'line_items': instance.lineItems,
      'virtual_terminal': instance.virtualTerminal,
      'invoices': instance.invoices,
      'merchant': instance.merchant,
      'recurring': instance.recurring,
      'cardsync': instance.cardsync,
    };

VirtualTerminalDefaults _$VirtualTerminalDefaultsFromJson(
    Map<String, dynamic> json) {
  return VirtualTerminalDefaults(
    emailReceipt: json['email_receipt'] as bool,
    allowPartialPayment: json['allow_partial_payment'] as bool,
    vaultRecord: json['vault_record'] as bool,
    addTaxToTotal: json['add_tax_to_total'] as bool,
    addShippingToTotal: json['add_shipping_to_total'] as bool,
    calculateTotalFromLineItems:
        json['calculate_total_from_line_items'] as bool,
    enableAdvancedFields: json['enable_advanced_fields'] as bool,
    printReceipt: json['print_receipt'] as String,
    signatureRequired: json['signature_required'] as bool,
  );
}

Map<String, dynamic> _$VirtualTerminalDefaultsToJson(
        VirtualTerminalDefaults instance) =>
    <String, dynamic>{
      'email_receipt': instance.emailReceipt,
      'allow_partial_payment': instance.allowPartialPayment,
      'vault_record': instance.vaultRecord,
      'add_tax_to_total': instance.addTaxToTotal,
      'add_shipping_to_total': instance.addShippingToTotal,
      'calculate_total_from_line_items': instance.calculateTotalFromLineItems,
      'enable_advanced_fields': instance.enableAdvancedFields,
      'print_receipt': instance.printReceipt,
      'signature_required': instance.signatureRequired,
    };

InvoicesDefaults _$InvoicesDefaultsFromJson(Map<String, dynamic> json) {
  return InvoicesDefaults(
    enableAdvancedFields: json['enable_advanced_fields'] as bool,
    enableTax: json['enable_tax'] as bool,
    enableShipping: json['enable_shipping'] as bool,
    allowPartialPayment: json['allow_partial_payment'] as bool,
    transactionType: json['transaction_type'] as String,
    requireShippingDetails: json['require_shipping_details'] as bool,
    message: json['message'] as String,
  );
}

Map<String, dynamic> _$InvoicesDefaultsToJson(InvoicesDefaults instance) =>
    <String, dynamic>{
      'enable_advanced_fields': instance.enableAdvancedFields,
      'enable_tax': instance.enableTax,
      'enable_shipping': instance.enableShipping,
      'allow_partial_payment': instance.allowPartialPayment,
      'transaction_type': instance.transactionType,
      'require_shipping_details': instance.requireShippingDetails,
      'message': instance.message,
    };

Merchant _$MerchantFromJson(Map<String, dynamic> json) {
  return Merchant(
    currency: json['currency'] as String,
    taxRate: json['tax_rate'] as String,
    taxIdentifier: json['tax_identifier'] as String,
    vatRegistrationNumber: json['vat_registration_number'] as String,
    shipFromPostalCode: json['ship_from_postal_code'] as String,
    summaryCommodityCode: json['summary_commodity_code'] as String,
  );
}

Map<String, dynamic> _$MerchantToJson(Merchant instance) => <String, dynamic>{
      'currency': instance.currency,
      'tax_rate': instance.taxRate,
      'tax_identifier': instance.taxIdentifier,
      'vat_registration_number': instance.vatRegistrationNumber,
      'ship_from_postal_code': instance.shipFromPostalCode,
      'summary_commodity_code': instance.summaryCommodityCode,
    };

RecurringDefaults _$RecurringDefaultsFromJson(Map<String, dynamic> json) {
  return RecurringDefaults(
    emailReceipt: json['email_receipt'] as bool,
  );
}

Map<String, dynamic> _$RecurringDefaultsToJson(RecurringDefaults instance) =>
    <String, dynamic>{
      'email_receipt': instance.emailReceipt,
    };

CardSyncDefaults _$CardSyncDefaultsFromJson(Map<String, dynamic> json) {
  return CardSyncDefaults(
    submissionFrequency: json['submission_frequency'] as String,
    dayOfTheMonth: json['day_of_the_month'] as String,
  );
}

Map<String, dynamic> _$CardSyncDefaultsToJson(CardSyncDefaults instance) =>
    <String, dynamic>{
      'submission_frequency': instance.submissionFrequency,
      'day_of_the_month': instance.dayOfTheMonth,
    };

LineItemsDefaults _$LineItemsDefaultsFromJson(Map<String, dynamic> json) {
  return LineItemsDefaults(
    unitOfMeasure: json['unit_of_measure'] as String,
    taxable: json['taxable'] as bool,
    localTaxRate: json['local_tax_rate'] as String,
    nationalTaxRate: json['national_tax_rate'] as String,
    commodityCode: json['commodity_code'] as String,
    alternateTaxIdentifier: json['alternate_tax_identifier'] as String,
  );
}

Map<String, dynamic> _$LineItemsDefaultsToJson(LineItemsDefaults instance) =>
    <String, dynamic>{
      'unit_of_measure': instance.unitOfMeasure,
      'taxable': instance.taxable,
      'local_tax_rate': instance.localTaxRate,
      'national_tax_rate': instance.nationalTaxRate,
      'commodity_code': instance.commodityCode,
      'alternate_tax_identifier': instance.alternateTaxIdentifier,
    };

CartDataFullProduct _$CartDataFullProductFromJson(Map<String, dynamic> json) {
  return CartDataFullProduct(
    id: json['id'] as String,
    publicHash: json['public_hash'] as String,
    merchantId: json['merchant_id'] as String,
    cardProcessorId: json['card_processor_id'] as String,
    achProcessorId: json['ach_processor_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    customFieldsGroup: json['custom_fields_group'] as String,
    products: (json['products'] as List)
        ?.map((e) =>
            e == null ? null : ProductData.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    showAvailableProducts: json['show_available_products'] as bool,
    requireShippingDetails: json['require_shipping_details'] as bool,
    emailReceipt: json['email_receipt'] as bool,
    payments: json['payments'] as bool,
    shopifyHash: json['shopify_hash'] as String,
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

Map<String, dynamic> _$CartDataFullProductToJson(
        CartDataFullProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'public_hash': instance.publicHash,
      'merchant_id': instance.merchantId,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'custom_fields_group': instance.customFieldsGroup,
      'products': instance.products,
      'show_available_products': instance.showAvailableProducts,
      'require_shipping_details': instance.requireShippingDetails,
      'email_receipt': instance.emailReceipt,
      'payments': instance.payments,
      'shopify_hash': instance.shopifyHash,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

CartDataStringProduct _$CartDataStringProductFromJson(
    Map<String, dynamic> json) {
  return CartDataStringProduct(
    id: json['id'] as String,
    publicHash: json['public_hash'] as String,
    merchantId: json['merchant_id'] as String,
    cardProcessorId: json['card_processor_id'] as String,
    achProcessorId: json['ach_processor_id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    type: json['type'] as String,
    customFieldsGroup: json['custom_fields_group'] as String,
    products: (json['products'] as List)?.map((e) => e as String)?.toList(),
    showAvailableProducts: json['show_available_products'] as bool,
    requireShippingDetails: json['require_shipping_details'] as bool,
    emailReceipt: json['email_receipt'] as bool,
    payments: json['payments'] as bool,
    shopifyHash: json['shopify_hash'] as String,
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
        CartDataStringProduct instance) =>
    <String, dynamic>{
      'id': instance.id,
      'public_hash': instance.publicHash,
      'merchant_id': instance.merchantId,
      'card_processor_id': instance.cardProcessorId,
      'ach_processor_id': instance.achProcessorId,
      'name': instance.name,
      'description': instance.description,
      'type': instance.type,
      'custom_fields_group': instance.customFieldsGroup,
      'products': instance.products,
      'show_available_products': instance.showAvailableProducts,
      'require_shipping_details': instance.requireShippingDetails,
      'email_receipt': instance.emailReceipt,
      'payments': instance.payments,
      'shopify_hash': instance.shopifyHash,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return ProductData(
    productId: json['id'] as String,
    publicHash: json['public_hash'] as String,
    merchantId: json['merchant_id'] as String,
    name: json['name'] as String,
    img: json['img'] as String,
    price: json['price'] as int,
    localTax: json['local_tax'] as int,
    nationalTax: json['national_tax'] as int,
    fixedAmount: json['fixed_amount'] as bool,
    fixedQty: json['fixed_qty'] as bool,
    description: json['description'] as String,
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

Map<String, dynamic> _$ProductDataToJson(ProductData instance) =>
    <String, dynamic>{
      'id': instance.productId,
      'public_hash': instance.publicHash,
      'merchant_id': instance.merchantId,
      'name': instance.name,
      'img': instance.img,
      'price': instance.price,
      'local_tax': instance.localTax,
      'national_tax': instance.nationalTax,
      'fixed_amount': instance.fixedAmount,
      'fixed_qty': instance.fixedQty,
      'description': instance.description,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'deleted_at': instance.deletedAt?.toIso8601String(),
    };

CartSessionProduct _$CartSessionProductFromJson(Map<String, dynamic> json) {
  return CartSessionProduct(
    publicHash: json['public_hash'] as String,
    qty: json['qty'] as int,
    price: json['price'] as int,
  );
}

Map<String, dynamic> _$CartSessionProductToJson(CartSessionProduct instance) =>
    <String, dynamic>{
      'public_hash': instance.publicHash,
      'qty': instance.qty,
      'price': instance.price,
    };

CartSession _$CartSessionFromJson(Map<String, dynamic> json) {
  return CartSession(
    id: json['id'] as String,
    cartPublicHash: json['cart_public_hash'] as String,
    checkoutUrl: json['checkout_url'] as String,
    cancelUrl: json['cancel_url'] as String,
    successUrl: json['success_url'] as String,
  );
}

Map<String, dynamic> _$CartSessionToJson(CartSession instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cart_public_hash': instance.cartPublicHash,
      'checkout_url': instance.checkoutUrl,
      'cancel_url': instance.cancelUrl,
      'success_url': instance.successUrl,
    };
