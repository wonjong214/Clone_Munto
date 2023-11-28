import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/page/chat/sub_page/GroupChat.dart';
import 'package:loginscreen/View/Component/page/chat/sub_page/IndividualChat.dart';
import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';
import '../../atoms/app_bar_tab.dart';
import '../../atoms/app_bar_title_text.dart';

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
              shape: appbarbottom_border,
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