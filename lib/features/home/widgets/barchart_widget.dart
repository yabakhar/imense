import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/data/data.dart';

class Barchartwidget extends StatelessWidget {
  const Barchartwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceEvenly,
        barGroups: _chartGroups(),
        borderData: FlBorderData(border: const Border()),
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) => Text(value.toInt().toString()),
            ),
          ),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
        ),
      ),
    );
  }

  List<BarChartGroupData> _chartGroups() {
    return barPoint.map((point) {
      return BarChartGroupData(
        x: point.x.toInt(),
        barRods: [
          BarChartRodData(
            width: 9,
            toY: point.y,
            color: const Color(0xff1488CC),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
          ),
        ],
      );
    }).toList();
  }
}
