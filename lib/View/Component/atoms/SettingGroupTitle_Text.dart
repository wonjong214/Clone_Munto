import 'package:flutter/material.dart';

class SettingGroupTitle extends StatelessWidget{
  String text;

  SettingGroupTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,),
      height: 60,
      alignment: Alignment.centerLeft,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500
        ),
      ),
    );
  }
}