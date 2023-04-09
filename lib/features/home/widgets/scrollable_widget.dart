import 'package:flutter/material.dart';

class ScrollableWidget extends StatelessWidget {
  ScrollableWidget({
    super.key,
    required this.length,
    required this.height,
    required this.separatedWidth,
    required this.itemBuilder,

  });
  int length;
  double height;
  double separatedWidth;

  Widget Function(BuildContext, int) itemBuilder;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.separated(
        itemCount: length,
        separatorBuilder: (context, index) {
          return Container(
            width: separatedWidth,
            color: Colors.transparent,
          );
        },
        itemBuilder: itemBuilder,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
