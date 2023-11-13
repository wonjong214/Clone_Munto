import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Close_Button.dart';
import 'package:loginscreen/View/Component/page/searchkeyword/sub_page/SearchChallenge.dart';
import 'package:loginscreen/View/Component/page/searchkeyword/sub_page/SearchClub.dart';
import 'package:loginscreen/View/Component/page/searchkeyword/sub_page/SearchFeed.dart';
import 'package:loginscreen/View/Component/page/searchkeyword/sub_page/SearchMember.dart';
import 'package:loginscreen/View/Component/page/searchkeyword/sub_page/SearchSocialring.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import 'package:provider/provider.dart';

import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';
import '../../atoms/CircleIcon_Icon.dart';

class SearchKeyword_page extends StatelessWidget {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    String keyword = ModalRoute.of(context)?.settings.arguments as String;
    controller.text = keyword;

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appbarbottom_border,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: TextFormField(
            controller: controller,
            style: TextStyle(
              fontSize: 15,
            ),
            cursorColor: Colors.grey.shade700,
            textAlign: TextAlign.left,
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              filled: true,
              fillColor: background_color,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              prefixIcon: Icon(Icons.search, size: 25, color: Colors.grey,),
              suffixIcon: Close_Button(onPressed: controller.clear,),
              isDense: true,
              contentPadding: EdgeInsets.all(10),
            ),
          ),
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  padding: EdgeInsets.only(left: 10, right: 10,),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(child: Text('소셜링', style: TextStyle(fontSize: 18))),
                    Tab(child: Text('클럽', style: TextStyle(fontSize: 18))),
                    Tab(child: Text('챌린지', style: TextStyle(fontSize: 18))),
                    Tab(child: Text('피드', style: TextStyle(fontSize: 18))),
                    Tab(child: Text('멤버', style: TextStyle(fontSize: 18))),
                  ],
                  indicatorColor: Colors.black,
                ),
              )),
        ),
        body: TabBarView(children: [
          ChangeNotifierProvider(
            create: (context) => Meeting_Provider(),
            child: SearchSocialring(),
          ),
          ChangeNotifierProvider(
            create: (context) => Meeting_Provider(),
            child: SearchClub(),
          ),
          ChangeNotifierProvider(
            create: (context) => Challenge_Provider(),
            child: SearchChallenge(),
          ),
          SearchFeed(),
          SearchMember(),
        ]),
      ),
    );
  }
}
