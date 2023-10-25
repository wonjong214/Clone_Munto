import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class Common_Container extends StatelessWidget{
  Widget? _widget;
  double? con_width;
  double? con_height;

  Common_Container(this._widget,{double? con_width, double, con_height});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: _widget
    );
  }
}