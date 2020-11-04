import 'dart:convert';

import 'package:http/http.dart' as http;

import 'common/actions.dart';
import 'common/base.dart';

class Gateway {
  final String baseUrl;
  final String apiKey;

  Gateway(this.apiKey, {this.baseUrl = 'https://sandbox.fluidpay.com/api'});

  Future<Response> create<Response extends Responsable>(
      Creatable<Response> request) {
    return _CommonClient(baseUrl, apiKey)
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> get<Response extends Responsable>(
      Searchable<Response> request) {
    return _CommonClient(baseUrl, apiKey).get(request).then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> search<Response extends Responsable>(
      Searchable<Response> request) {
    return _CommonClient(baseUrl, apiKey).post(request).then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> update<Response extends Responsable>(
      Updatable<Response> request) {
    return _CommonClient(baseUrl, apiKey)
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> delete<Response extends Responsable>(
      Deletable<Response> request) {
    return _CommonClient(baseUrl, apiKey)
        .delete(request)
        .then((value) => request.buildResponse(value));
  }
}

class _CommonClient {
  final String baseUrl;
  final String apiKey;

  _CommonClient(this.baseUrl, this.apiKey);

  Future<Map<String, dynamic>> post(Requestable baseRequest) => http
      .post(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
        body: jsonEncode(baseRequest.toJson()),
      )
      .then((value) => jsonDecode(value.body));

  Future<Map<String, dynamic>> get(Requestable baseRequest) => http.get(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
      ).then((value) => jsonDecode(value.body));

  Future<Map<String, dynamic>> delete(Requestable baseRequest) => http.delete(
        baseUrl + baseRequest.getUrl(),
        headers: {'Authorization': apiKey, 'Content-Type': 'application/json'},
      ).then((value) => jsonDecode(value.body));
}
