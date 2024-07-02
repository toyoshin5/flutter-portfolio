import 'package:flutter/material.dart';

class AppColors {
  static Color groupedBackround(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? const Color(0xFFF0F0F0) //Color(0xFFEBEAEF)
        : Colors.black;
  }

  static Color backGround(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.grey[900]!;
  }

  static Color grey(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? const Color(0xFFDCDCDC)
        : Colors.grey[800]!;
  }

  static Color primary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.blue
        : Colors.blue[200]!;
  }

  static Color label(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.black
        : Colors.white;
  }

  static Color secondary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.black54
        : Colors.white70;
  }
}
