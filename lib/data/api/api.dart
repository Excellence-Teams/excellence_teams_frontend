import 'dart:convert';

import 'package:excellence_teams_client/data/repository/authentication.repository.dart';
import 'package:excellence_teams_client/services/services.dart';
import 'package:excellence_teams_client/util/log.dart';
import 'package:http/http.dart' as http;

class ApiException implements Exception {
  final int statusCode;
  final Map<String, dynamic> body;

  ApiException({required this.statusCode, required this.body});

  @override
  String toString() => 'ApiException {statusCode: $statusCode, body: $body}';
}

class Api {
  final _apiHost = 'http://localhost:8080/api/';
  final AuthenticationRepository _authenticationRepository;

  Api([AuthenticationRepository? authenticationRepository])
      : _authenticationRepository =
            authenticationRepository ?? getIt<AuthenticationRepository>();

  Future<dynamic> get(String path, {bool useHeaders = true}) async {
    try {
      final headers = _getHeaders(useAuth: useHeaders);
      if (headers == null) {
        return;
      }
      final fullPath = Uri.parse(_apiHost + path);
      final response = await http.get(
        fullPath,
        headers: headers,
      );
      debugLog("called GET $path and got response $response");
      return json.decode(response.body);
    } catch (e, s) {
      debugLogError('error in GET request with path $path', e, s);
    }
  }

  Future<dynamic> post({
    required String path,
    required Map<String, dynamic> body,
    bool useHeaders = true,
  }) async {
    try {
      final headers = _getHeaders(useAuth: useHeaders);
      if (headers == null) {
        return;
      }
      final fullPath = Uri.parse(_apiHost + path);
      final response = await http.post(
        fullPath,
        body: json.encode(body),
        headers: headers,
      );
      debugLog("called POST $path with body $body and got response $response");
      return json.decode(response.body);
    } catch (e, s) {
      debugLogError('error in POST request with path $path', e, s);
    }
  }

  Map<String, String>? _getHeaders({bool useAuth = true}) {
    if (!useAuth) {
      return {
        'accept': "*/*",
        'Content-Type': 'application/json',
      };
    }

    final token = _authenticationRepository.state.mapOrNull(
      signedIn: (state) => state.token.toString(),
      signedInWithoutAccount: (state) => state.token.toString(),
    );

    if (token == null) {
      debugLogError('jwt required, but none available');
      return null;
    }

    return {
      'Authorization': token,
      'accept': "*/*",
      'Content-Type': 'application/json',
    };
  }
}
