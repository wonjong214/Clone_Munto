import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/Common_Text.dart';
import '../../atoms/MyMeetingIcon_Icon.dart';

class Meeting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      color: background_color,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25),
                Common_Text(
                    text: '참여 중인 클럽',
                    textsize: profilemeeting_grouptitle_textsize,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 60),
                      MyMeetingIcon_Icon(Icons.stars_sharp),
                      SizedBox(height: 15),
                      Common_Text(
                        text: '참여 중인 클럽이 없어요',
                        textsize: mymeeting_groupbody_textsize,
                        fontWeight: mymeeting_groupbody_fontweight,
                        textcolor: mymeeting_groupbodytext_color,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                Common_Text(
                  text: '진행한 소셜링',
                  textsize: profilemeeting_grouptitle_textsize,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      MyMeetingIcon_Icon(Icons.electric_bolt),
                      SizedBox(height: 15),
                      Common_Text(
                        text: '진행한 소셜링이 없어요',
                        textsize: mymeeting_groupbody_textsize,
                        fontWeight: mymeeting_groupbody_fontweight,
                        textcolor: mymeeting_groupbodytext_color,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100,),
                Common_Text(
                  text: '진행한 챌린지',
                  textsize: profilemeeting_grouptitle_textsize,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 15),
                      MyMeetingIcon_Icon(Icons.local_fire_department),
                      SizedBox(height: 15),
                      Common_Text(
                        text: '진행한 챌린지가 없어요',
                        textsize: mymeeting_groupbody_textsize,
                        fontWeight: mymeeting_groupbody_fontweight,
                        textcolor: mymeeting_groupbodytext_color,
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