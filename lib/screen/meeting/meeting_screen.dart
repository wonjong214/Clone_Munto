import 'package:Clone_Munto/screen/meeting/sub_page/filter/filter_modal_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Clone_Munto/constants/colors.dart';
import 'package:Clone_Munto/screen/meeting/sub_page/challenge_screen.dart';
import 'package:Clone_Munto/screen/meeting/sub_page/club_screen.dart';
import 'package:Clone_Munto/screen/meeting/sub_page/my_meeting_screen.dart';
import 'package:Clone_Munto/screen/meeting/sub_page/recommend_screen.dart';
import 'package:Clone_Munto/screen/meeting/sub_page/socialring_screen.dart';
import 'package:provider/provider.dart';
import '../../../../constants/iconsize.dart';
import '../../../../constants/border.dart';
import '../../providers/resolution_provider.dart';
import '../../widget/atoms/app_bar_tab.dart';
import '../../widget/atoms/app_bar_title_text.dart';


class MeetingScreen extends StatefulWidget{
  @override
  State<MeetingScreen> createState() => _MeetingScreenState();
}

class _MeetingScreenState extends State<MeetingScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    double height = Provider.of<ResolutionProvider>(context).height_get;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: backGroundColor),
      home: Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return[
                SliverToBoxAdapter(
                  child: Container(
                    color: AppBar_color,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppBarTitle('MUNTO'),
                        Spacer(),
                        /*IconButton(
                            onPressed: (){
                              showModalBottomSheet(
                                isScrollControlled: true,
                                context: context,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                                ),
                                builder: (BuildContext context){
                                  return SizedBox(
                                      height: (height * 0.74),
                                      child: FilterModalScreen()
                                  );
                                },
                              );
                            },
                            icon: Icon(Icons.list, size: appBarIconSize,)
                        ),*/
                        SizedBox(width: 10, ),
                        IconButton(
                          icon: Icon(Icons.search, size : appBarIconSize),
                          onPressed: (){
                            Navigator.of(context, rootNavigator: true)
                                .pushNamed('/Search_page');
                          },
                        ),
                        /*SizedBox(width: 10),
                        Icon(Icons.notifications_none, size : appBarIconSize),*/
                      ],
                    ),
                  ),
                ),
                
                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverPersistentHeader(
                    delegate: MeetingTabBarDelegate(),
                    pinned: true,
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                RecommendScreen(),
                SocialringScreen(),
                ClubScreen(),
                ChallengeScreen(),
                MyMeetingScreen()
              ],
            ),
          )
        ),
      ),

      )
    );
  }
}

class MeetingTabBarDelegate extends SliverPersistentHeaderDelegate {
  const MeetingTabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            border: appBarBottomBorder,
            color: AppBar_color,
          ),
          width: double.infinity,
          alignment: Alignment.centerLeft,
          child: TabBar(
            padding: EdgeInsets.only(left: 10),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            tabs: [
              AppBarTab('추천'),
              AppBarTab('소셜링'),
              AppBarTab('클럽'),
              AppBarTab('챌린지'),
              AppBarTab('내 모임'),
            ],
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal:10.0),
            indicatorColor: Colors.black,
          ),
        ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}