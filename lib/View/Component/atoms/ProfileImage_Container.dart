import 'package:flutter/material.dart';

class CircleBorderImage_Container extends StatelessWidget{
  AssetImage _image;
  double? width;
  double? height;
  BoxBorder? border;

  CircleBorderImage_Container(this._image,{this.width, this.height, this.border});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: _image,
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: border,
      ),
    );
  }
}