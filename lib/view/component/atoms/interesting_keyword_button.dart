import 'package:flutter/material.dart';

import 'common_border_container.dart';

class InterestingKeywordButton extends StatelessWidget{
  bool selected;
  String text;
  final void Function() onChanged;
  InterestingKeywordButton({Key? key, required this.selected, required this.text, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: CommonBorderContainer(
        padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
        borderColor: selected ? Colors.red : Colors.grey.shade300,
        backColor: selected ? Colors.red : Colors.transparent,
        widget: Text(
          text,
          style: TextStyle(
              fontSize: 15,
            color: selected ? Colors.white : Colors.black
          ),
        ),
      ),
    );
  }
}