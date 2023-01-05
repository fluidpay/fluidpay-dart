// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequiredsUpdateRequest _$RequiredsUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return RequiredsUpdateRequest(
    requireds: (json['requireds'] as Map<String, dynamic>?)?.map(
      (k, e) => MapEntry(k, Requireds.fromJson(e as Map<String, dynamic>)),
    ),
  );
}

Map<String, dynamic> _$RequiredsUpdateRequestToJson(
    RequiredsUpdateRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('requireds', instance.requireds);
  return val;
}
