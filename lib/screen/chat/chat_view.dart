import 'package:flutter/material.dart';
import 'package:loginscreen/screen/chat/sub_page/group_chat.dart';
import 'package:loginscreen/screen/chat/sub_page/individual_chat.dart';
import '../../../../constants/border.dart';
import '../../../../constants/colors.dart';
import '../../widget/atoms/app_bar_tab.dart';
import '../../widget/atoms/app_bar_title_text.dart';


class ChatView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            backgroundColor: Color(0xfffefefe),
            appBar: AppBar(
              backgroundColor: AppBar_color,
              foregroundColor: Colors.black,
              shape: appBarBottomBorder,
              title: Row(
                children: [
                  AppBarTitle('채팅'),
                  Spacer(),
                ],
              ),
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(kToolbarHeight),
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      padding: EdgeInsets.only(left: 10),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      tabs: [
                        AppBarTab('그룹'),
                        AppBarTab('개인')
                      ],
                      labelPadding: EdgeInsets.symmetric(horizontal:10.0),
                      indicatorColor: Colors.black,
                    ),
                  )
              ),
            ),
            body: TabBarView(
              children: [
                GroupChat(),
                IndividualChat()
              ],
            )
        )
    );
  }
}