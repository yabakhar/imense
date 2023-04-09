import 'package:flutter/material.dart';

class ChartContainer extends StatelessWidget {
  ChartContainer({
    super.key,
    required this.subTitle,
    required this.title,
    required this.chart,
    this.onfiltter,
  });
  String title;
  String subTitle;
  Widget chart;
  Function()? onfiltter;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.all(18),
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    subTitle,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffA4A4A4),
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: onfiltter,
                child: const Icon(
                  Icons.more_vert_outlined,
                  color: Color(0xffA4A4A4),
                ),
              ),
            ],
          ),
          Expanded(
            child: chart,
          )
        ],
      ),
    );
  }
}
