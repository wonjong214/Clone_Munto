import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class KeyWordTagContainer extends StatelessWidget{
  String text;
  double? textSize;
  FontWeight? fontWeight;
  Color? textColor;
  Color? backColor;
  EdgeInsetsGeometry? padding;
  BoxBorder? border;
  double circular;

  KeyWordTagContainer({required this.text, this.textSize = 12, this.fontWeight,
    this.textColor = Colors.black, this.backColor = tag_color,
    this.padding = const EdgeInsets.only(left:10, right:10, top: 3, bottom: 3),
    this.border, this.circular = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(circular),
        color: backColor,
        border: border,
      ),
      padding: padding,
      child: Text(
          text,
        style: TextStyle(
          fontSize: textSize,
          color: textColor,
          fontWeight: fontWeight
        ),
      ),
    );
  }
}