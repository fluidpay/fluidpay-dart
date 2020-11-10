import 'dart:convert';

import 'package:http/http.dart' as http;

import 'common/actions.dart';
import 'common/base.dart';

class Gateway {
  static final instance = Gateway._internal();

  String _baseUrl;
  String apiKey;
  String authToken;

  Gateway._internal();

  void init(String baseUrl, {String apiKey, String authToken}) {
    _baseUrl = baseUrl;
    this.apiKey = apiKey;
    this.authToken = authToken;
  }

  _CommonClient get _client {
    if (_baseUrl?.isEmpty != false) {
      throw ArgumentError('\'baseUrl\' must not be null or empty. Use init method to set it properly.');
    }
    return _CommonClient(_baseUrl, apiKey, authToken);
  }

  Future<Response> create<Response extends Responsable>(
      Creatable<Response> request) {
    return _client
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> get<Response extends Responsable>(
      Searchable<Response> request) {
    return _client.get(request).then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> search<Response extends Responsable>(
      Searchable<Response> request) {
    return _client
        .post(request)
        .then((value) {
      return request.buildResponse(value);
    });
  }

  Future<Response> update<Response extends Responsable>(
      Updatable<Response> request) {
    return _client
        .post(request)
        .then((value) => request.buildResponse(value));
  }

  Future<Response> delete<Response extends Responsable>(
      Deletable<Response> request) {
    return _client
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
