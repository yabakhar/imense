import 'package:flutter/material.dart';

class SortHeader extends StatelessWidget {
  const SortHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Navigator.maybePop(context);
            },
            child: Icon(
              Icons.close,
              size: 26,
            ),
          ),
          Text(
            "Filter by",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            "Clear",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff1488CC),
            ),
          ),
        ],
      ),
    );
  }
}
