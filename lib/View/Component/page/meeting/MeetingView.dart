import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/border.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/challenge_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/club_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/filter/FilterModalView.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/mymeeting_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/recommend_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/Socialring_Page.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/iconsize.dart';
import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/AppBarTab_Tab.dart';

class MeetingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double height = Provider.of<ResolutionProvider>(context).height_get;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: background_color),
      home: DefaultTabController(
        length: 5,
        child:Scaffold(
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shadowColor: Colors.transparent,
          shape: appbarbottom_border,
          title: Row(
            children: [
              AppBarTitle('MUNTO'),
              Spacer(),
              IconButton(
                  onPressed: (){
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (BuildContext context){
                          return SizedBox(
                              height: height * 0.84,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                child: FilterModalView(),
                              )
                          );
                        },
                    );
                  },
                  icon: Icon(Icons.list, size: appbariconsize,)
              ),
              SizedBox(width: 10, ),
              IconButton(
                icon: Icon(Icons.search, size : appbariconsize),
                onPressed: (){
                  Navigator.pushNamed(context, '/Search_page');
                },
              ),
              SizedBox(width: 10),
              Icon(Icons.notifications_none, size : appbariconsize),
            ],
          ),
          bottom: PreferredSize(
                preferredSize: const Size.fromHeight(kToolbarHeight),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    padding: EdgeInsets.only(left: 10, right: 15),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      AppBarTab_Tab('추천'),
                      AppBarTab_Tab('소셜링'),
                      AppBarTab_Tab('클럽'),
                      AppBarTab_Tab('챌린지'),
                      AppBarTab_Tab('내 모임'),
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