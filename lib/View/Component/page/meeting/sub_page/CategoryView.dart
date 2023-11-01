import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';

import '../../../../../Constants/border.dart';
import '../../../../../Constants/colors.dart';
import '../../../atoms/AppBarTab_Tab.dart';

class CategoryView extends StatelessWidget {
  late List<Tab> tablist;
  
  CategoryView(){
    tablist = [
      Tab(
          icon: Icon(Icons.format_paint_outlined),
          child: Text(
              '문화·예술',
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 23)
          )
      )
    ];
  }
  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: Color(0xfffefefe),
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appbarbottom_border,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: AppBarTitle('카테고리'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(kToolbarHeight),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  padding: EdgeInsets.only(left: 10),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  tabs: tablist,
                  isScrollable: true,
                  labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
                  indicatorColor: Colors.black,
                ),
              )),
        ),
        body: TabBarView(
          children: [
            Text('df')
          ],
        ),
      ),
    );
  }
}
