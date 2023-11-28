import 'package:flutter/material.dart';

class CircleIcon extends StatelessWidget{
  double? width;
  double? height;
  Widget? icon;
  Color? backgroundColor;
  BoxBorder? border;

  CircleIcon({required this.width, required this.height, required this.icon, this.backgroundColor, this.border}){
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: width,
      height: height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
          border: border
      ),
      child: icon,
    );
  }
}