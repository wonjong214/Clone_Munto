import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/border.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/Constants/iconsize.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTab_Tab.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';
import 'package:loginscreen/View/Component/page/lounge/sub_page/Discovery_page.dart';
import 'package:loginscreen/View/Component/page/lounge/sub_page/Total_page.dart';

class LoungeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color(0xfffefefe),
          appBar: AppBar(
            backgroundColor: AppBar_color,
            foregroundColor: Colors.black,
            shape: appbarbottom_border,
            title: Row(
              children: [
                AppBarTitle('라운지'),
                Spacer(),
                Icon(Icons.add_box_outlined, size: appbariconsize,),
                SizedBox(width: 10, ),
                Icon(Icons.bookmark_border_outlined, size : appbariconsize),
                SizedBox(width: 10),
                Icon(Icons.search_rounded, size : appbariconsize),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
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
          ),
          body: TabBarView(
            children: [
              Discovery_Page(),
              Total_Page()
            ],
          )
        )
    );
  }
}