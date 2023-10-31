import 'package:flutter/material.dart';

class TenRoundedBorderContainer extends StatelessWidget{
  double? _width;
  double? _height;
  Widget? _widget;
  Color? _bordercolor;
  Color? _backcolor;


  TenRoundedBorderContainer({double? width, double? height, Widget? widget, Color? bordercolor, Color? backcolor}){
    this._width = width;
    this._height = height;
    this._widget = widget;
    this._bordercolor = bordercolor;
    this._backcolor = backcolor;

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width!,
      height: _height!,
      decoration: BoxDecoration(
        color: _backcolor!,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: _bordercolor!, width: 0.3),
      ),
      child: _widget!,
    );
  }
}