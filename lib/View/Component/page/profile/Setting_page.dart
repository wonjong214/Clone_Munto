import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/profile/setting/Account.dart';
import 'package:loginscreen/View/Component/organisms/profile/setting/CurrentVersion.dart';
import 'package:loginscreen/View/Component/organisms/profile/setting/UserSetting.dart';
import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';
import '../../atoms/AppBarTitle_Text.dart';
import '../../organisms/profile/setting/Announcement.dart';

class Setting_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBar_color,
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appbarbottom_border,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: AppBarTitle('설정'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Announcement(),
              Container(
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
              ),
              UserSetting(),
              Container(
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
              ),
              Account(),
              Container(
                height: 12,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                ),
              ),
              CurrentVersion(),
              SizedBox(height: 200,)
            ],
          ),
        )
    );
  }
}