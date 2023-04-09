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
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          SvgPicture.asset(icon),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
