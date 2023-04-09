import 'package:flutter/material.dart';
import 'package:imense/features/home/widgets/piechart_widget.dart';

import '../../../core/data/data.dart';
import '../../../core/helper/helper.dart';
import '../widgets/barchart_widget.dart';
import '../widgets/chart_container.dart';
import '../widgets/custom_icon.dart';
import '../widgets/observation_fillter.dart';
import '../widgets/scrollable_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: const Color(0x00F2F2F2),
        padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
        child: Column(
          children: [
            ScrollableWidget(
              height: 95,
              length: filters.length,
              separatedWidth: 15,
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  width: 230,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Colors.white,
                  ),
                  child: ListTile(
                    leading: CustomIcon(type: stats[index].type),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text(stats[index].value.toString()),
                    ),
                    subtitle: Text(stats[index].title.toString()),
                  ),
                );
              },
            ),
            const SizedBox(height: 15),
            ScrollableWidget(
              height: 50,
              length: filters.length,
              separatedWidth: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Container(
                    alignment: Alignment.center,
                    width: Helper().getTextWidth(filters[index]) + 30.0,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 1),
                        ),
                      ],
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(filters[index]),
                        const Icon(Icons.close, size: 18)
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 10),
            ChartContainer(
              title: "My observations",
              subTitle: "Statistics",
              chart: const Barchartwidget(),
              onfiltter: () {
                showSheet(context);
              },
            ),
            const SizedBox(height: 10),
            ChartContainer(
              title: "Progress",
              subTitle: "Today",
              chart: const Piechartwidget(),
            ),
          ],
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      builder: (_) {
        return ObservationFillter();
      },
    );
  }
}
