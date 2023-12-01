import 'package:flutter/material.dart';

class TextNumColumn extends StatelessWidget{
  int? _follower;
  int? _following;
  int? _feed;

  TextNumColumn({int follower = 0, int following = 0, int feed = 0 }){
    this._follower = follower;
    this._following = following;
    this._feed = feed;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              '팔로워',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              '$_follower',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            Text(
              '팔로잉',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              '$_following',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(width: 15,),
        Column(
          children: [
            Text(
              '피드',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            SizedBox(height: 5,),
            Text(
              '$_feed',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}