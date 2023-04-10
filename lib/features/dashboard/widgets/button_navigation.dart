import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonNavigation extends StatelessWidget {
  ButtonNavigation({
    super.key,
    required this.assetName,
    required this.selected,
    required this.onPressed,
  });
  String assetName;
  bool selected;
  Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: (selected == true) ? Color(0xffE9F1F5) : Color(0xffF5F5F5),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
      child: IconButton(
        icon: SvgPicture.asset(
          assetName,
          height: 20,
          color: (selected == true) ? Color(0xff1488CC) : Color(0xffA4A4A4),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
