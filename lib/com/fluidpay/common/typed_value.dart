class TypedValue {
  final String type;
  final int value;
  final bool include;

  TypedValue({required this.type, required this.value, required this.include});

  Map<String, dynamic> toJson() => {
    'valid': true,
    'typed_value': {
      'type': type,
      'value': value,
      'include': include
    }
  };
}