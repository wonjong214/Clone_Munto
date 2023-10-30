import 'package:flutter/material.dart';

class TenRoundedBorderContainer extends StatelessWidget{
  double? _width;
  double? _height;
  Widget? _widget;

  TenRoundedBorderContainer({double? width, double? height, Widget? widget}){
    this._width = width;
    this._height = height;
    this._widget = widget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _width!,
      height: _height!,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Color(0xffa9a9a9), width: 0.3),
      ),
      child: _widget!,
    );
  }
}