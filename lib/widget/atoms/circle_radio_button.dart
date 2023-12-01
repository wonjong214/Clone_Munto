import 'package:flutter/material.dart';

class CircleRadioButton extends StatelessWidget{
  Color? bordercolor;
  Color? inCircleColor;

  CircleRadioButton({required this.bordercolor,required this.inCircleColor});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 22,
      height: 22,
      padding: EdgeInsets.all(4.5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: bordercolor!,),
        color : Colors.transparent,
      ),
      child: CircleAvatar(
        backgroundColor: inCircleColor,
      ),
    );
  }
}