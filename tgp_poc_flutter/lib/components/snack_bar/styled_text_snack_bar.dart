import 'package:flutter/material.dart';

abstract class AppStyledText {
  static const componentsAlertTitle = const TextStyle(
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto-Medium",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15000000596046448);
  static componentsAlertTitleColor(Color color) => TextStyle(
      fontSize: 16,
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto-Medium",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15000000596046448);

  static const componentsAlertDescription = const TextStyle(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto-Medium",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15000000596046448);
  static componentsAlertDescriptionColor(Color color) => TextStyle(
      fontSize: 14,
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto-Medium",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.15000000596046448);

  static const componentsButtonSmall = const TextStyle(
      fontSize: 13,
      color: Colors.transparent,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto-Medium",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.46000000834465027);
  static componentsButtonSmallColor(Color color) => TextStyle(
      fontSize: 13,
      color: color,
      fontWeight: FontWeight.w500,
      fontFamily: "Roboto-Medium",
      fontStyle: FontStyle.normal,
      letterSpacing: 0.46000000834465027);
}
