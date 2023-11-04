import 'package:flutter/material.dart';

class CircleRadio_Button extends StatelessWidget{
  Color? bordercolor;
  Color? incirclecolor;

  CircleRadio_Button({required this.bordercolor,required this.incirclecolor});

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
        backgroundColor: incirclecolor,
      ),
    );
  }
}