import 'package:flutter/material.dart';

class CommonBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? padding;
  double circular;
  Color? bordercolor;
  double borderwidth;
  Color? backcolor;
  Widget? widget;
  double? width;
  double? height;


  CommonBorderContainer({this.padding, this.circular = 30, this.bordercolor = Colors.transparent, this.borderwidth =1,
    this.backcolor = Colors.transparent, required this.widget, this.width, this.height});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circular),
          color: backcolor,
          border: Border.all(
              color: bordercolor!,
              width: borderwidth
          )
      ),
      child: widget,
    );
  }
}