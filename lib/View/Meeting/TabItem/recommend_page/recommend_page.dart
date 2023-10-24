import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/CategoryView.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/ExhibitionsView.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/HotClub.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/OpenMeetingView.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/RecommendChallenge.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/RecommendMemberView.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/ReviewView.dart';
import 'package:loginscreen/View/Meeting/TabItem/recommend_page/sub_page/TasteSocialRingView.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Exhibitions.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Review.dart';
import 'package:provider/provider.dart';

import '../../../../ViewModel/Recommend_Page/TasteSocialRing.dart';



class recommend_page extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //페이지뷰
            ChangeNotifierProvider(
              create: (context) => Exhibitions_Provider(),
              child: ExhibitionsView(),
            ),
            //카테고리
            CategoryView(),
            Divider(color: Color(0xff8e8e8e)),
            //추천 스크롤 뷰
            ChangeNotifierProvider(
              create: (context) => TasteSocialRing_Provider(),
              child: TasteSocialRingView(),
            ),
            intergroupmargin,
            ChangeNotifierProvider(
              create: (context) => Review_Provider(),
              child: ReviewView(),
            ),
            intergroupmargin,
            HotClub(),
            intergroupmargin,
            RecommendChallenge(),
            intergroupmargin,
            RecommendMemberView(),
            intergroupmargin,
            OpenMeetingView(),
            SizedBox(height: 80,)
          ],
        )
    );
  }
}






