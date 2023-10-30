import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/KeyWordTag_Container.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ClubContainer_Container.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';
import '../../atoms/More_Button.dart';

class ClubRecommend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '추천 클럽',
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            SizedBox(height: 8),
            for(int num=0; num<3; num++)
              Column(
                children: [
                  ClubContainer(double.infinity),
                  SizedBox(height: 10),
                ],
              ),
            More_Button(double.infinity)
          ],
        )
    );
  }
}