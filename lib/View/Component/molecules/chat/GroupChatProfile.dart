import 'package:flutter/material.dart';

class GroupChatProfile extends StatelessWidget{
  AssetImage _image;

  GroupChatProfile(this._image);

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            color: Colors.yellow,
            height: 100,
            child: CircleAvatar(
              radius: 30,
              backgroundImage: _image,
            ),
          ),
          Positioned(
            bottom: 0,
              child: Container(
                padding: EdgeInsets.only(left: 6, right: 6, top: 3, bottom: 3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xffebbda6),
                  border: Border.all(
                    color: Colors.white,
                    width: 1
                  )
                ),
                child: Text(
                  '소셜링',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13
                  ),
                ),
              )
          )
        ],
    );
  }
}