import 'package:flutter/material.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/Common_Text.dart';
import '../../atoms/MyMeetingGroupSub_Text.dart';
import '../../atoms/MyMeetingGroupTitle_Text.dart';
import '../../atoms/MyMeetingIcon_Icon.dart';

class MyClubView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('좋아요',17),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.favorite_border),
                  SizedBox(height: 15),
                  Common_Text(
                    text: '좋아요를 누른 클럽이 없어요',
                    textsize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textcolor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('관심 있는 클럽에 좋아요를 남기면 여기에서 확인할 수 있어요')
                ],
              ),
            ),
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('대기',17),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.stars_sharp),
                  SizedBox(height: 15),
                  Common_Text(
                    text: '대기하고 있는 클럽이 없어요',
                    textsize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textcolor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('참여 신청한 클럽은 여기에서 확인할 수 있어요')
                ],
              ),
            ),
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('참여',17),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.stars_sharp),
                  SizedBox(height: 15),
                  Common_Text(
                    text: '참여하고 있는 클럽이 없어요',
                    textsize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textcolor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('참여 확정된 클럽은 여기에서 확인할 수 있어요')
                ],
              ),
            ),
            SizedBox(height: 30),
            MyMeetingGroupTitle_Text('진행',17),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  MyMeetingIcon_Icon(Icons.add_circle_outline_sharp),
                  SizedBox(height: 15),
                  Common_Text(
                    text: '진행하는 클럽이 없어요',
                    textsize: mymeeting_groupbody_textsize,
                    fontWeight: mymeeting_groupbody_fontweight,
                    textcolor: mymeeting_groupbodytext_color,
                  ),
                  SizedBox(height: 15),
                  MyMeetingGroupSub_Text('내가 진행하는 클럽은 여기에서 확인할 수 있어요')
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}