import 'package:flutter/material.dart';

import '../../../atoms/Diverder_Container.dart';
import '../../../atoms/SettingElemnet_Row.dart';
import '../../../atoms/SettingGroupTitle_Text.dart';

class UserSetting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitle(text: '사용자 설정'),
          SettingElement_Row(text: '친구 초대 & 친구 코드 등록'),
          thindivider,
          SettingElement_Row(text: '알림 설정'),
          thindivider,
          SettingElement_Row(text: '관심 지역 관리'),
          thindivider,
          SettingElement_Row(text: '차단 멤버 관리'),
          thindivider,
          SettingElement_Row(text: '경고 점수 조회'),
          thindivider,
          SettingElement_Row(text: '정산 계좌 관리'),
          thindivider,
          SettingElement_Row(text: '클럽 결제 관리'),
        ],
      ),
    );
  }
}