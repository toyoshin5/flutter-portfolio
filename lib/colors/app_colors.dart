import 'package:flutter/material.dart';

class AppColors {
  static Color groupedBackround(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.grey[100]!
        : Colors.black;
  }

  static Color backGround(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.white
        : Colors.grey[900]!;
  }

  static Color primary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.blue
        : Colors.blue[200]!;
  }

  static Color secondary(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light
        ? Colors.black38
        : Colors.white70;
  }
}
