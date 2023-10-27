import 'package:flutter/material.dart';

class LoungeIconGroup extends StatelessWidget{
  int _favorite;
  int _comment;

  LoungeIconGroup(this._favorite,this._comment);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child:Row(
        children: [
          Icon(Icons.favorite_border,size: 30,),
          Text('$_favorite'),
          SizedBox(width: 10,),
          Icon(Icons.mode_comment_outlined,size: 30,),
          Text('$_comment'),
          SizedBox(width: 10,),
          Icon(Icons.bookmark_border,size: 30,)

        ],
      )
    );
  }
}