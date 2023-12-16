import 'package:flutter/material.dart';
import 'package:ieee_event_app/core/constants/index.dart';
import 'package:ieee_event_app/core/extensions/index.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    required this.controller,
    required this.text,
    this.hint,
    super.key,
    this.obscureText = false,
    this.validator,
    this.textInputType,
    this.suffixIcon,
  });
  final String? hint;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType? textInputType;
  final String text;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        labelStyle: Theme.of(context).textTheme.bodyMedium,
        filled: true,
        suffixIcon: suffixIcon,
        fillColor: ColorConstants.formColor,
        border: OutlineInputBorder(
          borderRadius: context.borderHigh,
          borderSide: BorderSide.none,
        ),
      ),
      validator: validator,
      controller: controller,
      keyboardType: textInputType,
      obscureText: obscureText,
    );
  }
}
