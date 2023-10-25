import 'package:flutter/material.dart';

class MyMeetingIcon_Icon extends StatelessWidget{
  IconData _icon;

  MyMeetingIcon_Icon(this._icon);

  @override
  Widget build(BuildContext context) {
    return Icon(_icon, size: 30, color: Colors.grey,);
  }
}