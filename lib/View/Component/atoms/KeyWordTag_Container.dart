import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class KeyWordTag_Container extends StatelessWidget{
  String text;
  FontWeight? fontweight;
  Color? textcolor;
  Color? backcolor;

  KeyWordTag_Container({required this.text, this.fontweight, this.textcolor = Colors.black, this.backcolor = tag_color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backcolor
      ),
      padding: EdgeInsets.only(left:10, right:10, top: 3, bottom: 3),
      child: Text(
          text,
        style: TextStyle(
          fontSize: 12,
          color: textcolor,
          fontWeight: fontweight
        ),
      ),
    );
  }
}