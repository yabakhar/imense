import 'package:flutter/material.dart';

import '../models/bar_point_model.dart';
import '../models/pie_point_model.dart';
import '../models/stats_model.dart';

List<BarPoint> barPoint = [
  BarPoint(x: 18, y: 1),
  BarPoint(x: 19, y: 2),
  BarPoint(x: 20, y: 1),
  BarPoint(x: 21, y: 3),
  BarPoint(x: 22, y: 0.2),
  BarPoint(x: 23, y: 1),
  BarPoint(x: 24, y: 2),
  BarPoint(x: 25, y: 4),
  BarPoint(x: 26, y: 1),
  BarPoint(x: 27, y: 0.2),
  BarPoint(x: 28, y: 2),
];

List<PiePoint> piePoint = [
  PiePoint(
    color: Colors.grey,
    value: 10,
    title: "",
    radius: 50,
  ),
  PiePoint(
    color: Colors.yellow,
    value: 30,
    title: "",
    radius: 50,
  ),
  PiePoint(
    color: const Color(0xff42A4DF),
    value: 40,
    title: "",
    radius: 50,
  ),
  PiePoint(
    color: Colors.green,
    value: 20,
    title: "",
    radius: 50,
  ),
];

List<Stats> stats = [
  Stats(
    type: 0,
    value: 150,
    title: "My observations",
  ),
  Stats(
    type: 1,
    value: 4,
    title: "Pending",
  ),
  Stats(
    type: 2,
    value: 1,
    title: "Progress",
  ),
  Stats(
    type: 3,
    value: 2,
    title: "Resolved",
  ),
  Stats(
    type: 4,
    value: 3,
    title: "Closed",
  ),
];

List<String> filters = [
  "Daily",
  "Safety",
  "Excellent",
  "Work clothes, E.P.I",
  "Bad condition",
];
List<int> timeExpected = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60];

List<String> buttonValues = [
  "-2",
  "-1",
  "0",
  "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
];
