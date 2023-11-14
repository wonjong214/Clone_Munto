import 'package:flutter/material.dart';

class Follow_Button extends StatelessWidget{
  bool selected = false;

  Follow_Button({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 8,
          bottom: 8),
      decoration: BoxDecoration(
          borderRadius:
          BorderRadius.circular(15),
          color: selected ? Colors.transparent : Colors.red,
          border:
          Border.all(color: Colors.red)),
      child: Text(
        selected ? '팔로잉': '팔로우',
        style: TextStyle(color: selected ? Colors.red : Colors.white),
      ),
    );
  }
}