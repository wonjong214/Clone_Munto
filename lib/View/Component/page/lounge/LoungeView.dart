import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginscreen/Constants/border.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/Constants/iconsize.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTab_Tab.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';
import 'package:loginscreen/View/Component/page/lounge/sub_page/Discovery_page.dart';
import 'package:loginscreen/View/Component/page/lounge/sub_page/Total_page.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/CardProvider_VIewModel.dart';
import 'package:provider/provider.dart';

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
                    icon:Icon(Icons.add_box_outlined, size: appbariconsize,),
                    onPressed: (){
                      Navigator.of(context, rootNavigator: true).pushNamed('/FeedWrite_Page');
                    },
                  ),
                  SizedBox(width: 10, ),
                  Icon(Icons.bookmark_border_outlined, size : appbariconsize),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context, rootNavigator: true).pushNamed('/Search_page');
                    },
                    icon: Icon(Icons.search_rounded, size : appbariconsize),
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
                  border: appbarbottom_border,
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
                      AppBarTab_Tab('발견'),
                      AppBarTab_Tab('전체')
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
                  ChangeNotifierProvider(
                    create: (context) => Card_Provider(),
                    child:  Discovery_Page(_scrollController),
                  ),
                  ChangeNotifierProvider(
                    create: (context) => Card_Provider(),
                    child: Total_Page(_scrollController),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}