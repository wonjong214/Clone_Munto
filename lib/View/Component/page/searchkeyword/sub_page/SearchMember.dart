import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/RoundedFollow_Button.dart';

class SearchMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/recommend_page/Review/board.jpeg'),
            ),
            title: Text(
              '닉네임',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
            subtitle: Text(
              '반복되는 일상을 특별하게 만들어 보고 싶어요.',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey
              ),
            ),
            trailing: RoundedFollow_Button(),
          );
        }
        );
  }
}
