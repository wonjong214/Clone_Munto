import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/fontsize.dart';
import '../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../atoms/Common_Text.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../molecules/meeting/ClubContainer_Container.dart';

class HotClub extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Meeting_Provider>(context);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Common_Text(
            text: '지금 핫한 클럽',
            textsize: meetingtab_grouptitle_textsize,
            fontWeight: meetingtab_grouptitle_fontweight,
          ),
          SizedBox(height: 8),
          Text(
            '지금 멤버들이 몰리고 있는',
            style: TextStyle(color: subtitle_color),

          ),
          SizedBox(height: 8),
          for(int num=0; num<provider.club.length; num++)
            ClubContainer(
              width: double.infinity,
              image: provider.club[num].image,
              icon: (provider.club[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
              onPressed: (){
                provider.changelike(provider.club[num]);
              },
              tag: provider.club[num].tag,
              title: provider.club[num].title,
              location: provider.club[num].location,
              date: provider.club[num].date,
              participants: provider.club[num].participants,
              total: provider.club[num].total,
            ),
          More_Button(double.infinity)
        ],
      )
    );
  }
}