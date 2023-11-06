import 'package:flutter/material.dart';

class AnalysisResultsBodyTitle extends StatelessWidget{
  Color color;
  String text;

  AnalysisResultsBodyTitle({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: color,radius: 5,),
        SizedBox(width: 5,),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}