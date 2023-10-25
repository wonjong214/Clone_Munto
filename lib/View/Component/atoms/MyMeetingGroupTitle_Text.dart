import 'package:flutter/material.dart';

class MyMeetingGroupTitle_Text extends StatelessWidget{
  String _text;

  MyMeetingGroupTitle_Text(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600
      ),
    );
  }
}