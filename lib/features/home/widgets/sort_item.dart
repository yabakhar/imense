import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SortItem extends StatelessWidget {
  SortItem({
    super.key,
    required this.title,
    required this.icon,
  });
  String title;
  String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(flex: 2, child: SvgPicture.asset(icon, height: 25)),
          Expanded(
            flex: 4,
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                color: Color(0xffABABAB),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color(0xffABABAB),
            ),
          ),
        ],
      ),
    );
  }
}
