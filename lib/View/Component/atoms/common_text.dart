import 'package:flutter/material.dart';

class CommonText extends StatelessWidget{
  String text;
  int? maxLines;
  TextOverflow? overflow;
  double? textSize;
  FontWeight? fontWeight;
  double? height;
  Color? textColor;
  TextAlign? textAlign;


  CommonText({required this.text, this.maxLines = 1, this.overflow = TextOverflow.ellipsis,
    this.textSize = 17, this.fontWeight, this.height, this.textColor, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      textAlign: textAlign,
      style: TextStyle(
          overflow: overflow,
          fontSize: textSize,
          fontWeight: fontWeight,
          height: height,
          color: textColor,
      ),
    );
  }
}