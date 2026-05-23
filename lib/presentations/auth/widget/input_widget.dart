import 'package:flutter/material.dart';
import 'package:technical_test_borwita/core/components/input_component.dart';
import 'package:technical_test_borwita/core/extensions/sized_box_ext.dart';
import 'package:technical_test_borwita/core/styles/app_sizes.dart';

class InputWidget extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool isPassword;

  // --- TAMBAHAN: Parameter errorText ---
  final String? errorText;

  const InputWidget({
    super.key,
    required this.label,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
    this.isPassword = false,
    this.errorText, // --- TAMBAHAN ---
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
        AppSizes.s8.height,
        CustomTextField(
          controller: controller,
          keyboardType: keyboardType,
          hintText: hintText,
          isObscure: isPassword,
          suffixIcon: isPassword,
          // --- TAMBAHAN: Teruskan ke CustomTextField ---
          errorText: errorText,
        ),
      ],
    );
  }
}
