import 'package:flutter/material.dart';

class LoungeListTile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/recommend_page/Review/board.jpeg'),
        ),
        title: Text('닉네임'),
        subtitle: Text(
          '2일전',
          style: TextStyle(
              color: Color(0x88a9a9a9)
          ),
        ),
        trailing: Wrap(
            spacing: 20,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Text(
                '팔로우',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.red,
                ),
              ),
              Icon(Icons.more_horiz)
            ]
        )
    );
  }
}