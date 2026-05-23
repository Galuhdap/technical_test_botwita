import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:technical_test_borwita/core/components/buttons.dart';
import 'package:technical_test_borwita/core/extensions/build_context_ext.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';
import 'package:technical_test_borwita/core/styles/app_colors.dart';
import 'package:technical_test_borwita/core/styles/app_sizes.dart';
import 'package:technical_test_borwita/presentations/auth/login/bloc/login_bloc.dart';
import 'package:technical_test_borwita/presentations/auth/widget/input_widget.dart';
import 'package:technical_test_borwita/presentations/product/page/product_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Mengambil tinggi layar untuk membuat efek "Center" buatan
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // resizeToAvoidBottomInset: false dihapus agar scaffold bisa merespons keyboard
      body: SafeArea(
        child: SingleChildScrollView(
          // Menggunakan padding atas dinamis (15% dari tinggi layar) sebagai pengganti widget Center
          padding: EdgeInsets.only(
            left: AppSizes.s16,
            right: AppSizes.s16,
            top: screenHeight * 0.15,
            bottom: AppSizes.s24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Technical Test Borwita',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: AppColors.colorDefaultStrong,
                  fontSize: 24,
                ),
              ),
              24.height,
              Text(
                'Sign In untuk melanjutkan',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),

              24.height,
              InputWidget(
                label: 'Username',
                hintText: 'Masukkan username',
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
              ),
              AppSizes.s16.height,
              InputWidget(
                label: 'Password',
                hintText: 'Masukkan password',
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                isPassword: true,
              ),
              AppSizes.s16.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      // context.push(const ForgotPasswordPage());
                    },
                    child: Text(
                      'Lupa Password?',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              AppSizes.s24.height,
              BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  state.maybeWhen(
                    success: (authResponse) {
                      context.pushReplacement(ProductPage());
                    },
                    failed: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: Colors.red,
                        ),
                      );
                    },
                    orElse: () {},
                  );
                },
                builder: (context, state) {
                  final isLoading = state.maybeWhen(
                    loading: () => true,
                    orElse: () => false,
                  );

                  return Button.filled(
                    onPressed: isLoading
                        ? () {}
                        : () {
                            context.read<LoginBloc>().add(
                              LoginEvent.loginRequested(
                                username: emailController.text.trim(),
                                password: passwordController.text,
                              ),
                            );
                          },
                    label: isLoading ? 'Loading...' : 'Masuk',
                    disabled: isLoading,
                  );
                },
              ),
              AppSizes.s24.height,
              Row(
                children: [
                  Text(
                    'Belum punya akun?',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  AppSizes.s4.width,
                  InkWell(
                    onTap: () {
                      // context.push(const RegisterPage());
                    },
                    child: Text(
                      'Sign Up',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
