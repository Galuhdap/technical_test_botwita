import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:technical_test_borwita/config/flavor_config.dart';
import 'package:technical_test_borwita/core/utils/api_error_handler.dart';
import 'package:technical_test_borwita/data/model/product/get_product_response.dart';

class ProductRemoteDatasource {
  final http.Client _client;
  final baseUrl = FlavorConfig.instance.baseUrl;

  ProductRemoteDatasource({http.Client? client})
    : _client = client ?? http.Client();

  Future<Either<String, List<GetProductResponse>>> getProduct() async {
    try {
      final url = Uri.parse('$baseUrl/products');

      final response = await _client.get(
        url,
        headers: {'Content-Type': 'application/json'},
      );

      if (response.statusCode == 200) {
        final products = getProductResponseFromJson(response.body);

        return Right(products);
      } else {
        final errorMessage = ApiErrorHandler.mapError(response);
        return Left(errorMessage);
      }
    } catch (e) {
      return Left(
        'Network error: Failed to fetch active jobs - ${e.toString()}',
      );
    }
  }
}
