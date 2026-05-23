import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:technical_test_borwita/core/extensions/build_context_ext.dart';
import 'package:technical_test_borwita/data/datasource/auth/auth_local_datasource.dart';
import 'package:technical_test_borwita/presentations/auth/login/page/login_page.dart';
import 'package:technical_test_borwita/presentations/product/page/product_page.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  final AuthLocalDatasource authLocalDatasource;

  SplashCubit(this.authLocalDatasource) : super(SplashState.initial());

  Future<void> checkLoginStatus(BuildContext context) async {
    emit(SplashState.loading());

    await Future.delayed(const Duration(seconds: 2));

    final token = await authLocalDatasource.getToken();

    print('TOKEN SPLASH: $token');

    if (token != null && token.isNotEmpty) {
      emit(SplashState.authenticated());

      context.pushReplacement(ProductPage());
    } else {
      emit(SplashState.unauthenticated());

      context.pushReplacement(LoginPage());
    }
  }
}
