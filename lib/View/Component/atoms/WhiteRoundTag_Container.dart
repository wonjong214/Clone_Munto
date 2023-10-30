import 'package:flutter/material.dart';

class WhiteRoundTag extends StatelessWidget{
  Widget? _widget;
  EdgeInsetsGeometry? _padding;

  WhiteRoundTag({Widget? widget, EdgeInsetsGeometry? padding}){
    _widget = widget;
    _padding = padding;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: EdgeInsets.only(right: 10),
      padding: _padding,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white
      ),
      child: _widget!,
    );
  }
}