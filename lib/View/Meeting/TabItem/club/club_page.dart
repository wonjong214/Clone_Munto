import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Meeting/TabItem/club/sub_page/ClubIssue.dart';
import 'package:loginscreen/View/Meeting/TabItem/club/sub_page/ClubNew.dart';
import 'package:loginscreen/View/Meeting/TabItem/club/sub_page/ClubPageView.dart';
import 'package:loginscreen/View/Meeting/TabItem/club/sub_page/ClubRecommend.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/OpenMeetingView.dart';

class club_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClubPageView(),
          SizedBox(height: 30),
          ClubRecommend(),
          intergroupmargin,
          ClubNew(),
          intergroupmargin,
          ClubIssue(),
          intergroupmargin,
          OpenMeetingView(
            title: '클럽 열기',
            subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n활발한 커뮤니티를 만들어볼까요?',
            color: Color(0xff1c8a6a),
            arrowsize: 20,
            titlefont: FontWeight.w600,
          ),
          intergroupmargin
        ],
      ),
    );
  }
}