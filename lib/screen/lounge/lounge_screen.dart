import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:loginscreen/constants/iconsize.dart';
import 'package:loginscreen/screen/lounge/sub_page/discovery_screen.dart';
import 'package:loginscreen/screen/lounge/sub_page/total_screen.dart';
import '../../../../constants/border.dart';
import '../../widget/atoms/app_bar_tab.dart';
import '../../widget/atoms/app_bar_title_text.dart';

class LoungeScreen extends StatefulWidget{
  @override
  State<LoungeScreen> createState() => _LoungeScreenState();
}

class _LoungeScreenState extends State<LoungeScreen> {
  late ScrollController _scrollController;
  bool _exposureAppBar = true;

  void _changeExposureAppBarState() {
    try {
      if (_scrollController.position.userScrollDirection == ScrollDirection.reverse) {
        if (_exposureAppBar) {
          setState(() {
            _exposureAppBar = false;
          });
        }
      }
      else if (_scrollController.position.userScrollDirection == ScrollDirection.forward) {
        if (!_exposureAppBar) {
          setState(() {
            _exposureAppBar = true;
          });
        }
      }
    } catch (_) {}
  }

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_changeExposureAppBarState);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffefefe),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled){
              return[
                SliverToBoxAdapter(
                  child: Container(
                    color: AppBar_color,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        AppBarTitle('라운지'),
                        Spacer(),
                        IconButton(
                          icon:Icon(Icons.add_box_outlined, size: appBarIconSize,),
                          onPressed: (){
                            Navigator.of(context, rootNavigator: true).pushNamed('/FeedWrite_Page');
                          },
                        ),
                        SizedBox(width: 10, ),
                        Icon(Icons.bookmark_border_outlined, size : appBarIconSize),
                        SizedBox(width: 10),
                        IconButton(
                          onPressed: (){
                            Navigator.of(context, rootNavigator: true).pushNamed('/Search_page');
                          },
                          icon: Icon(Icons.search_rounded, size : appBarIconSize),
                        )
                      ],
                    ),
                  ),
                ),

                SliverOverlapAbsorber(
                  handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                  sliver: SliverPersistentHeader(
                    delegate: LoungeTabBarDelegate(),
                    pinned: true,
                  ),
                )
              ];
            },
            body: TabBarView(
              children: [
                DiscoveryScreen(),
                TotalScreen(),
              ],
            ),
          ),
        ),
      )
    );
  }
}

class LoungeTabBarDelegate extends SliverPersistentHeaderDelegate {
  const LoungeTabBarDelegate();

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return PreferredSize(
      preferredSize: Size.fromHeight(kToolbarHeight),
      child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: appBarBottomBorder,
            color: AppBar_color,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              padding: EdgeInsets.only(left: 10),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              tabs: [
                AppBarTab('발견'),
                AppBarTab('전체')
              ],
              isScrollable: true,
              labelPadding: EdgeInsets.symmetric(horizontal:10.0),
              indicatorColor: Colors.black,
            ),
          )
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