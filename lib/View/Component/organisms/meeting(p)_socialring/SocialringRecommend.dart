import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/CommonMeetingTitle_Text.dart';
import 'package:loginscreen/View/Component/molecules/meeting/Socialring_Container.dart';
import '../../atoms/More_Button.dart';



class SocialringRecommend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '추천 소셜링',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 10),
          for(int num=0; num<3; num++)
            GestureDetector(
                onTap: () {print('touch');},
                child: Socialring_Container()
            ),
          More_Button(double.infinity)
        ],
      )
    );
  }
}