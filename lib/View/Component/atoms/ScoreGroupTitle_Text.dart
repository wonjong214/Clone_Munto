import 'package:flutter/material.dart';

class ScoreGroupTitle_Text extends StatelessWidget{
  String text;

  ScoreGroupTitle_Text({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17
      ),
    );
  }
}