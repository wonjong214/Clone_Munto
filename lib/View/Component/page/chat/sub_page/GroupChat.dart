import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/chat/GroupChatProfile.dart';

class GroupChat extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GroupChatProfile(AssetImage('assets/images/recommend_page/Exhibitions/coffee.jpeg'))
      ],
    );
  }
}