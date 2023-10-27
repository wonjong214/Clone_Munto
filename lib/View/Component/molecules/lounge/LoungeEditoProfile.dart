import 'package:flutter/material.dart';

import '../../atoms/CircleAvatarProfile.dart';

class LoungeEditorProfile extends StatelessWidget{
  AssetImage _image;
  String _text;

  LoungeEditorProfile(this._image, this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatarProfile(_image),
          SizedBox(height: 5,),
          Text(
            _text,
            style: TextStyle(
              fontSize: 13
            ),
          )
        ],
      ),
    );
  }
}