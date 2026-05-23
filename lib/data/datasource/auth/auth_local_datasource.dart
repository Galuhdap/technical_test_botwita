import 'dart:convert';

import 'package:technical_test_borwita/config/shared_prefrences_config.dart';

class AuthLocalDatasource {
  // SAVE USER
  Future<void> saveUser(Map<String, dynamic> user) async {
    await SharedPreferencesUtils.addUser(jsonEncode(user));
  }

  // GET USER
  Future<Map<String, dynamic>?> getUser() async {
    final result = await SharedPreferencesUtils.getUser();

    if (result == null) return null;

    return jsonDecode(result);
  }

  // REMOVE USER
  Future<void> removeUser() async {
    await SharedPreferencesUtils.deleteUser();
  }

  // SAVE TOKEN
  Future<void> saveToken(String token) async {
    await SharedPreferencesUtils.addAuthToken(token);
  }

  // GET TOKEN
  Future<String?> getToken() async {
    return await SharedPreferencesUtils.getAuthToken();
  }

  // REMOVE TOKEN
  Future<void> removeToken() async {
    await SharedPreferencesUtils.deleteAuthToken();
  }

  // CHECK LOGIN
  Future<bool> isLogin() async {
    final token = await getToken();

    return token != null && token.isNotEmpty;
  }

  // LOGOUT
  Future<void> logout() async {
    await removeUser();
    await removeToken();
  }
}
