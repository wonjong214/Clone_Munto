import 'package:flutter/material.dart';
import 'package:loginscreen/View/Meeting/TabItem/challenge/sub_page/ChallengeHot.dart';
import 'package:loginscreen/View/Meeting/TabItem/challenge/sub_page/ChallengePageView.dart';
import 'package:loginscreen/View/Meeting/TabItem/challenge/sub_page/ChallengeTotal.dart';

class challenge_page extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ChallengePageView(),
          ChallengeHot(),
          ChallengeTotal(),
        ],
      ),
    );
  }
}