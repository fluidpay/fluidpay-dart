import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/terminal/response.dart';

class TerminalGetRequest extends Searchable<TerminalGetResponse> {
  TerminalGetRequest();

  @override
  TerminalGetResponse buildResponse(Map<String, dynamic> json) =>
      TerminalGetResponse.fromJson(json);

  @override
  Method getRequestMethod() => Method.GET;

  @override
  String getPath() => '/terminals';
}