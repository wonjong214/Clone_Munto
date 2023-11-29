import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/calender_radio.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/meeting_provider_view_model.dart';
import '../../atoms/common_text.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';



class SocialringCalender extends StatefulWidget{



  @override
  State<SocialringCalender> createState() => _SocialringCalenderState();
}

class _SocialringCalenderState extends State<SocialringCalender> {
  Map<String, int> dateMap;
  int? calenderGroupValue;
  bool _isInit = true;
  bool _isSocialringLoading = false;

  _SocialringCalenderState() : dateMap = new Map<String, int>() {
    getdateMap();
  }
  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isSocialringLoading = true;
      });


      Provider.of<MeetingProvider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _isSocialringLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  void getdateMap() {
    DateTime now = DateTime.now();
    int lastday = DateTime.utc(now.year, now.month + 1, 0).day;
    int today = now.day;
    int weekday = now.weekday;
    calenderGroupValue = today;

    for (int i = 0; i < 7; i++, today++, weekday++) {
      if (today > lastday) today = 1;
      if (weekday > 7) weekday = 1;
      if (i == 0)
        dateMap['오늘'] = today;
      else {
        if (weekday == 1)
          dateMap['월'] = today;
        else if (weekday == 2)
          dateMap['화'] = today;
        else if (weekday == 3)
          dateMap['수'] = today;
        else if (weekday == 4)
          dateMap['목'] = today;
        else if (weekday == 5)
          dateMap['금'] = today;
        else if (weekday == 6)
          dateMap['토'] = today;
        else if (weekday == 7) dateMap['일'] = today;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<MeetingProvider>(context);
    return Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CommonText(
            text: '소셜링 캘린더',
            textSize: meetingTabGroupTitleTextSize,
            fontWeight: meetingTabGroupTitleFontWeight,
          ),
          moreButtonMargin,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (MapEntry d in dateMap.entries)
                CalenderRadio(
                    value: d.value,
                    groupValue: calenderGroupValue,
                    day: d.key,
                    date: d.value,
                    onChanged: (value){
                      setState(() {
                        calenderGroupValue = value;
                      });
                    },
                )
            ],
          ),
          moreButtonMargin,
          _isSocialringLoading ? const Center(child: CircularProgressIndicator())
              :Column(
            children: [
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: SocialringContainer(
                      image: meeting_provider.socialring[num].image,
                      icon: meeting_provider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                      onPressed: (){
                        meeting_provider.changeLike(meeting_provider.socialring[num]);
                      },
                      tag:  meeting_provider.socialring[num].tag,
                      title:  meeting_provider.socialring[num].title,
                      location:  meeting_provider.socialring[num].location,
                      date:  meeting_provider.socialring[num].date,
                      participants:  meeting_provider.socialring[num].participants,
                      total:  meeting_provider.socialring[num].total,
                    )
                ),
            ],
          ),
          MoreButton(double.infinity)
        ]
        )
    );
  }
}
