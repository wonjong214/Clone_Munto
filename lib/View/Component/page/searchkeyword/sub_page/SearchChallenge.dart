import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import 'package:provider/provider.dart';

import '../../../../../ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';

class SearchChallenge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var challenge_provider = Provider.of<Challenge_Provider>(context);
    return Container(
      color: background_color,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey.shade700),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '마감된 모임도 보기',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '기본순',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.keyboard_arrow_down_outlined,size: 20,)
                ],
              ),
              SizedBox(height: 20,),
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
            ],
          ),
        ),
      ),
    );
  }
}