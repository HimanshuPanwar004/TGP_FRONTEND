import 'package:flutter/material.dart';

// Step 1: Define a Callback.
typedef Callback = String? Function(String? value);

class InputTextFormField extends StatelessWidget {
  const InputTextFormField({
    super.key,
    this.labelText = '',
    this.titleTextAlign = TextAlign.center,
    required this.isPassword,
    required this.hintText,
    required this.fieldValidator,
  });

  final String labelText;
  final TextAlign titleTextAlign;
  final bool isPassword;
  final String hintText;
  final Callback fieldValidator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // The validator receives the text that the user has entered.
      validator: (value) {
        return fieldValidator(value);
      },
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
      ),
    );
  }
}
