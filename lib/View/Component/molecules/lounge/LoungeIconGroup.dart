import 'package:flutter/material.dart';


class LoungeIconGroup extends StatelessWidget{
  bool like;
  int likenum;
  int chatnum;
  void Function() onTap;

  LoungeIconGroup({required this.like, required this.likenum, required this.chatnum, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child:Row(
        children: [
          GestureDetector(
            onTap: onTap,
            child: Icon(like ? Icons.favorite : Icons.favorite_border,size: 30,color: like ? Colors.red : Colors.black,),
          ),
          Text('$likenum'),
          SizedBox(width: 10,),
          Icon(Icons.mode_comment_outlined,size: 30,),
          Text('$chatnum'),
          SizedBox(width: 10,),
          Icon(Icons.bookmark_border,size: 30,)
        ],
      )
    );
  }
}