import 'package:flutter/material.dart';

import '../../atoms/CircleIcon_Icon.dart';

class CircleIconText_Column extends StatelessWidget{
  double? circlesize;
  Widget? icon;
  String text;

  CircleIconText_Column({required this.circlesize, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 30,),
        CircleIcon(
          width: circlesize,
          height: circlesize,
          backgroundcolor: Colors.grey.shade100,
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