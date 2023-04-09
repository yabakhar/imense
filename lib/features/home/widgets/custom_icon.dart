import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/helper/helper.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({super.key, required this.type});
  int type;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Helper().getColor(type),
        child: IconButton(
          icon: SvgPicture.asset(
            Helper().getIcon(type),
            height: 19,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
