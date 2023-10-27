import 'package:flutter/material.dart';

class CircleAvatarProfile extends StatelessWidget{
  AssetImage _image;

  CircleAvatarProfile(this._image);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: _image,
    );
  }
}