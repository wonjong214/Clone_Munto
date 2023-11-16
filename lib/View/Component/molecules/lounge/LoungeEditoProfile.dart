import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/ProfileImage_Container.dart';


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
          CircleBorderImage_Container(
            _image,
            width: 70,
            height: 70,
          ),
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