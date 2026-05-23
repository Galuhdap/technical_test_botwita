import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test_borwita/data/datasource/auth/auth_local_datasource.dart';
import 'package:technical_test_borwita/data/datasource/auth/auth_remote_datasource.dart';
import 'package:technical_test_borwita/data/repository/auth/auth_repository.dart';
import 'package:technical_test_borwita/presentations/auth/login/bloc/login_bloc.dart';
import 'package:technical_test_borwita/presentations/auth/login/page/login_page.dart';
import 'package:technical_test_borwita/presentations/splash/cubit/splash_cubit.dart';
import 'package:technical_test_borwita/presentations/splash/page/splash_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // LOCAL DATASOURCE
    final authLocalDatasource = AuthLocalDatasource();

    // REMOTE DATASOURCE
    final authRemoteDatasource = AuthRemoteDatasource(
      localDatasource: authLocalDatasource,
    );

    // REPOSITORY
    final authRepository = AuthRepository(authRemoteDatasource);

    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => SplashCubit()),
        BlocProvider<LoginBloc>(create: (context) => LoginBloc(authRepository)),
      ],
      child: MaterialApp(
        color: Colors.white,
        title: 'Flutter Demo',
        home: SplashPage(),
        routes: {'/login': (context) => const LoginPage()},
      ),
    );
  }
}
