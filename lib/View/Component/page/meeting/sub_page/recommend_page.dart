import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_recommend/CategoryGrid.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_recommend/HotTag.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Exhibitions.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Review.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/SelectedHostProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../../atoms/Margin_SizedBox.dart';
import '../../../organisms/meeting(p)_recommend/ExhibitionsView.dart';
import '../../../organisms/meeting(p)_recommend/HotClub.dart';
import '../../../organisms/meeting(p)_recommend/OpenMeetingView.dart';
import '../../../organisms/meeting(p)_recommend/RecommendChallenge.dart';
import '../../../organisms/meeting(p)_recommend/RecommendMemberView.dart';
import '../../../organisms/meeting(p)_recommend/ReviewView.dart';
import '../../../organisms/meeting(p)_recommend/TasteSocialRingView.dart';



class recommend_page extends StatelessWidget{
  late final ScrollController _controller;

  recommend_page(ScrollController controller){
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      child:Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //페이지뷰
            ChangeNotifierProvider(
              create: (context) => Exhibitions_Provider(),
              child: ExhibitionsView(height: 350,),
            ),
            //카테고리
            CategoryGrid(),
            SizedBox(height: 20,),
            Divider(color: Color(0xff8e8e8e)),
            SizedBox(height: 20,),
            HotTag(),
            intergroupmargin,
            //추천 스크롤 뷰
            MultiProvider(
              providers: [
                ChangeNotifierProvider(
                  create: (context) => Meeting_Provider()
                ),
                ],
              child: TasteSocialRingView(),
            ),
            intergroupmargin,
            ChangeNotifierProvider(
              create: (context) => Review_Provider(),
              child: ReviewView(),
            ),
            intergroupmargin,
            ChangeNotifierProvider(
              create: (context) => Meeting_Provider(),
              child: HotClub(),
            ),
            intergroupmargin,
            RecommendChallenge(),
            intergroupmargin,
            ChangeNotifierProvider(
              create: (context) => SelectedHost_Provider(),
              child: RecommendMemberView(),
            ),
            intergroupmargin,
            OpenMeetingView(title: '모임 열기',subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?'),
            SizedBox(height: 80,)
          ],
        )
    );
  }
}






