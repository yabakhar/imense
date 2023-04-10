import 'package:flutter/material.dart';

class BookMarkInput extends StatelessWidget {
  BookMarkInput({
    super.key,
    this.checkMark = false,
    required this.changeBookMark,
  });
  bool checkMark;
  Function()? changeBookMark;
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: const Text(
              "Site 001",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: changeBookMark,
                child: Container(
                  width: 40,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.bookmark_outlined,
                    size: 30,
                    color: (checkMark == true) ? Colors.amber : Colors.grey,
                  ),
                ),
              ),
              Container(
                width: 40,
                alignment: Alignment.center,
                child: const Icon(
                  Icons.arrow_drop_down_outlined,
                  size: 30,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
