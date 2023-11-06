import 'package:flutter/material.dart';

class ThirtyRoundedBorderContainer extends StatelessWidget{
  EdgeInsetsGeometry? _padding;
  Color? _bodercolor;
  Color? _backcolor;
  Widget? _widget;


  ThirtyRoundedBorderContainer({EdgeInsetsGeometry? padding, Color? bordercolor, Color? backcolor = Colors.transparent, Widget? widget})
  {
    this._padding = padding;
    this._bodercolor = bordercolor;
    this._backcolor = backcolor;
    this._widget = widget;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _padding!,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: _backcolor,
          border: Border.all(
              color: _bodercolor!,
              width: 1
          )
      ),
      child: _widget!,
    );
  }
}