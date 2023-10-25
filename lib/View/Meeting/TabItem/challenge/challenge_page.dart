import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Meeting/TabItem/challenge/sub_page/ChallengeHot.dart';
import 'package:loginscreen/View/Meeting/TabItem/challenge/sub_page/ChallengePageView.dart';
import 'package:loginscreen/View/Meeting/TabItem/challenge/sub_page/ChallengeTotal.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/OpenMeetingView.dart';

class challenge_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ChallengePageView(),
          SizedBox(height: 30,),
          ChallengeHot(),
          intergroupmargin,
          ChallengeTotal(),
          SizedBox(height: 25,),
          OpenMeetingView(
            title: '챌린지 열기',
            subtitle: '더 나은 변화를 위해 같은 목표를 가진\n멤버들과 함께 도전해볼까요?',
            color: Color(0xff3498d0),
            arrowsize: 20,
          ),
          intergroupmargin
        ],
      ),
    );
  }
}