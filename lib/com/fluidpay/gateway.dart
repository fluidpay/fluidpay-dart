import 'dart:convert';

import 'package:fluidpay/com/fluidpay/authentication/request.dart';
import 'package:fluidpay/com/fluidpay/authentication/response.dart';
import 'package:http/http.dart' as http;

import 'common/base.dart';

class Gateway {
  static final instance = Gateway._internal();

  String? _baseUrl;
  String? apiKey;
  AuthLoginResponseData? authData;
  Map<String, String> Function()? _createAuthHeader;

  Gateway._internal();

  void init(String baseUrl, {String? apiKey}) {
    _baseUrl = baseUrl;
    this.apiKey = apiKey;
  }

  _CommonClient get _client {
    if (_baseUrl?.isNotEmpty != true) {
      throw ArgumentError(
          '\'baseUrl\' must not be null or empty. Use init method to set it properly.');
    }
    return _CommonClient(
        _baseUrl!, apiKey, _createAuthHeader ?? _defaultAuthHeaderCreator);
  }

  Future<AuthLoginResponse> login(AuthLoginRequest loginRequest) async {
    final authResponse = await execute(loginRequest);

    if (authResponse.statusCode == 200) {
      authData = authResponse.data;
    }

    return authResponse;
  }

  Future<Response> execute<Response extends Responsable>(
      Requestable<Response> request) {
    Future<Map<String, dynamic>> result;

    switch (request.getRequestMethod()) {
      case Method.GET:
        result = _client.get(request);
        break;
      case Method.POST:
        result = _client.post(request);
        break;
      case Method.PUT:
        result = _client.put(request);
        break;
      case Method.DELETE:
        result = _client.delete(request);
        break;
    }

    return result.then((value) => request.buildResponse(value));
  }

  void setAuthHeaderCreator(Map<String, String> Function()? authHeaderCreator) {
    _createAuthHeader = authHeaderCreator;
  }

  Map<String, String> _defaultAuthHeaderCreator() {
    final result = <String, String>{};

    if (authData != null) {
      result['Authorization'] = 'Bearer ${authData!.token}';
      result['Cookie'] = 'sid=${authData!.sid}';
    }

    return result;
  }
}

class _CommonClient {
  final String baseUrl;
  final String? apiKey;

  final headers = {'Content-Type': 'application/json'};

  _CommonClient(this.baseUrl, this.apiKey,
      Map<String, String> Function() createAuthHeader) {
    if (apiKey != null) {
      headers['Authorization'] = apiKey!;
    } else {
      headers.addAll(createAuthHeader());
    }
  }

  Map<String, dynamic> _createJsonFromResponse(http.Response resp) {
    final result = jsonDecode(resp.body);

    result['status_code'] = resp.statusCode;

    return result;
  }

  Future<Map<String, dynamic>> post(Requestable baseRequest) => http
      .post(
        _buildUri(baseRequest),
        headers: headers,
        body: jsonEncode(baseRequest.toJson()),
      )
      .then(_createJsonFromResponse);

  Future<Map<String, dynamic>> put(Requestable baseRequest) => http
      .put(
        _buildUri(baseRequest),
        headers: headers,
        body: jsonEncode(baseRequest.toJson()),
      )
      .then(_createJsonFromResponse);

  Future<Map<String, dynamic>> get(Requestable baseRequest) => http
      .get(
        _buildUri(baseRequest),
        headers: headers,
      )
      .then(_createJsonFromResponse);

  Future<Map<String, dynamic>> delete(Requestable baseRequest) => http
      .delete(
        _buildUri(baseRequest),
        headers: headers,
      )
      .then(_createJsonFromResponse);

  Uri _buildUri(Requestable baseRequest) {
    final baseUri = Uri.parse(baseUrl);

    if (baseUri.scheme == 'https') {
      return Uri.https(baseUri.host, '${baseUri.path}${baseRequest.getPath()}',
          baseRequest.getQueryParams());
    }

    return Uri.http(
        '${baseUri.host}:${baseUri.port}',
        '${baseUri.path}${baseRequest.getPath()}',
        baseRequest.getQueryParams());
  }
}
