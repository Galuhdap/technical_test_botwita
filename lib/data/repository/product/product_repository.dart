import 'package:dartz/dartz.dart';
import 'package:technical_test_borwita/data/datasource/product/product_remote_datasource.dart';
import 'package:technical_test_borwita/data/model/product/get_product_response.dart';

class ProductRepository {
  final ProductRemoteDatasource _remoteDatasource;

  ProductRepository(this._remoteDatasource);

  Future<Either<String, List<GetProductResponse>>> getProduct() async {
    return await _remoteDatasource.getProduct();
  }
}
