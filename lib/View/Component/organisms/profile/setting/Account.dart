import 'package:flutter/material.dart';

import '../../../atoms/diverder_container.dart';
import '../../../atoms/setting_elemnet_row.dart';
import '../../../atoms/setting_group_title_text.dart';

class Account extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitleText(text: '계정'),
          SettingElementRow(text: '계정 관리'),
          thinDivider,
          SettingElementRow(text: '로그아웃'),
      ],
      ),
    );
  }
}