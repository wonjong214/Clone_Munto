import 'package:flutter/material.dart';

import '../../../../../Component/atoms/MyMeetingGroupBody_Text.dart';
import '../../../../../Component/atoms/MyMeetingGroupSub_Text.dart';
import '../../../../../Component/atoms/MyMeetingGroupTitle_Text.dart';
import '../../../../../Component/atoms/MyMeetingIcon_Icon.dart';

class MyChallenge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('좋아요'),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.favorite_border),
                  SizedBox(height: 15),
                  MyMeetingGroupBody_Text('좋아요를 누른 챌린지가 없어요'),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('관심 있는 챌린지에 좋아요를 남기면 여기에서 확인할 수 있어요')
                ],
              ),
            ),
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('대기'),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.stars_sharp),
                  SizedBox(height: 15),
                  MyMeetingGroupBody_Text('대기하고 있는 챌린지가 없어요'),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('참여 신청한 챌린지는 여기에서 확인할 수 있어요')
                ],
              ),
            ),
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('참여'),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.stars_sharp),
                  SizedBox(height: 15),
                  MyMeetingGroupBody_Text('참여하고 있는 챌린지가 없어요'),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('참여 확정된 챌린지는 여기에서 확인할 수 있어요')
                ],
              ),
            ),
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('진행'),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.add_circle_outline_sharp),
                  SizedBox(height: 15),
                  MyMeetingGroupBody_Text('진행하는 챌린지가 없어요'),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('내가 진행하는 챌린지는 여기에서 확인할 수 있어요')
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}