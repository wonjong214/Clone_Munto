import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/organisms/meeting(P)_challenge/ChallengeHot.dart';
import 'package:loginscreen/View/Component/organisms/meeting(P)_challenge/ChallengePageView.dart';
import 'package:loginscreen/View/Component/organisms/meeting(P)_challenge/ChallengeTotal.dart';
import '../../../organisms/meeting(p)_recommend/OpenMeetingView.dart';



class challenge_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ChallengePageView(),
          SizedBox(height: 30,),
          ChangeNotifierProvider(
            create: (context) => Challenge_Provider(),
            child: ChallengeHot(),
          ),
          intergroupmargin,
          ChangeNotifierProvider(
            create: (context) => Challenge_Provider(),
            child: ChallengeTotal(),
          ),
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