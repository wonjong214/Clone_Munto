import 'package:flutter/material.dart';

import '../../../atoms/diverder_container.dart';
import '../../../atoms/setting_elemnet_row.dart';
import '../../../atoms/setting_group_title_text.dart';

class UserSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitleText(text: '사용자 설정'),
          SettingElementRow(text: '친구 초대 & 친구 코드 등록'),
          thinDivider,
          SettingElementRow(text: '알림 설정'),
          thinDivider,
          SettingElementRow(text: '관심 지역 관리'),
          thinDivider,
          SettingElementRow(text: '차단 멤버 관리'),
          thinDivider,
          SettingElementRow(text: '경고 점수 조회'),
          thinDivider,
          SettingElementRow(text: '정산 계좌 관리'),
          thinDivider,
          SettingElementRow(text: '클럽 결제 관리'),
        ],
      ),
    );
  }
}