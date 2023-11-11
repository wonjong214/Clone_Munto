import 'package:flutter/material.dart';

class ThirtyRoundedBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? padding;
  Color? bordercolor;
  Color? backcolor;
  Widget? widget;
  double? width;
  double? height;


  ThirtyRoundedBorderContainer({required this.padding, required this.bordercolor,
    this.backcolor = Colors.transparent, required this.widget, this.width, this.height});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
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