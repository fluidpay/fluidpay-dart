// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
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

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
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

LineItem _$LineItemFromJson(Map<String, dynamic> json) {
  return LineItem(
    id: json['id'] as String,
    status: LineItem.lineItemStatusFromJson(json['status'] as String),
    type: json['type'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    quantity: (json['quantity'] as num)?.toDouble(),
    quantityShipped: (json['quantity_shipped'] as num)?.toDouble(),
    productCode: json['product_code'] as String,
    commodityCode: json['commodity_code'] as String,
    unitOfMeasure: json['unit_of_measure'] as String,
    alternateTaxIdentifier: json['alternate_tax_identifier'] as String,
    taxable: json['taxable'] as bool,
    localTaxRate: json['local_tax_rate'] as String,
    localTax: json['local_tax'] as int,
    nationalTaxRate: json['national_tax_rate'] as String,
    nationalTax: json['national_tax'] as int,
    taxRate: json['tax_rate'] as String,
    taxAmount: json['tax_amount'] as int,
    discountAmount: json['discount_amount'] as int,
    freightAmount: json['freight_amount'] as int,
    unitPrice: json['unit_price'] as int,
    discountRate: json['discount_rate'] as String,
    subtotal: json['subtotal'] as int,
    amount: json['amount'] as int,
  );
}

Map<String, dynamic> _$LineItemToJson(LineItem instance) => <String, dynamic>{
      'id': instance.id,
      'status': _$LineItemStatusEnumMap[instance.status],
      'type': instance.type,
      'name': instance.name,
      'description': instance.description,
      'quantity': instance.quantity,
      'quantity_shipped': instance.quantityShipped,
      'product_code': instance.productCode,
      'commodity_code': instance.commodityCode,
      'unit_of_measure': instance.unitOfMeasure,
      'alternate_tax_identifier': instance.alternateTaxIdentifier,
      'taxable': instance.taxable,
      'local_tax_rate': instance.localTaxRate,
      'local_tax': instance.localTax,
      'national_tax_rate': instance.nationalTaxRate,
      'national_tax': instance.nationalTax,
      'tax_rate': instance.taxRate,
      'tax_amount': instance.taxAmount,
      'discount_amount': instance.discountAmount,
      'freight_amount': instance.freightAmount,
      'unit_price': instance.unitPrice,
      'discount_rate': instance.discountRate,
      'subtotal': instance.subtotal,
      'amount': instance.amount,
    };

const _$LineItemStatusEnumMap = {
  LineItemStatus.paid: 'paid',
  LineItemStatus.pending: 'pending',
  LineItemStatus.rejected: 'rejected',
};

QuerySearchParamString _$QuerySearchParamStringFromJson(
    Map<String, dynamic> json) {
  return QuerySearchParamString(
    operator: _$enumDecodeNullable(_$SearchOperatorEnumMap, json['operator']),
    value: json['value'] as String,
  );
}

Map<String, dynamic> _$QuerySearchParamStringToJson(
        QuerySearchParamString instance) =>
    <String, dynamic>{
      'operator': _$SearchOperatorEnumMap[instance.operator],
      'value': instance.value,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$SearchOperatorEnumMap = {
  SearchOperator.equals: '=',
  SearchOperator.notEquals: '!=',
  SearchOperator.like: '%',
  SearchOperator.greaterThan: '>',
  SearchOperator.lessThan: '<',
};

QuerySearchParamInt _$QuerySearchParamIntFromJson(Map<String, dynamic> json) {
  return QuerySearchParamInt(
    operator: _$enumDecodeNullable(_$SearchOperatorEnumMap, json['operator']),
    value: json['value'] as int,
  );
}

Map<String, dynamic> _$QuerySearchParamIntToJson(
        QuerySearchParamInt instance) =>
    <String, dynamic>{
      'operator': _$SearchOperatorEnumMap[instance.operator],
      'value': instance.value,
    };

QuerySearchParamDateRange _$QuerySearchParamDateRangeFromJson(
    Map<String, dynamic> json) {
  return QuerySearchParamDateRange(
    startDate: json['start_date'] == null
        ? null
        : DateTime.parse(json['start_date'] as String),
    endDate: json['end_date'] == null
        ? null
        : DateTime.parse(json['end_date'] as String),
  );
}

Map<String, dynamic> _$QuerySearchParamDateRangeToJson(
        QuerySearchParamDateRange instance) =>
    <String, dynamic>{
      'start_date': instance.startDate?.toIso8601String(),
      'end_date': instance.endDate?.toIso8601String(),
    };
