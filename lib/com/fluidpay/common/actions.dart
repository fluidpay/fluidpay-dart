import 'base.dart';

abstract class ForCreate<Response extends BaseResponse> extends BaseRequest<Response> {}

abstract class ForSearch<Response extends BaseResponse> extends BaseRequest<Response> {
  @override
  Map<String, dynamic> toJson() => {};
}

abstract class ForUpdate<Response extends BaseResponse> extends BaseRequest<Response> {}

abstract class ForDelete<Response extends BaseResponse> extends BaseRequest<Response> {}
