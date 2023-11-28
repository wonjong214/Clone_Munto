import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/diverder_container.dart';
import 'package:loginscreen/View/Component/atoms/setting_elemnet_row.dart';
import 'package:loginscreen/View/Component/atoms/setting_group_title_text.dart';

class Announcement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SettingGroupTitleText(text: '안내'),
          SettingElementRow(text: '공지사항'),
          thinDivider,
          SettingElementRow(text: '이벤트'),
          thinDivider,
          SettingElementRow(text: '자주 묻는 질문'),
          thinDivider,
          SettingElementRow(text: '고객센터'),
          thinDivider,
          SettingElementRow(text: '개선 및 의견 남기기'),
          thinDivider,
          SettingElementRow(text: '입점 및 제휴 문의'),
          thinDivider,
          SettingElementRow(text: '문토 채용'),
        ],
      ),
    );
  }
}