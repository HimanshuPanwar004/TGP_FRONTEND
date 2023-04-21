import 'package:flutter/material.dart';

abstract class AppStyledEffects {
  static const elevation6 = [
    BoxShadow(
      color: Color(0x33000000),
      blurRadius: 5,
      spreadRadius: -1,
      offset: Offset(0.0, 3.0),
    ),
    BoxShadow(
      color: Color(0x23000000),
      blurRadius: 10,
      spreadRadius: 0,
      offset: Offset(0.0, 6.0),
    ),
    BoxShadow(
      color: Color(0x1e000000),
      blurRadius: 18,
      spreadRadius: 0,
      offset: Offset(0.0, 1.0),
    )
  ];
}
