import 'package:flutter/material.dart';

import '../../atoms/Margin_SizedBox.dart';
import '../../molecules/meeting/ChallengeContainer_Container.dart';

class ChallengeTotal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '전체 챌린지',
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
          ],
        )
    );
  }
}