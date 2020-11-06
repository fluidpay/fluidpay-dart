import 'dart:convert';

import 'package:http/http.dart' as http;

import 'common/actions.dart';
import 'common/base.dart';

class Gateway {
  final String baseUrl;
  String apiKey;
  String authToken;

  Gateway(this.baseUrl, {this.apiKey, this.authToken}) {
    if (baseUrl?.isEmpty != false) {
      throw ArgumentError('baseUrl must not be null or empty');
    }
  }

  Future<Response> create<Response extends Responsable>(
      Creatable<Response> request) {
    return _CommonClient(baseUrl, apiKey, authToken)
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> get<Response extends Responsable>(
      Searchable<Response> request) {
    return _CommonClient(baseUrl, apiKey, authToken).get(request).then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> search<Response extends Responsable>(
      Searchable<Response> request) {
    return _CommonClient(baseUrl, apiKey, authToken)
        .post(request)
        .then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> update<Response extends Responsable>(
      Updatable<Response> request) {
    return _CommonClient(baseUrl, apiKey, authToken)
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> delete<Response extends Responsable>(
      Deletable<Response> request) {
    return _CommonClient(baseUrl, apiKey, authToken)
        .delete(request)
        .then((value) => request.buildResponse(value));
  }
}

class _CommonClient {
  final String baseUrl;
  final String apiKey;
  final String authToken;

  final headers = {'Content-Type': 'application/json'};

  _CommonClient(this.baseUrl, this.apiKey, this.authToken) {
    if (authToken != null) {
      headers['Authorization'] = 'Bearer $authToken';
    } else if (apiKey != null) {
      headers['Authorization'] = apiKey;
    }
  }

  Map<String, dynamic> _createJsonFromResponse(http.Response resp) {
    final result = jsonDecode(resp.body);

    result['status_code'] = resp.statusCode;

    return result;
  }

  Future<Map<String, dynamic>> post(Requestable baseRequest) => http
      .post(
        baseUrl +
            Uri(
              path: baseRequest.getUrl(),
              queryParameters: baseRequest.getQueryParams(),
            ).toString(),
        headers: headers,
        body: jsonEncode(baseRequest.toJson()),
      )
      .then(_createJsonFromResponse);

  Future<Map<String, dynamic>> get(Requestable baseRequest) => http
      .get(
        baseUrl +
            Uri(
              path: baseRequest.getUrl(),
              queryParameters: baseRequest.getQueryParams(),
            ).toString(),
        headers: headers,
      )
      .then((value) => jsonDecode(value.body));

  Future<Map<String, dynamic>> delete(Requestable baseRequest) => http
      .delete(
        baseUrl +
            Uri(
              path: baseRequest.getUrl(),
              queryParameters: baseRequest.getQueryParams(),
            ).toString(),
        headers: headers,
      )
      .then((value) => jsonDecode(value.body));
}
