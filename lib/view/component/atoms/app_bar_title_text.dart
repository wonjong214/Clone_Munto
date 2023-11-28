import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget{
  String text;
  FontWeight? fontWeight;

  AppBarTitle(this.text,{this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'apptitle',
        fontWeight: fontWeight,
        fontSize: 21,
      ),
    );
  }
}