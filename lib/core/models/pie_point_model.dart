import 'package:flutter/material.dart';

class PiePoint {
  Color color;
  double value;
  String? title;
  double? radius = 50;
  PiePoint({
    required this.color,
    required this.value,
    this.title,
    this.radius,
  });
}
