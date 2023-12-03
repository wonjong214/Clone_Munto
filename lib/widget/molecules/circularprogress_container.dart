import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/widget/atoms/common_border_container.dart';

class CircularprogressContainer extends StatelessWidget{
  double? width;
  double? height;
  double circular;
  Color? backColor;
  CircularprogressContainer({this.width, this.height, required this.circular, this.backColor});
  @override
  Widget build(BuildContext context) {
    return CommonBorderContainer(
      width: width,
      height: height,
      circular: circular,
      alignment: Alignment.center,
      backColor: backColor,
      widget: const CircularProgressIndicator(color: Colors.grey,),
    );
  }
}