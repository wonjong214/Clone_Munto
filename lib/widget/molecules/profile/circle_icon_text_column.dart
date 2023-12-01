import 'package:flutter/material.dart';

import '../../atoms/circle_icon.dart';

class CircleIconTextColumn extends StatelessWidget{
  double? circleSize;
  Widget? icon;
  String text;

  CircleIconTextColumn({required this.circleSize, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 30,),
        CircleIcon(
          width: circleSize,
          height: circleSize,
          backgroundColor: Colors.grey.shade100,
          icon: icon,
        ),
        SizedBox(height: 15,),
        Text(
          text,
          style: TextStyle(
              fontSize: 15,
              height: 1.5
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

}