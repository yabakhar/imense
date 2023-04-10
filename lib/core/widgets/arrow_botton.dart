import 'package:flutter/material.dart';

class ArrowButton extends StatelessWidget {
  ArrowButton({
    super.key,
    required this.ontap,
    required this.icon,
    required this.alignment,
  });
  Function()? ontap;
  IconData icon;
  Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 40,
        alignment: alignment,
        child: Icon(
          icon,
          color: Color(0xFFBAB9B9),
        ),
      ),
    );
  }
}
