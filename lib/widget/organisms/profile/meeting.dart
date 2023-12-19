import 'package:flutter/material.dart';
import 'package:Clone_Munto/constants/colors.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/my_meeting_icon.dart';

class Meeting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backGroundColor,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                CommonText(
                    text: '참여 중인 클럽',
                    textSize: profileMeetingGroupTitleTextSize,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60),
                      MyMeetingIcon(Icons.stars_sharp),
                      SizedBox(height: 15),
                      CommonText(
                        text: '참여 중인 클럽이 없어요',
                        textSize: myMeetingGroupBodyTextSize,
                        fontWeight: myMeetingGroupBodyFontWeight,
                        textColor: myMeetingGroupBodyTextColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                CommonText(
                  text: '진행한 소셜링',
                  textSize: profileMeetingGroupTitleTextSize,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      MyMeetingIcon(Icons.electric_bolt),
                      SizedBox(height: 15),
                      CommonText(
                        text: '진행한 소셜링이 없어요',
                        textSize: myMeetingGroupBodyTextSize,
                        fontWeight: myMeetingGroupBodyFontWeight,
                        textColor: myMeetingGroupBodyTextColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                CommonText(
                  text: '진행한 챌린지',
                  textSize: profileMeetingGroupTitleTextSize,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      MyMeetingIcon(Icons.local_fire_department),
                      SizedBox(height: 15),
                      CommonText(
                        text: '진행한 챌린지가 없어요',
                        textSize: myMeetingGroupBodyTextSize,
                        fontWeight: myMeetingGroupBodyFontWeight,
                        textColor: myMeetingGroupBodyTextColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}