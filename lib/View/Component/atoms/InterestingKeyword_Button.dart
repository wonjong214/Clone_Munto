import 'package:flutter/material.dart';

import 'ThirtyRoundedBorderContainer.dart';

class InterestingKeyword_Button extends StatelessWidget{
  bool selected;
  String text;
  final void Function() onChanged;
  InterestingKeyword_Button({Key? key, required this.selected, required this.text, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onChanged,
      child: ThirtyRoundedBorderContainer(
        padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
        bordercolor: selected ? Colors.red : Colors.grey.shade300,
        backcolor: selected ? Colors.red : Colors.transparent,
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