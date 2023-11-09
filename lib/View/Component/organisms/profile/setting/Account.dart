import 'package:flutter/material.dart';

import '../../../atoms/Diverder_Container.dart';
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
          thindivider,
          SettingElement_Row(text: '로그아웃'),
      ],
      ),
    );
  }
}