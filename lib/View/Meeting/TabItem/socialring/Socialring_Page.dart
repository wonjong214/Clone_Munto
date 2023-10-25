import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/OpenMeetingView.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/SocialringCalender.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/SocialringHicking.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/SocialringHostView.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/SocialringRecommend.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/SocialringReview.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/Socialring_PageView.dart';

class Socialring_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Socialring_PageView(),
          SizedBox(height: 30),
          SocialringRecommend(),
          intergroupmargin,
          SocialringReview(),
          intergroupmargin,
          SocialringHicking(),
          intergroupmargin,
          SocialringHostView(),
          intergroupmargin,
          SocialringCalender(),
          intergroupmargin,
          OpenMeetingView(title: '소셜링 열기', subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?')

        ],
      ),
    );
  }
}