import 'package:flutter/material.dart';
import 'package:loginscreen/screen/searchkeyword/sub_page/search_challenge_screen.dart';
import 'package:loginscreen/screen/searchkeyword/sub_page/search_club_screen.dart';
import 'package:loginscreen/screen/searchkeyword/sub_page/search_feed_screen.dart';
import 'package:loginscreen/screen/searchkeyword/sub_page/search_member_screen.dart';
import 'package:loginscreen/screen/searchkeyword/sub_page/search_socialring_screen.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/border.dart';
import '../../widget/atoms/custom_close_button.dart';

class SearchKeywordScreen extends StatelessWidget {
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
          shape: appBarBottomBorder,
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
              fillColor: backGroundColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              prefixIcon: Icon(Icons.search, size: 25, color: Colors.grey,),
              suffixIcon: CustomCloseButton(onPressed: controller.clear,),
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
          SearchSocialringScreen(),
          SearchClubScreen(),
          SearchChallengeScreen(),
          SearchFeedScreen(),
          SearchMemberScreen(),
        ]),
      ),
    );
  }
}
