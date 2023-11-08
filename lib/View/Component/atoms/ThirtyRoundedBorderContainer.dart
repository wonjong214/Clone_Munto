import 'package:flutter/material.dart';

class ThirtyRoundedBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? padding;
  Color? bordercolor;
  Color? backcolor;
  Widget? widget;


  ThirtyRoundedBorderContainer({required this.padding, required this.bordercolor, this.backcolor = Colors.transparent, required this.widget});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backcolor,
          border: Border.all(
              color: bordercolor!,
              width: 1
          )
      ),
      child: widget,
    );
  }
}