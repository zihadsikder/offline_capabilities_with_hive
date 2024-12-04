import 'package:flutter/material.dart';

class AppTextStyle {

  static TextStyle headerStyle({Color color = Colors.black}) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: color,
      height: 1.5,
    );
  }

  static TextStyle normalTextStyle(
      {Color color = Colors.black, double fontSize = 14}) {
    return TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: fontSize,
      color: color,
      height: 1.5,
    );
  }
}
