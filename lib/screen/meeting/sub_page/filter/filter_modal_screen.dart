import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:loginscreen/screen/meeting/sub_page/filter/sub_page/filter_club_screen.dart';
import 'package:loginscreen/screen/meeting/sub_page/filter/sub_page/filter_social_screen.dart';
import '../../../../widget/atoms/app_bar_title_text.dart';
import '../../../../widget/atoms/common_border_container.dart';


class FilterModalScreen extends StatefulWidget {
  @override
  State<FilterModalScreen> createState() => _FilterModalScreenState();
}

class _FilterModalScreenState extends State<FilterModalScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppBar_color,
        appBar: AppBar(
          backgroundColor: AppBar_color,
          centerTitle: true,
          title: AppBarTitle('필터'),
          leading: GestureDetector(
            onTap: () {},
            child: Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Text(
                  '재설정',
                  style: TextStyle(
                    color: Color(0xffa9a9a9),
                  ),
                ),
                SizedBox(
                  width: 1,
                ),
                Icon(
                  Icons.refresh,
                  color: Color(0xffa9a9a9),
                  size: 10,
                )
              ],
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close),
            )
          ],
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Color(0xffa9a9a9),
            indicatorColor: Colors.black,
            indicatorSize: TabBarIndicatorSize.tab,
            labelPadding: EdgeInsets.only(bottom: 10),
            splashFactory: NoSplash.splashFactory,
            indicatorPadding: EdgeInsets.only(left: 40, right: 40),
            tabs: [
              Text(
                '소셜링',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '클럽',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  FilterSocialScreen(),
                  FilterClubScreen(),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
              decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(color: Color(0xffa9a9a9), width: 1))),
              child: CommonBorderContainer(
                width: double.infinity,
                height: 50,
                backColor: Color(0xffdbdbdb),
                widget: Align(
                  alignment: Alignment.center,
                  child: Text(
                    '적용하기',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
