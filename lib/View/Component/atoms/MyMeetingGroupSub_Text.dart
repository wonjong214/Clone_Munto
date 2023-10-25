import 'package:flutter/material.dart';

class MyMeetingGroupSub_Text extends StatelessWidget{
  String _text;

  MyMeetingGroupSub_Text(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: 15,
          color: Color(0xffa9a9a9)
      ),
    );
  }
}