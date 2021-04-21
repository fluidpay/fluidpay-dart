// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerAddress _$CustomerAddressFromJson(Map<String, dynamic> json) {
  return CustomerAddress(
    id: json['id'] as String?,
    firstName: json['first_name'],
    lastName: json['last_name'],
    company: json['company'],
    addressLine1: json['line_1'] as String?,
    addressLine2: json['line_2'] as String?,
    city: json['city'],
    state: json['state'],
    postalCode: json['postal_code'],
    country: json['country'],
    phone: json['phone'],
    fax: json['fax'],
    email: json['email'],
    hash: json['hash'] as String?,
  );
}

Map<String, dynamic> _$CustomerAddressToJson(CustomerAddress instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'company': instance.company,
      'city': instance.city,
      'state': instance.state,
      'postal_code': instance.postalCode,
      'country': instance.country,
      'phone': instance.phone,
      'fax': instance.fax,
      'email': instance.email,
      'id': instance.id,
      'line_1': instance.addressLine1,
      'line_2': instance.addressLine2,
      'hash': instance.hash,
    };

CustomerCard _$CustomerCardFromJson(Map<String, dynamic> json) {
  return CustomerCard(
    id: json['id'] as String?,
    number: json['number'] as String?,
    maskedNumber: json['masked_number'] as String?,
    encryptedNumber: json['encrypted_number'] as String?,
    digest: json['digest'] as String?,
    expirationDate: json['expiration_date'] as String?,
    cardType: json['card_type'] as String?,
    processorId: json['processor_id'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    lockValue: json['lock_value'] as String?,
    cvc: json['cvc'] as String?,
    initialTransactionId: json['initial_transaction_id'] as String?,
    instrumentType: json['instrument_type'] as String?,
    genericCardLevel: json['generic_card_level'] as String?,
  );
}

Map<String, dynamic> _$CustomerCardToJson(CustomerCard instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'masked_number': instance.maskedNumber,
      'encrypted_number': instance.encryptedNumber,
      'digest': instance.digest,
      'expiration_date': instance.expirationDate,
      'card_type': instance.cardType,
      'processor_id': instance.processorId,
      'flags': instance.flags,
      'lock_value': instance.lockValue,
      'cvc': instance.cvc,
      'initial_transaction_id': instance.initialTransactionId,
      'instrument_type': instance.instrumentType,
      'generic_card_level': instance.genericCardLevel,
    };

CustomerACH _$CustomerACHFromJson(Map<String, dynamic> json) {
  return CustomerACH(
    id: json['id'] as String?,
    accountNumber: json['account_number'] as String?,
    maskedAccountNumber: json['masked_account_number'] as String?,
    encryptedAccountNumber: json['encrypted_account_number'] as String?,
    digest: json['digest'] as String?,
    routingNumber: json['routing_number'] as String?,
    accountType: json['account_type'] as String?,
    secCode: json['sec_code'] as String?,
    processorId: json['processor_id'] as String?,
    flags: (json['flags'] as List<dynamic>?)?.map((e) => e as String).toList(),
    lockValue: json['lock_value'] as String?,
  );
}

Map<String, dynamic> _$CustomerACHToJson(CustomerACH instance) =>
    <String, dynamic>{
      'id': instance.id,
      'account_number': instance.accountNumber,
      'masked_account_number': instance.maskedAccountNumber,
      'encrypted_account_number': instance.encryptedAccountNumber,
      'digest': instance.digest,
      'routing_number': instance.routingNumber,
      'account_type': instance.accountType,
      'sec_code': instance.secCode,
      'processor_id': instance.processorId,
      'flags': instance.flags,
      'lock_value': instance.lockValue,
    };
