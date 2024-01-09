import 'package:flutter/material.dart';

class CommonBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? padding;
  BorderRadiusGeometry? borderRadius;
  Color? borderColor;
  double borderWidth;
  Color? backColor;
  Widget? widget;
  double? width;
  double? height;
  AlignmentGeometry? alignment;


  CommonBorderContainer({this.padding, this.borderRadius, this.borderColor = Colors.transparent, this.borderWidth =0,
    this.backColor = Colors.transparent, required this.widget, this.width, this.height, this.alignment});


  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      alignment: alignment,
      padding: padding,
      decoration: BoxDecoration(
          borderRadius: borderRadius,
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