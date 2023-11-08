import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class Common_Container extends StatelessWidget{
  Widget widget;
  double? width;
  double? height;
  Color? color;
  EdgeInsetsGeometry? padding;



  Common_Container({required this.widget, this.width, this.height, this.color = container_color, this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,
      height : height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: widget
    );
  }
}