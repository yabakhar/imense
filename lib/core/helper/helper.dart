import 'package:flutter/material.dart';

class Helper {
  static final Helper _instance = Helper._internal();
  factory Helper() {
    return _instance;
  }

  Helper._internal() {}

  Color getColor(int type) {
    switch (type) {
      case 0:
        return const Color(0xffD4EFFF);
      case 1:
        return const Color(0xffD4EFFF);
      case 2:
        return const Color(0xffFFEDAA);
      case 3:
        return const Color(0xffBFFFC9);
      case 4:
        return const Color(0xffE9E9E9);
      default:
        return const Color(0xffD4EFFF);
    }
  }

  String getIcon(int type) {
    switch (type) {
      case 0:
        return "assets/icons/observationIcon.svg";
      case 1:
        return "assets/icons/pause.svg";
      case 2:
        return "assets/icons/progress.svg";
      case 3:
        return "assets/icons/verify.svg";
      case 4:
        return "assets/icons/hide.svg";
      default:
        return "assets/icons/verify.svg";
    }
  }

  double getTextWidth(String text) {
    final TextPainter textPainter = TextPainter(
        textDirection: TextDirection.ltr,
        text: TextSpan(text: text, style: TextStyle(fontSize: 20.0)))
      ..layout();
    return textPainter.width;
  }
}
