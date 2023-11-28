import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget{
  AssetImage image;
  Widget? icon;

  ProfileImage({required this.image, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.center,
      children: [
        CircleAvatar(
          radius: 43,
          backgroundImage: image,
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
              child: icon,
            )
        )
      ],
    );
  }
}