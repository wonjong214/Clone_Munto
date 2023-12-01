import 'package:flutter/material.dart';

import '../../../widget/molecules/chat/group_chat_profile.dart';

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