import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Diverder_Container.dart';
import 'package:loginscreen/View/Component/atoms/SettingElemnet_Row.dart';
import 'package:loginscreen/View/Component/atoms/SettingGroupTitle_Text.dart';

class Announcement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitle(text: '안내'),
          SettingElement_Row(text: '공지사항'),
          thindivider,
          SettingElement_Row(text: '이벤트'),
          thindivider,
          SettingElement_Row(text: '자주 묻는 질문'),
          thindivider,
          SettingElement_Row(text: '고객센터'),
          thindivider,
          SettingElement_Row(text: '개선 및 의견 남기기'),
          thindivider,
          SettingElement_Row(text: '입점 및 제휴 문의'),
          thindivider,
          SettingElement_Row(text: '문토 채용'),
        ],
      ),
    );
  }
}