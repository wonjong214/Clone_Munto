import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:loginscreen/Constants/border.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/app_bar_title_text.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/challenge_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/club_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/filter/FilterModalView.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/mymeeting_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/recommend_page.dart';
import 'package:loginscreen/View/Component/page/meeting/sub_page/Socialring_Page.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/iconsize.dart';
import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/app_bar_tab.dart';

class MeetingView extends StatefulWidget{
  @override
  State<MeetingView> createState() => _MeetingViewState();
}

class _MeetingViewState extends State<MeetingView> {
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
    double height = Provider.of<ResolutionProvider>(context).height_get;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(scaffoldBackgroundColor: background_color),
      home: Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(48),
        child: AnimatedCrossFade(
          firstChild: AppBar(
            backgroundColor: AppBar_color,
            foregroundColor: Colors.black,
            shadowColor: Colors.transparent,
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
          ),
          secondChild: const SizedBox.shrink(),
          crossFadeState: _exposureAppBar ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          duration: const Duration(milliseconds: 200),
        ),
      ),
      body: DefaultTabController(
        length: 5,
        child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: appbarbottom_border,
                  color: AppBar_color,
                ),
                width: double.infinity,
                alignment: Alignment.centerLeft,
                child: TabBar(
                  padding: EdgeInsets.only(left: 10, right: 15),
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
              Expanded(
                child: TabBarView(
                  children: [
                    recommend_page(_scrollController),
                    Socialring_Page(_scrollController),
                    club_page(_scrollController),
                    challenge_page(_scrollController),
                    MyMeeting_Page(_scrollController)
                  ],
                 ),
              ),
            ],
          ),
      ),

      )
    );
  }
}