import 'package:flutter/material.dart';

class MyMeetingGroupBody_Text extends StatelessWidget{
  String _text;

  MyMeetingGroupBody_Text(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: 17,
          color: Color(0xff707070),
          fontWeight: FontWeight.w600
      ),
    );
  }
}