import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:technical_test_borwita/config/flavor_config.dart';
import 'package:technical_test_borwita/core/utils/api_error_handler.dart';
import 'package:technical_test_borwita/core/utils/api_logger.dart';
import 'package:technical_test_borwita/data/datasource/auth/auth_local_datasource.dart';
import 'package:technical_test_borwita/data/model/auth/login_response.dart';

class AuthRemoteDatasource {
  final http.Client _client;
  final AuthLocalDatasource _localDatasource;
  final baseUrl = FlavorConfig.instance.baseUrl;

  AuthRemoteDatasource({
    http.Client? client,
    required AuthLocalDatasource localDatasource,
  }) : _client = client ?? http.Client(),
       _localDatasource = localDatasource;

  Future<Either<String, PostLoginResponse>> login({
    required String username,
    required String password,
  }) async {
    try {
      final url = Uri.parse('$baseUrl/auth/login');

      final response = await _client.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({'username': username, 'password': password}),
      );

      ApiLogger.logResponse(
        url: url.toString(),
        statusCode: response.statusCode,
        responseBody: response.body,
      );

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final Map<String, dynamic> responseBody = jsonDecode(response.body);

        final authResponse = PostLoginResponse.fromJson(responseBody);
        await _localDatasource.saveToken(authResponse.token);

        return Right(authResponse);
      } else {
        final errorMessage = ApiErrorHandler.mapError(response);
        return Left(errorMessage);
      }
    } catch (e) {
      return Left(
        'Network error: Failed to connect to server - ${e.toString()}',
      );
    }
  }
}
