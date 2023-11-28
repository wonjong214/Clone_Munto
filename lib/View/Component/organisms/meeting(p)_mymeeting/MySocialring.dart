import 'package:flutter/material.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/my_meeting_icon.dart';

class MySocialring extends StatelessWidget{
  late final ScrollController _controller;

  MySocialring(ScrollController controller){
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
              textSize: mymeeting_grouptitle_textsize,
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
                    text: '좋아요를 누른 소셜링이 없어요',
                    textSize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textColor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '관심 있는 소셜링에 좋아요를 남기면 여기에서 확인할 수 있어요',
                    textSize: mymeeting_groupsub_textsize,
                    textColor: mymeeting_groupsubtext_color,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonText(
              text: '대기',
              textSize: mymeeting_grouptitle_textsize,
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
                    text: '대기하고 있는 소셜링이 없어요',
                    textSize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textColor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '참여 신청한 소셜링은 여기에서 확인할 수 있어요',
                    textSize: mymeeting_groupsub_textsize,
                    textColor: mymeeting_groupsubtext_color,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonText(
              text: '참여',
              textSize: mymeeting_grouptitle_textsize,
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
                    text: '참여하고 있는 소셜링이 없어요',
                    textSize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textColor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '참여 확정된 소셜링은 여기에서 확인할 수 있어요',
                    textSize: mymeeting_groupsub_textsize,
                    textColor: mymeeting_groupsubtext_color,
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            CommonText(
              text: '진행',
              textSize: mymeeting_grouptitle_textsize,
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
                    text: '진행하는 소셜링이 없어요',
                    textSize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textColor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  CommonText(
                    text: '내가 진행하는 소셜링은 여기에서 확인할 수 있어요',
                    textSize: mymeeting_groupsub_textsize,
                    textColor: mymeeting_groupsubtext_color,
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