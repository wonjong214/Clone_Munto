import 'package:flutter/material.dart';

class RoundedFollow_Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 7,
          bottom: 7),
      decoration: BoxDecoration(
        borderRadius:
        BorderRadius.circular(30),
        color: Color(0xfff43630),
      ),
      child: Text(
        '팔로우',
        style: TextStyle(
          color: Colors.white,
          fontSize: 15
        ),
      ),
    );
  }
}