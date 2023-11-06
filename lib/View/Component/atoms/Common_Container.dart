import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';


class Common_Container extends StatelessWidget{
  Widget widget;
  double? width;
  double? height;


  Common_Container({required this.widget, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height : height,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: container_color,
          borderRadius: BorderRadius.circular(10)
      ),
      child: widget
    );
  }
}