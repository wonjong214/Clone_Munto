import 'package:flutter/material.dart';

import '../../../atoms/diverder_container.dart';
import '../../../atoms/setting_elemnet_row.dart';
import '../../../atoms/setting_group_title_text.dart';

class CurrentVersion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Row(
              children: [
                SettingGroupTitleText(text: '현재 버젼'),
                Spacer(),
                Text(
                  '4.10.0 (663)',
                  style: TextStyle(
                    color: Color(0xffa9a9a9),
                  ),
                )
              ],
            ),
          ),
          SettingElementRow(text: '서비스 이용 약관'),
          thinDivider,
          SettingElementRow(text: '개인정보 처리방침'),
        ],
      ),
    );
  }
}