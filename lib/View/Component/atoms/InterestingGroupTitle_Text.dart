import 'package:flutter/material.dart';

class InterestingGroupTitle_Text extends StatelessWidget{
  String text;

  InterestingGroupTitle_Text({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600
      ),
    );
  }
}