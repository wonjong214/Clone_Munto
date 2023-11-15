import 'package:flutter/material.dart';

class Common_Text extends StatelessWidget{
  String text;
  int? maxlines;
  TextOverflow? overflow;
  double? textsize;
  FontWeight? fontWeight;
  Color? textcolor;


  Common_Text({required this.text, this.maxlines = 1, this.overflow = TextOverflow.ellipsis,
    this.textsize = 17, this.fontWeight, this.textcolor});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxlines,
      style: TextStyle(
          overflow: TextOverflow.ellipsis,
          fontSize: textsize,
          fontWeight: fontWeight,
          color: textcolor,
      ),
    );
  }
}