import 'package:Clone_Munto/model/meeting/lounge/lounge_post.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../atoms/circle_border_image_container.dart';

class LoungeComment extends StatefulWidget{
  String chatImage;
  String chatName;
  String chatBody;
  String chatDate;
  int chatLikeNum;
  bool chatLike;
  void Function() onTap;


  LoungeComment({required this.chatImage, required this.chatName, required this.chatBody, required this.chatDate,
  required this.chatLikeNum, required this.chatLike, required this.onTap});
  @override
  State<LoungeComment> createState() => _LoungeCommentState();
}

class _LoungeCommentState extends State<LoungeComment> {
  String calculateDate(String date){
    var _toDay = DateTime.now();
    int difference = int.parse(
        _toDay.difference(DateTime.parse(date)).inMinutes.toString());
    if(difference < 60)
      return '$difference분 전';
    else if(difference < 1440)
      return '${difference / 60}시간 전';
    else if(difference < 10080)
      return '${difference / 1440}일 전';
    else{
      DateTime writeDate = DateTime.parse(date);
      return '${DateFormat('MM').format(writeDate)}월 ${DateFormat('dd').format(writeDate)}일';
    }

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleBorderImageContainer(
            AssetImage(widget.chatImage),
            width: 40,
            height: 40,
            border: Border.all(
                width: 3,
                color: Colors.white
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatName,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  widget.chatBody,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text(
                      calculateDate(widget.chatDate),
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                      ),
                    ),
                    SizedBox(width: 10,),
                    Text(
                      '좋아요 ${widget.chatLikeNum}개',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          IconButton(onPressed:widget.onTap, icon: widget.chatLike ? Icon(Icons.favorite, color: Colors.red,) : Icon(Icons.favorite_border))
        ],
      ),
    );
  }
}