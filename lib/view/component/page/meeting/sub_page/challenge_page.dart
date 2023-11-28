import 'package:flutter/material.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../organisms/meeting(P)_challenge/challenge_hot.dart';
import '../../../organisms/meeting(P)_challenge/challenge_pageview.dart';
import '../../../organisms/meeting(P)_challenge/challenge_total.dart';
import '../../../organisms/meeting(p)_recommend/open_meeting_view.dart';



class ChallengePage extends StatelessWidget{
  late final ScrollController _controller;

  ChallengePage(ScrollController controller){
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ChallengePageView(),
          SizedBox(height: 30,),
          ChallengeHot(),
          interGroupMargin,
          ChallengeTotal(),
          SizedBox(height: 25,),
          OpenMeetingView(
            title: '챌린지 열기',
            subtitle: '더 나은 변화를 위해 같은 목표를 가진\n멤버들과 함께 도전해볼까요?',
            color: Color(0xff3498d0),
            arrowsize: 20,
          ),
          interGroupMargin
        ],
      ),
    );
  }
}