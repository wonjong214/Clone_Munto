import 'package:flutter/material.dart';

class ArrowCircularContainer extends StatelessWidget{
  Color bgColor;
  double? size;

  ArrowCircularContainer(this.bgColor, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: bgColor
        ),
        child: Icon(Icons.arrow_forward_ios, color: Colors.white, size: size,)
    );
  }
}