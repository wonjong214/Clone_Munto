import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/challenge_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/club_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/mymeeting_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/recommend_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/Socialring_Page.dart';
import 'package:provider/provider.dart';

import '../../../../ViewModel//ResolutionProvider.dart';

class MeetingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Provider.of<ResolutionProvider>(context, listen: false).width_set(width);
    Provider.of<ResolutionProvider>(context, listen: false).height_set(height);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: background_color),
      home: DefaultTabController(
        length: 5,
        child:Scaffold(
        appBar: AppBar(
          backgroundColor: MeetingviewAppBar_color,
          foregroundColor: Colors.black,
          shadowColor: Color(0xdddcdcdc),
          title: Row(
            children: [
              Text(
                'MUNTO',
                style: TextStyle(
                  fontFamily: 'apptitle',
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
              Spacer(),
              Icon(Icons.list, size: 30,),
              SizedBox(width: 10, ),
              Icon(Icons.search, size : 30),
              SizedBox(width: 10),
              Icon(Icons.notifications_none, size : 30),
            ],
          ),
          bottom:
              PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                        Tab(child: Text('추천', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23))),
                        Tab(child: Text('소셜링', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23))),
                        Tab(child: Text('클럽', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23))),
                        Tab(child: Text('챌린지', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23))),
                        Tab(child: Text('내 모임', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23))),
                      ],
                      isScrollable: true,
                      labelPadding: EdgeInsets.symmetric(horizontal:10.0),
                      indicatorColor: Colors.black,
                  ),
               ),
              )
        ),
        body: TabBarView(
          children: [
            recommend_page(),
            Socialring_Page(),
            club_page(),
            challenge_page(),
            MyMeeting_Page()
          ],
         ),
        ),
      )
    );
  }
}