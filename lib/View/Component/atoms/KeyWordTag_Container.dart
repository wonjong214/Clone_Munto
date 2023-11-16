import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class KeyWordTag_Container extends StatelessWidget{
  String text;
  double? textsize;
  FontWeight? fontweight;
  Color? textcolor;
  Color? backcolor;
  EdgeInsetsGeometry? padding;
  BoxBorder? border;
  double circular;

  KeyWordTag_Container({required this.text, this.textsize = 12, this.fontweight,
    this.textcolor = Colors.black, this.backcolor = tag_color,
    this.padding = const EdgeInsets.only(left:10, right:10, top: 3, bottom: 3),
    this.border, this.circular = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circular),
        color: backcolor,
        border: border,
      ),
      padding: padding,
      child: Text(
          text,
        style: TextStyle(
          fontSize: textsize,
          color: textcolor,
          fontWeight: fontweight
        ),
      ),
    );
  }
}