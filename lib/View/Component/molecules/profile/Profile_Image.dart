import 'package:flutter/material.dart';

class Profile_Image extends StatelessWidget{
  AssetImage _image;

  Profile_Image(this._image);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: 43,
          backgroundImage: _image,
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: 27,
              height: 27,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                border: Border.all(
                  color: Color(0xffa9a9a9),
                  width: 1,
                )
              ),
              child: Icon(Icons.edit_outlined,size: 18,),
            )
        )
      ],
    );
  }
}