import 'package:flutter/material.dart';

class PropensityReportGroupTitle_Text extends StatelessWidget{
  String text;

  PropensityReportGroupTitle_Text({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 17,
      ),
    );
  }
}