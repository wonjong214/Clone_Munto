import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/ProfileImage_Container.dart';

class Comment_Container extends StatelessWidget{
  String _text;
  String _name;
  AssetImage _image;
  Comment_Container(this._image, this._name, this._text, );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleBorderImage_Container(
            _image,
            width: 35,
            height: 35,
            border: Border.all(
              width: 3,
              color: Colors.white
            ),
          ),
          SizedBox(width: 10,),
          Text(
              _name,
            style: TextStyle(
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
              child: Text(
                _text,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
          )
        ],
      ),
    );
  }
}