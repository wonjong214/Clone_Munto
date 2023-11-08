import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget{
  double? width;
  double? height;
  Widget? icon;
  Color? backgroundcolor;
  BoxBorder? border;

  CircleIcon({required this.width, required this.height, required this.icon, this.backgroundcolor, this.border}){
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundcolor,
          border: border
      ),
      child: icon,
    );
  }
}