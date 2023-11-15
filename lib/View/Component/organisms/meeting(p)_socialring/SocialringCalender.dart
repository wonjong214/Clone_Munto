import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CalenderRadio.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../atoms/GroupTitle_Text.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../molecules/meeting/Socialring_Container.dart';



class SocialringCalender extends StatefulWidget{



  @override
  State<SocialringCalender> createState() => _SocialringCalenderState();
}

class _SocialringCalenderState extends State<SocialringCalender> {
  Map<String, int> datemap;
  int? calendergroupvalue;

  _SocialringCalenderState() : datemap = new Map<String, int>() {
    getdatemap();
  }

  void getdatemap() {
    DateTime now = DateTime.now();
    int lastday = DateTime.utc(now.year, now.month + 1, 0).day;
    int today = now.day;
    int weekday = now.weekday;
    calendergroupvalue = today;

    for (int i = 0; i < 7; i++, today++, weekday++) {
      if (today > lastday) today = 1;
      if (weekday > 7) weekday = 1;
      if (i == 0)
        datemap['오늘'] = today;
      else {
        if (weekday == 1)
          datemap['월'] = today;
        else if (weekday == 2)
          datemap['화'] = today;
        else if (weekday == 3)
          datemap['수'] = today;
        else if (weekday == 4)
          datemap['목'] = today;
        else if (weekday == 5)
          datemap['금'] = today;
        else if (weekday == 6)
          datemap['토'] = today;
        else if (weekday == 7) datemap['일'] = today;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<Meeting_Provider>(context);
    return Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GroupTitle_Text('소셜링 캘린더'),
          morebutton_margin,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (MapEntry d in datemap.entries)
                CalenderRadio(
                    value: d.value,
                    groupvalue: calendergroupvalue,
                    day: d.key,
                    date: d.value,
                    onChanged: (value){
                      setState(() {
                        calendergroupvalue = value;
                      });
                    },
                )
            ],
          ),
          morebutton_margin,
          for(int num=0; num<3; num++)
            GestureDetector(
                onTap: () {print('touch');},
                child: Socialring_Container(
                  image: meeting_provider.socialring[num].image,
                  icon: meeting_provider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                  onPressed: (){
                    meeting_provider.changelike(meeting_provider.socialring[num]);
                  },
                  tag:  meeting_provider.socialring[num].tag,
                  title:  meeting_provider.socialring[num].title,
                  location:  meeting_provider.socialring[num].location,
                  date:  meeting_provider.socialring[num].date,
                  participants:  meeting_provider.socialring[num].participants,
                  total:  meeting_provider.socialring[num].total,
                )
            ),
          More_Button(double.infinity)
        ]
        )
    );
  }
}
