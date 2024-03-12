import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.labelText,
    required this.keyboardType,
    required this.controller,
    required this.obscureText,
    required this.validator,
    this.suffixIcon,
  });
  final String labelText;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final bool obscureText;
  final String? Function(String?) validator;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator:validator,
      style: TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.white)
      )
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
    );
  }
}
