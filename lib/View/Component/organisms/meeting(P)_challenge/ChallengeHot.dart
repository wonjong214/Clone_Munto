import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/CommonMeetingTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../atoms/More_Button.dart';

class ChallengeHot extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var challenge_provider = Provider.of<Challenge_Provider>(context);
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
            for (int num = 0; num < 3; num++)
              ChallengeContainer(
                width: double.infinity,
                image: challenge_provider.challenge[num].image,
                icon: (challenge_provider.challenge[num].like
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border)),
                onPressed: (){
                  challenge_provider
                      .changelike(challenge_provider.challenge[num]);
                },
                tag: challenge_provider.challenge[num].tag,
                title: challenge_provider.challenge[num].title,
                date: challenge_provider.challenge[num].date,
                duration: challenge_provider.challenge[num].duration,
                time: challenge_provider.challenge[num].time,
                participants:
                challenge_provider.challenge[num].participants,
                total: challenge_provider.challenge[num].total,
              ),
            morebutton_margin,
            More_Button(double.infinity)
          ],
        )
    );
  }
}