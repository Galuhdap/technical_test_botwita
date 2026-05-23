import 'package:dartz/dartz.dart';
import 'package:technical_test_borwita/data/datasource/auth/auth_remote_datasource.dart';
import 'package:technical_test_borwita/data/model/auth/login_response.dart';

class AuthRepository {
  final AuthRemoteDatasource _remoteDatasource;

  AuthRepository(this._remoteDatasource);

  // LOGIN
  Future<Either<String, PostLoginResponse>> login({
    required String username,
    required String password,
  }) async {
    return await _remoteDatasource.login(
      username: username,
      password: password,
    );
  }
}
