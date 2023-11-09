import 'package:flutter/material.dart';

import '../../../atoms/Diverder_Container.dart';
import '../../../atoms/SettingElemnet_Row.dart';
import '../../../atoms/SettingGroupTitle_Text.dart';

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
                SettingGroupTitle(text: '현재 버젼'),
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
          SettingElement_Row(text: '서비스 이용 약관'),
          thindivider,
          SettingElement_Row(text: '개인정보 처리방침'),
        ],
      ),
    );
  }
}