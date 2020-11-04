import 'base.dart';

abstract class Creatable<Response extends Responsable> extends Requestable<Response> {}

abstract class Searchable<Response extends Responsable> extends Requestable<Response> {
  @override
  Map<String, dynamic> toJson() => {};
}

abstract class Updatable<Response extends Responsable> extends Requestable<Response> {
  @override
  Map<String, dynamic> toJson() => {};
}

abstract class Deletable<Response extends Responsable> extends Requestable<Response> {
  @override
  Map<String, dynamic> toJson() => {};
}
