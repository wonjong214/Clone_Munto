import 'package:flutter/material.dart';
import 'package:loginscreen/View/TabItem/challenge/challenge_page.dart';
import 'package:loginscreen/View/TabItem/club/club_page.dart';
import 'package:loginscreen/View/TabItem/mymeeting/mymeeting_page.dart';
import 'package:loginscreen/View/TabItem/recommend_page/recommend_page.dart';
import 'package:loginscreen/View/TabItem/socialring/Socialring_Page.dart';
import 'package:provider/provider.dart';

import '../ViewModel//ResolutionProvider.dart';

class meetingpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Provider.of<ResolutionProvider>(context, listen: false).width_set(width);
    Provider.of<ResolutionProvider>(context, listen: false).height_set(height);

    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child:Scaffold(
        backgroundColor: Color(0XFFe2e2e2),
        appBar: AppBar(
          backgroundColor: Color(0xfff9f9f9),
          foregroundColor: Colors.black,
          shadowColor: Color(0xdddcdcdc),
          title: Row(
            children: [
              Text(
                'MUNTO',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
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
            mymeeting_page()
          ],
         ),
        ),
      )
    );
  }
}