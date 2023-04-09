import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../core/data/data.dart';
import 'indicator.dart';

class Piechartwidget extends StatelessWidget {
  const Piechartwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 1,
      child: Row(
        children: [
          Expanded(
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(),
                  sectionsSpace: 4,
                  centerSpaceRadius: 40,
                  sections: showingSections(),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const <Widget>[
              Indicator(color: Color(0xff42A4DF), text: 'Pending'),
              SizedBox(height: 4),
              Indicator(color: Colors.yellow, text: 'Progress'),
              SizedBox(height: 4),
              Indicator(color: Colors.green, text: 'Resolved'),
              SizedBox(height: 4),
              Indicator(color: Colors.grey, text: 'Closed'),
              SizedBox(height: 18),
            ],
          ),
        ],
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    return piePoint.map((point) {
      return PieChartSectionData(
        color: point.color,
        value: point.value,
        title: point.title ?? "",
        radius: point.radius,
      );
    }).toList();
  }
}
// touchCallback: (FlTouchEvent event, pieTouchResponse) {
//   setState(() {
//     if (!event.isInterestedForInteractions ||
//         pieTouchResponse == null ||
//         pieTouchResponse.touchedSection == null) {
//       touchedIndex = -1;
//       return;
//     }
//     touchedIndex =
//         pieTouchResponse.touchedSection!.touchedSectionIndex;
//   });
// },
