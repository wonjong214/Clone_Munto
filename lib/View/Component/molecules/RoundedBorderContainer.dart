import 'package:flutter/material.dart';

class RoundedBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? _padding;
  Color? _bodercolor;
  Widget? _widget;

  RoundedBorderContainer({EdgeInsetsGeometry? padding, Color? bordercolor, Widget? widget})
  {
    this._padding = padding;
    this._bodercolor = bordercolor;
    this._widget = widget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding!,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(
              color: _bodercolor!,
              width: 1
          )
      ),
      child: _widget!,
    );
  }
}