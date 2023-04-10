import 'package:flutter/material.dart';

class RoomSwitch extends StatelessWidget {
  RoomSwitch({
    super.key,
    required this.selected,
    required this.onclickleft,
    required this.onclickright,
    required this.leftValue,
    required this.rightValue,
  });
  bool selected;
  Function(bool) onclickleft;
  Function(bool) onclickright;
  String leftValue;
  String rightValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffC4C4C4)),
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                onclickleft(true);
              },
              child: Container(
                alignment: Alignment.center,
                color: (selected != true) ? Color(0xff422B8F) : Colors.white,
                child: Text(
                  leftValue,
                  style: TextStyle(
                    color: (selected != true) ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                onclickleft(false);
              },
              child: Container(
                color: (selected == true) ? Color(0xff422B8F) : Colors.white,
                alignment: Alignment.center,
                child: Text(
                  rightValue,
                  style: TextStyle(
                    color: (selected == true) ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
