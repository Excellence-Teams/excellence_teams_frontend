import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:excellence_teams_frontend/data/repository/authentication.repository.dart';
import 'package:excellence_teams_frontend/util/log.dart';

class ApiException implements Exception {
  final int statusCode;
  final Map<String, dynamic> body;

  ApiException({required this.statusCode, required this.body});

  @override
  String toString() => 'ApiException {statusCode: $statusCode, body: $body}';
}

class Api {
  late final Dio _dio;
  final _apiHost = 'localhost:8080/api/';

  AuthenticationRepository? _authenticationRepository;

  // AuthenticationRepository should only be once settable
  set authenticationRepository(
      AuthenticationRepository? authenticationRepository) {
    _authenticationRepository ??= authenticationRepository;
  }

  Api() {
    _dio = Dio()
      ..options.baseUrl = _apiHost
      ..options.connectTimeout = 5000
      ..options.receiveTimeout = 3000;
  }

  Future<dynamic> get(
    String path, {
    Map<String, dynamic>? body,
  }) async {
    try {
      final headers = _getHeaders();
      if (headers != null) {
        debugLogError('tried to make request without jwt token loaded');
        return;
      }
      final response = await _dio.get(
        path,
        queryParameters: body,
        options: Options(headers: headers!),
      );
      debugLog("called GET $path with body $body and got response $response");
      return json.decode(response.data);
    } catch (e, s) {
      debugLogError('error in GET request with path $path', e, s);
    }
  }

  Map<String, dynamic>? _getHeaders() {
    return _authenticationRepository?.state.mapOrNull(
      signedIn: (state) => {
        'Authorization': '${state.token}',
      },
      noAccount: (state) => {
        'Authorization': '${state.token}',
      },
    );
  }
}
