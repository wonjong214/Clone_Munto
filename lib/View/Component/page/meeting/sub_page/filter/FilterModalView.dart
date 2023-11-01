import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/AppBarTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/ThirtyRoundedInfinity_Container.dart';

import '../../../../atoms/AppBarTab_Tab.dart';

class FilterModalView extends StatefulWidget {
  @override
  State<FilterModalView> createState() => _FilterModalViewState();
}

class _FilterModalViewState extends State<FilterModalView> {
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
            unselectedLabelColor: Colors.grey,
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
                ),
              ),
              Text(
                  '클럽',
                style: TextStyle(
                  fontSize: 17,
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
                  Text('소셜링'),
                  Text('클럽'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border(top: BorderSide(color: Color(0xffa9a9a9), width: 1))
              ),
              child: Container(
                child: ThirtyRoundedInfinity_Container(
                  text: '적용하기',
                  buttoncolor: Color(0xffdbdbdb),
                  buttontextcolor: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
