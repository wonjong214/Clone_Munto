import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Meeting/TabItem/socialring/sub_page/SocialringHicking.dart';
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
          intergroupmargin,
          SocialringRecommend(),
          intergroupmargin,
          SocialringReview(),
          intergroupmargin,
          SocialringHicking(),
        ],
      ),
    );
  }
}