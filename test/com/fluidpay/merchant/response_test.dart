import 'package:fluidpay/com/fluidpay/merchant/response.dart';
import 'package:test/test.dart';

void main() {
  test('merchant get response fromJson', _testMerchantGetResponseFromJson);
}

void _testMerchantGetResponseFromJson() {
  var resp = MerchantGetResponse.fromJson({
    'status': 'success',
    'msg': 'success',
    'total_count': null,
    'data': _input,
  });

  expect(resp.status, 'success');
  expect(resp.msg, 'success');
  expect(resp.totalCount, null);

  expect(resp.data.merchantId, 'test_id');
  expect(resp.data.partnerId, 'test_partner');
  expect(resp.data.type, 'gateway');
  expect(resp.data.name, 'Test Company Coorp');
  expect(resp.data.description, 'test description');
  expect(resp.data.website, 'website');
  expect(resp.data.phone, '5555555555');
  expect(resp.data.phoneExt, '5555555555');
  expect(resp.data.receiptEmail, 'email@test.com');
  expect(resp.data.timezone, 'US/Central');
  expect(resp.data.status, 'active');
  expect(resp.data.feeScheduleId, 'test_id');
  expect(resp.data.logoUrl, 'test_url');
  expect(resp.data.logoUrl, 'test_url');
  expect(resp.data.permissions.supportBlindCredits,true);
  expect(resp.data.permissions.allowRuleEngineAccess, true);
  expect(resp.data.permissions.allowInvoiceAccess, true);
  expect(resp.data.permissions.allowCustomerVaultAccess, true);
  expect(resp.data.permissions.allowRecurringBilling_access, true);
  expect(resp.data.permissions.allowCart_access, true);
  expect(resp.data.permissions.allowDeveloperHubLink, true);
  expect(resp.data.permissions.allowAdvancedFields, true);
  expect(resp.data.permissions.enableTerminalDebitTransactions, true);
  expect(resp.data.permissions.allowDefaultsPopulation, true);
  expect(resp.data.permissions.allowBillingAccess, true);
  expect(resp.data.permissions.allowDashboardStats, true);
  expect(resp.data.permissions.allowFileBatch, true);
  expect(resp.data.permissions.allowCardSync, true);
  expect(resp.data.permissions.allowIbxBinLookup, true);
  expect(resp.data.permissions.allowSurcharge, true);
  expect(resp.data.permissions.allowMidigator, true);

  expect(resp.data.flags.perProcessorBilling, true);
  expect(resp.data.flags.cashDiscountEnabled, true);
  expect(resp.data.flags.surchargeEnabled, true);
  expect(resp.data.flags.splitPaymentAdjustment, true);
  expect(resp.data.flags.surchargeFallback, true);
  expect(resp.data.flags.genericCashDiscount, true);
  expect(resp.data.flags.skipBilling, true);
  expect(resp.data.flags.itFallback, true);

  expect(resp.data.defaultValues.lineItems.unitOfMeasure, '');
  expect(resp.data.defaultValues.lineItems.taxable, true);
  expect(resp.data.defaultValues.lineItems.localTaxRate, '');
  expect(resp.data.defaultValues.lineItems.nationalTaxRate, '');
  expect(resp.data.defaultValues.lineItems.commodityCode, '');
  expect(resp.data.defaultValues.lineItems.alternateTaxIdentifier, '');

  expect(resp.data.defaultValues.virtualTerminal.emailReceipt, true);
  expect(resp.data.defaultValues.virtualTerminal.allowPartialPayment, true);
  expect(resp.data.defaultValues.virtualTerminal.vaultRecord, true);
  expect(resp.data.defaultValues.virtualTerminal.addTaxToTotal, true);
  expect(resp.data.defaultValues.virtualTerminal.addShippingToTotal, true);
  expect(resp.data.defaultValues.virtualTerminal.calculateTotalFromLineItems, true);
  expect(resp.data.defaultValues.virtualTerminal.enableAdvancedFields, true);
  expect(resp.data.defaultValues.virtualTerminal.printReceipt, 'both');
  expect(resp.data.defaultValues.virtualTerminal.signatureRequired, true);

  expect(resp.data.defaultValues.invoices.enableAdvancedFields, true);
  expect(resp.data.defaultValues.invoices.enableTax, true);
  expect(resp.data.defaultValues.invoices.enableShipping, true);
  expect(resp.data.defaultValues.invoices.allowPartialPayment, true);
  expect(resp.data.defaultValues.invoices.transactionType, 'sale');
  expect(resp.data.defaultValues.invoices.requireShippingDetails, true);
  expect(resp.data.defaultValues.invoices.message, 'Thank you');

  expect(resp.data.defaultValues.merchant.currency, 'USD');
  expect(resp.data.defaultValues.merchant.taxRate, 'test');
  expect(resp.data.defaultValues.merchant.taxIdentifier, 'test');
  expect(resp.data.defaultValues.merchant.vatRegistrationNumber, 'test');
  expect(resp.data.defaultValues.merchant.shipFromPostalCode, 'test');
  expect(resp.data.defaultValues.merchant.summaryCommodityCode, 'test');

  expect(resp.data.defaultValues.recurring.emailReceipt, true);

  expect(resp.data.defaultValues.cardsync.submissionFrequency, 'monthly');
  expect(resp.data.defaultValues.cardsync.dayOfTheMonth, '1');

  expect(resp.data.primaryContact.firstName, 'test');
  expect(resp.data.primaryContact.lastName, 'test');
  expect(resp.data.primaryContact.company, 'test');
  expect(resp.data.primaryContact.addressLine1, 'test');
  expect(resp.data.primaryContact.addressLine2, 'test');
  expect(resp.data.primaryContact.city, 'test');
  expect(resp.data.primaryContact.state, 'test');
  expect(resp.data.primaryContact.postalCode, 'test');
  expect(resp.data.primaryContact.country, 'test');
  expect(resp.data.primaryContact.phone, 'test');
  expect(resp.data.primaryContact.fax, 'test');
  expect(resp.data.primaryContact.email, 'test');

  expect(resp.data.billingContact.firstName, 'test');
  expect(resp.data.billingContact.lastName, 'test');
  expect(resp.data.billingContact.company, 'test');
  expect(resp.data.billingContact.addressLine1, 'test');
  expect(resp.data.billingContact.addressLine2, 'test');
  expect(resp.data.billingContact.city, 'test');
  expect(resp.data.billingContact.state, 'test');
  expect(resp.data.billingContact.postalCode, 'test');
  expect(resp.data.billingContact.country, 'test');
  expect(resp.data.billingContact.phone, 'test');
  expect(resp.data.billingContact.fax, 'test');
  expect(resp.data.billingContact.email, 'test');
}

final _input = {
  'id': 'test_id',
  'partner_id': 'test_partner',
  'type': 'gateway',
  'name': 'Test Company Coorp',
  'description': 'test description',
  'website': 'website',
  'phone': '5555555555',
  'phone_ext': '5555555555',
  'receipt_email': 'email@test.com',
  'timezone': 'US/Central',
  'status': 'active',
  'fee_schedule_id': 'test_id',
  'logo_url': 'test_url',
  'permissions': {
    'support_blind_credits': true,
    'allow_rule_engine_access': true,
    'allow_invoice_access': true,
    'allow_customer_vault_access': true,
    'allow_recurring_billing_access': true,
    'allow_cart_access': true,
    'allow_developer_hub_link': true,
    'allow_advanced_fields': true,
    'enable_terminal_debit_transactions': true,
    'allow_defaults_population': true,
    'allow_billing_access': true,
    'allow_dashboard_stats': true,
    'allow_file_batch': true,
    'allow_card_sync': true,
    'allow_ibx_bin_lookup': true,
    'allow_surcharge': true,
    'allow_midigator': true
  },
  'flags': {
    'per_processor_billing': true,
    'cash_discount_enabled': true,
    'surcharge_enabled': true,
    'split_payment_adjustment': true,
    'surcharge_fallback': true,
    'generic_cash_discount': true,
    'skip_billing': true,
    'it_fallback': true
  },
  'default_values': {
    'line_items': {
      'unit_of_measure': '',
      'taxable': true,
      'local_tax_rate': '',
      'national_tax_rate': '',
      'commodity_code': '',
      'alternate_tax_identifier': ''
    },
    'virtual_terminal': {
      'email_receipt': true,
      'allow_partial_payment': true,
      'vault_record': true,
      'add_tax_to_total': true,
      'add_shipping_to_total': true,
      'calculate_total_from_line_items': true,
      'enable_advanced_fields': true,
      'print_receipt': 'both',
      'signature_required': true
    },
    'invoices': {
      'enable_advanced_fields': true,
      'enable_tax': true,
      'enable_shipping': true,
      'allow_partial_payment': true,
      'transaction_type': 'sale',
      'require_shipping_details': true,
      'message': 'Thank you',
    },
    'merchant': {
      'currency': 'USD',
      'tax_rate': 'test',
      'tax_identifier': 'test',
      'vat_registration_number': 'test',
      'ship_from_postal_code': 'test',
      'summary_commodity_code': 'test'
    },
    'recurring': {'email_receipt': true},
    'cardsync': {'submission_frequency': 'monthly', 'day_of_the_month': '1'}
  },
  'primary_contact': {
    'id': null,
    'first_name': 'test',
    'last_name': 'test',
    'company': 'test',
    'address_line_1': 'test',
    'address_line_2': 'test',
    'city': 'test',
    'state': 'test',
    'postal_code': 'test',
    'country': 'test',
    'phone': 'test',
    'fax': 'test',
    'email': 'test'
  },
  'billing_contact': {
    'id': null,
    'first_name': 'test',
    'last_name': 'test',
    'company': 'test',
    'address_line_1': 'test',
    'address_line_2': 'test',
    'city': 'test',
    'state': 'test',
    'postal_code': 'test',
    'country': 'test',
    'phone': 'test',
    'fax': 'test',
    'email': 'test'
  },
};