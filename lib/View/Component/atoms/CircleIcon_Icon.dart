import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget{
  double? _width;
  double? _height;
  double? _iconsize;
  Color? _backgroundcolor;
  Color? _iconcolor;
  IconData? _icon;

  CircleIcon({double? width, double? height, double? iconsize,
    Color? backgroundcolor, Color? iconcolor = Colors.white, IconData? icon}){
    this._width = width;
    this._height = height;
    this._iconsize = iconsize;
    this._backgroundcolor = backgroundcolor;
    this._iconcolor = iconcolor;
    this._icon = icon;
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: _width!,
      height: _height!,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _backgroundcolor!,
      ),
      child: Icon(_icon!,size: _iconsize!, color: _iconcolor!,),
    );
  }
}