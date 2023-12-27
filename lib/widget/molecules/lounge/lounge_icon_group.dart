import 'package:flutter/material.dart';

import '../../../model/meeting/lounge/lounge_post.dart';


class LoungeIconGroup extends StatelessWidget{
  bool like;
  int likeNum;
  int chatNum;
  LoungePost loungePost;
  void Function() onTap;

  LoungeIconGroup({required this.like, required this.likeNum, required this.chatNum, required this.loungePost, required this.onTap});

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
          Text('$likeNum'),
          SizedBox(width: 10,),
          IconButton(
            icon : Icon(Icons.mode_comment_outlined, size: 30,),
            onPressed: (){
              Navigator.of(context, rootNavigator: true)
                  .pushNamed('/comment',arguments: loungePost);
          },),
          Text('$chatNum'),
          SizedBox(width: 10,),
          //Icon(Icons.bookmark_border,size: 30,)
        ],
      )
    );
  }
}