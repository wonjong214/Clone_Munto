import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Clone_Munto/widget/atoms/common_border_container.dart';

class CircularprogressContainer extends StatelessWidget{
  double? width;
  double? height;
  BorderRadiusGeometry? borderRadius;
  Color? backColor;
  CircularprogressContainer({this.width, this.height, required this.borderRadius, this.backColor});
  @override
  Widget build(BuildContext context) {
    return CommonBorderContainer(
      width: width,
      height: height,
      borderRadius: borderRadius,
      alignment: Alignment.center,
      backColor: backColor,
      widget: const CircularProgressIndicator(color: Colors.grey,),
    );
  }
}