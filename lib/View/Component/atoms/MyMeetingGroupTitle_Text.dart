import 'package:flutter/material.dart';

class MyMeetingGroupTitle_Text extends StatelessWidget{
  String _text;
  double? _size;

  MyMeetingGroupTitle_Text(this._text,this._size);

  @override
  Widget build(BuildContext context) {
    return Text(
      _text,
      style: TextStyle(
          fontSize: _size!,
          fontWeight: FontWeight.w500
      ),
    );
  }
}