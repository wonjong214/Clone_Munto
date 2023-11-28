import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/diverder_container.dart';
import 'package:loginscreen/view/component/organisms/profile/setting/Account.dart';
import 'package:loginscreen/view/component/organisms/profile/setting/CurrentVersion.dart';
import 'package:loginscreen/view/component/organisms/profile/setting/UserSetting.dart';
import '../../../../constants/border.dart';
import '../../../../constants/colors.dart';
import '../../atoms/app_bar_title_text.dart';
import '../../organisms/profile/setting/Announcement.dart';

class SettingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBar_color,
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appBarBottomBorder,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: AppBarTitle('설정'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Announcement(),
              boldDivider,
              UserSetting(),
              boldDivider,
              Account(),
              boldDivider,
              CurrentVersion(),
              SizedBox(height: 200,)
            ],
          ),
        )
    );
  }
}