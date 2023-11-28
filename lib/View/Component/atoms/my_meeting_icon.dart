import 'package:flutter/material.dart';

class MyMeetingIcon extends StatelessWidget{
  IconData _icon;

  MyMeetingIcon(this._icon);

  @override
  Widget build(BuildContext context) {
    return Icon(_icon, size: 30, color: Colors.grey,);
  }
}