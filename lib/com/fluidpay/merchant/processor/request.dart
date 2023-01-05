import 'package:fluidpay/com/fluidpay/common/actions.dart';
import 'package:fluidpay/com/fluidpay/common/base.dart';
import 'package:fluidpay/com/fluidpay/merchant/processor/response.dart';

class ProcessorGetRequest extends Searchable<ProcessorGetResponse> {
  String merchantID;
  String? processorID;

  ProcessorGetRequest(this.merchantID, {
    this.processorID,
  }) {
    if (merchantID.isEmpty) {
      throw ArgumentError('merchantID must not be empty');
    }
  }

  @override
  ProcessorGetResponse buildResponse(Map<String, dynamic> json) => ProcessorGetResponse.fromJson(json);

  @override
  String getPath() => processorID?.isNotEmpty == true ? '/merchant/$merchantID/processor/$processorID' : '/merchant/$merchantID/processors';

  @override
  Method getRequestMethod() => Method.GET;
}
