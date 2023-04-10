import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';

import '../data/color.dart';
import '../data/data.dart';
import 'arrow_botton.dart';

class ScrollableRadioButton extends StatelessWidget {
  ScrollableRadioButton({
    super.key,
    required this.controller,
    required this.scrollLeft,
    required this.scrollRight,
    required this.radioButtonValue,
  });

  Function()? scrollLeft;
  Function()? scrollRight;
  Function(String) radioButtonValue;
  ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ArrowButton(
          ontap: scrollLeft,
          alignment: Alignment.centerLeft,
          icon: Icons.arrow_back_ios_new_rounded,
        ),
        Expanded(
          flex: 10,
          child: CustomRadioButton(
            elevation: 0,
            width: 50,
            height: 50,
            buttonLables: buttonValues,
            buttonValues: buttonValues,
            enableShape: true,
            radius: 2,
            scrollController: controller,
            shapeRadius: 2,
            radioButtonValue: radioButtonValue,
            defaultSelected: "1",
            unSelectedBorderColor: Color(0xffC4C4C4),
            selectedBorderColor: Color(0xff5F4BA3),
            selectedColor: secendgrey,
            unSelectedColor: Colors.transparent,
          ),
        ),
        ArrowButton(
          ontap: scrollRight,
          alignment: Alignment.centerRight,
          icon: Icons.arrow_forward_ios_rounded,
        ),
      ],
    );
  }
}
