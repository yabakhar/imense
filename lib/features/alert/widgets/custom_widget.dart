import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  CustomWidget({
    super.key,
    required this.widget,
    required this.title,
    this.icontitle,
  });
  Widget widget;
  Widget? icontitle;
  String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                icontitle ?? Container(),
              ],
            ),
          ),
          Expanded(child: widget)
        ],
      ),
    );
  }
}
