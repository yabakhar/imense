import 'package:flutter/material.dart';

class SubmitedButton extends StatelessWidget {
  SubmitedButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onsubmitediting,
  });
  IconData icon;
  String text;
  Function() onsubmitediting;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onsubmitediting,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: const Color(0xff1582B0)),
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          color: const Color(0xff25A5DC),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(
                icon,
                size: 26,
                color: Colors.white,
              ),
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
