import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/CommonMeetingTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import '../../atoms/More_Button.dart';

class ChallengeHot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '인기 챌린지',
              style: TextStyle(
                  fontSize: 22
              ),
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