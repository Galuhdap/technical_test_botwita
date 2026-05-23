import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technical_test_borwita/core/extensions/build_context_ext.dart';
import 'package:technical_test_borwita/presentations/auth/login/page/login_page.dart';
import 'package:technical_test_borwita/presentations/product/page/product_page.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashState.initial());

  Future<void> checkLoginStatus(BuildContext context) async {
    emit(SplashState.loading());

    await Future.delayed(const Duration(seconds: 2));

    final prefs = await SharedPreferences.getInstance();

    // contoh ambil token
    final token = prefs.getString('token');

    if (token != null && token.isNotEmpty) {
      emit(SplashState.authenticated());

      context.pushReplacement(ProductPage());
    } else {
      emit(SplashState.unauthenticated());

      context.pushReplacement(LoginPage());
    }
  }
}
