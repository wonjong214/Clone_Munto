import 'package:flutter/material.dart';

class CommonBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? padding;
  double circular;
  Color? borderColor;
  double borderWidth;
  Color? backColor;
  Widget? widget;
  double? width;
  double? height;


  CommonBorderContainer({this.padding, this.circular = 30, this.borderColor = Colors.transparent, this.borderWidth =1,
    this.backColor = Colors.transparent, required this.widget, this.width, this.height});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(circular),
          color: backColor,
          border: Border.all(
              color: borderColor!,
              width: borderWidth
          )
      ),
      child: widget,
    );
  }
}