import 'package:flutter/material.dart';

class ProfileImage_Container extends StatelessWidget{
  AssetImage _image;

  ProfileImage_Container(this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35.0,
      height: 35.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: _image,
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.white,
          width: 3.0,
        ),
      ),
    );
  }
}