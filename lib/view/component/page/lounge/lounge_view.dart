import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:loginscreen/constants/iconsize.dart';
import 'package:loginscreen/view/component/atoms/app_bar_tab.dart';
import 'package:loginscreen/view/component/atoms/app_bar_title_text.dart';
import 'package:loginscreen/view/component/page/lounge/sub_page/discovery_page.dart';
import 'package:loginscreen/view/component/page/lounge/sub_page/total_page.dart';

import '../../../../constants/border.dart';

class LoungeView extends StatefulWidget{
  @override
  State<LoungeView> createState() => _LoungeViewState();
}

class _LoungeViewState extends State<LoungeView> {
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
      appBar:
      PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: SafeArea(
          child: AnimatedCrossFade(
            firstChild: AppBar(
              backgroundColor: AppBar_color,
              foregroundColor: Colors.black,
              title: Row(
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
            secondChild: const SizedBox.shrink(),
            crossFadeState: _exposureAppBar ? CrossFadeState.showFirst : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 200),
          ),
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
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
            Expanded(
              child: TabBarView(
                children: [
                  DiscoveryPage(_scrollController),
                  TotalPage(_scrollController),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}