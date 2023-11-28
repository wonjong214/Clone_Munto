import 'package:flutter/material.dart';

class AnalysisResultsButton extends StatelessWidget{
  Color color;
  String text;

  AnalysisResultsButton({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7,),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          color: Colors.white,
        ),
      ),
    );
  }
}