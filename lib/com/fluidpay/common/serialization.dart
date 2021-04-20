abstract class Serializable {
  Map<String, dynamic>? toJson();
}

abstract class Deserializable {
  Deserializable.fromJson(Map<String, dynamic> json);
}
