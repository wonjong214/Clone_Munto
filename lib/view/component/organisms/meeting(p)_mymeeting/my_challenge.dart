import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/common_text.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/my_meeting_icon.dart';

class MyChallenge extends StatelessWidget{
  late final ScrollController _controller;

  MyChallenge(ScrollController controller){
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        controller: _controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            CommonText(
                text: '좋아요',
                textSize: myMeetingGroupTitleTextSize,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon(Icons.favorite_border),
                  SizedBox(height: 15),
                  CommonText(
                    text: '좋아요를 누른 챌린지가 없어요',
                    textSize: myMeetingGroupBodyTextSize,
                    fontWeight: myMeetingGroupBodyFontWeight,
                    textColor: myMeetingGroupBodyTextColor,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '관심 있는 챌린지에 좋아요를 남기면 여기에서 확인할 수 있어요',
                    textSize: myMeetingGroupSubTextSize,
                    textColor: myMeetingGroupSubTextColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonText(
              text: '대기',
              textSize: myMeetingGroupTitleTextSize,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon(Icons.stars_sharp),
                  SizedBox(height: 15),
                  CommonText(
                    text: '대기하고 있는 챌린지가 없어요',
                    textSize: myMeetingGroupBodyTextSize,
                    fontWeight: myMeetingGroupBodyFontWeight,
                    textColor: myMeetingGroupBodyTextColor,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '참여 신청한 챌린지는 여기에서 확인할 수 있어요',
                    textSize: myMeetingGroupSubTextSize,
                    textColor: myMeetingGroupSubTextColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonText(
              text: '참여',
              textSize: myMeetingGroupTitleTextSize,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon(Icons.stars_sharp),
                  SizedBox(height: 15),
                  CommonText(
                    text: '참여하고 있는 챌린지가 없어요',
                    textSize: myMeetingGroupBodyTextSize,
                    fontWeight: myMeetingGroupBodyFontWeight,
                    textColor: myMeetingGroupBodyTextColor,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '참여 확정된 챌린지는 여기에서 확인할 수 있어요',
                    textSize: myMeetingGroupSubTextSize,
                    textColor: myMeetingGroupSubTextColor,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonText(
              text: '진행',
              textSize: myMeetingGroupTitleTextSize,
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon(Icons.add_circle_outline_sharp),
                  SizedBox(height: 15),
                  CommonText(
                    text: '진행하는 챌린지가 없어요',
                    textSize: myMeetingGroupBodyTextSize,
                    fontWeight: myMeetingGroupBodyFontWeight,
                    textColor: myMeetingGroupBodyTextColor,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '내가 진행하는 챌린지는 여기에서 확인할 수 있어요',
                    textSize: myMeetingGroupSubTextSize,
                    textColor: myMeetingGroupSubTextColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}