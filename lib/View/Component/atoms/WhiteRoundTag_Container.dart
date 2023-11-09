import 'package:flutter/material.dart';

class WhiteRoundTag extends StatelessWidget{
  Widget? widget;
  EdgeInsetsGeometry? padding;
  double? height;

  WhiteRoundTag({required this.widget, required this.padding, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.only(right: 10),
      padding: padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
      ),
      child: widget,
    );
  }
}