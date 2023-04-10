import 'package:flutter/material.dart';

class CustomDropdown extends StatelessWidget {
  CustomDropdown({
    super.key,
    required this.values,
    required this.value,
    required this.onChange,
    this.displayValue,
  });
  List<dynamic> values;
  dynamic value;
  Function(dynamic) onChange;
  String? displayValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffC4C4C4)),
        borderRadius: const BorderRadius.all(
          Radius.circular(2),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: DropdownButton<dynamic>(
        underline: Container(),
        isExpanded: true,
        icon: const Icon(
          Icons.arrow_drop_down_outlined,
          size: 30,
          color: Colors.black,
        ),
        value: value,
        items: values.map<DropdownMenuItem<dynamic>>((dynamic item) {
          return DropdownMenuItem(
            alignment: AlignmentDirectional.centerStart,
            value: item,
            child: Text("$item $displayValue"),
          );
        }).toList(),
        onChanged: onChange,
      ),
    );
  }
}
