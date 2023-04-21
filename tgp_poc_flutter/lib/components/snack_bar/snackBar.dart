import 'package:flutter/material.dart';
import './styled_text_snack_bar.dart';

class CustomWidgets {
  CustomWidgets._();
  static buildErrorSnackbar(
      BuildContext context, String message, int colorCode) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      content: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Color(colorCode)),
        child: Column(children: [
          const Text(style: AppStyledText.componentsAlertTitle, 'Alert'),
          Text(style: AppStyledText.componentsAlertDescription, message),
        ]),
      ),
    ));
  }
}
