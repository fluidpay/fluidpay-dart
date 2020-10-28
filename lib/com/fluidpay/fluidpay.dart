import 'dart:convert';

import 'package:http/http.dart' as http;

import 'common/actions.dart';
import 'common/base.dart';

class FluidPay {
  final String baseUrl;
  final String apiKey;

  FluidPay(this.apiKey, {this.baseUrl = 'https://sandbox.fluidpay.com/api'});

  Future<Response> create<Response extends BaseResponse>(
      ForCreate<Response> request) {
    return _CommonClient(baseUrl, apiKey)
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> get<Response extends BaseResponse>(
      ForSearch<Response> request) {
    return _CommonClient(baseUrl, apiKey).get(request).then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> update<Response extends BaseResponse>(
      ForUpdate<Response> request) {
    return _CommonClient(baseUrl, apiKey)
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> delete<Response extends BaseResponse>(
      ForDelete<Response> request) {
    return _CommonClient(baseUrl, apiKey)
        .delete(request)
        .then((value) => request.buildResponse(value));
  }
}

class _CommonClient {
  final String baseUrl;
  final String apiKey;

  _CommonClient(this.baseUrl, this.apiKey);

  Future<Map<String, dynamic>> post(BaseRequest baseRequest) => http
      .post(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
        body: jsonEncode(baseRequest.toJson()),
      )
      .then((value) => jsonDecode(value.body));

  Future<Map<String, dynamic>> get(BaseRequest baseRequest) => http.get(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
      ).then((value) => jsonDecode(value.body));

  Future<Map<String, dynamic>> delete(BaseRequest baseRequest) => http.delete(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
      ).then((value) => jsonDecode(value.body));
}
