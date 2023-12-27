import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constants/fontsize.dart';
import '../../../../model/meeting/recommend/meeting_summary.dart';
import '../../../../providers/meeting_summary_provider.dart';
import '../../../atoms/calender_radio.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/circularprogress_container.dart';
import '../../../molecules/meeting/Socialring_Container.dart';



class SocialringCalender extends StatefulWidget{
  List<MeetingSummary>? socialringSummary;
  Function socialringChangeLike;
  bool isSocialringLoading;
  
  SocialringCalender({required this.socialringSummary, required this.socialringChangeLike,
    required this.isSocialringLoading});

  @override
  State<SocialringCalender> createState() => _SocialringCalenderState();
}

class _SocialringCalenderState extends State<SocialringCalender> {
  Map<String, int> dateMap;
  int? calenderGroupValue;
  

  _SocialringCalenderState() : dateMap = new Map<String, int>();
  
  @override
  void initState() {
    super.initState();
    getdateMap();
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
          widget.isSocialringLoading ?
          Column(
            children: [
              for (int num = 0; num < 3; num++)
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: CircularprogressContainer(
                    width: double.infinity,
                    height: 120,
                    backColor: Colors.white60,
                    circular: 5,
                  ),
                ),
            ],
          ) :
          Column(
            children: [
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: SocialringContainer(
                      image: widget.socialringSummary![num].image,
                      icon: widget.socialringSummary![num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                      onPressed: (){
                        widget.socialringChangeLike(widget.socialringSummary![num]);
                      },
                      tag:  widget.socialringSummary![num].tag,
                      title:  widget.socialringSummary![num].title,
                      location:  widget.socialringSummary![num].location,
                      date:  widget.socialringSummary![num].date,
                      participants:  widget.socialringSummary![num].participants,
                      total:  widget.socialringSummary![num].total,
                    )
                ),
            ],
          ),
          /*MoreButton(double.infinity)*/
        ]
        )
    );
  }
}
