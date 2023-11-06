import 'package:flutter/material.dart';

import '../../../atoms/SettingElemnet_Row.dart';
import '../../../atoms/SettingGroupTitle_Text.dart';

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitle(text: '계정'),
          SettingElement_Row(text: '계정 관리'),
          Divider(color: Color(0xffa9a9a9), height: 0.2, thickness: 0.3,),
          SettingElement_Row(text: '로그아웃'),
      ],
      ),
    );
  }
}