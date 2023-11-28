import 'package:flutter/material.dart';

import '../../atoms/circle_border_image_container.dart';

class CommentInputContainer extends StatelessWidget{
  AssetImage _image;

  CommentInputContainer(this._image);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleBorderImageContainer(
            _image,
            width: 35,
            height: 35,
            border: Border.all(
                width: 3,
                color: Colors.white
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
              child: Text(
                '댓글 달기...',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Color(0xffa9a9a9)
                ),
              ),
          ),
        ],
      ),
    );
  }
}