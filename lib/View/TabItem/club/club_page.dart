import 'package:flutter/material.dart';
import 'package:loginscreen/View/TabItem/club/sub_page/ClubIssue.dart';
import 'package:loginscreen/View/TabItem/club/sub_page/ClubNew.dart';
import 'package:loginscreen/View/TabItem/club/sub_page/ClubPageView.dart';
import 'package:loginscreen/View/TabItem/club/sub_page/ClubRecommend.dart';

class club_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClubPageView(),
          ClubRecommend(),
          ClubNew(),
          ClubIssue(),
        ],
      ),
    );
  }
}