import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../molecules/meeting/ChallengeContainer_Container.dart';

class RecommendChallenge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '주목할 만한 챌린지',
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            SizedBox(height: 8),
            Text(
              '이번 주부터 갓생 시작',
              style: TextStyle(color: subtitle_color),

            ),
            SizedBox(height: 8),
            for(int num=0; num<3; num++)
              Column(
                children: [
                  ChallengeContainer(double.infinity),
                  morebutton_margin,
                ],
              ),
            More_Button(double.infinity)
          ],
        )
    );
  }
}