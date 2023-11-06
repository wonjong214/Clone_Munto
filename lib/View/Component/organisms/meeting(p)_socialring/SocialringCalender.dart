import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';
import '../../atoms/Common_Container.dart';
import '../../atoms/GroupImage_Container.dart';
import '../../atoms/GroupTitle_Text.dart';
import '../../atoms/KeyWordTag_Container.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../atoms/SocialRingParticipant_Text.dart';
import '../../atoms/SocialRingSubTitle_Text.dart';

class SocialringCalender extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SocialringCalender_State();
  }
}

class SocialringCalender_State
    extends State<SocialringCalender> /*with SingleTickerProviderStateMixin */ {
  /*late TabController tabController = TabController(
    length: 7,
    vsync: this,
    initialIndex: 0,

    /// 탭 변경 애니메이션 시간
    animationDuration: const Duration(milliseconds: 1),
  );*/

  Map<String, int> datemap;

  SocialringCalender_State() : datemap = new Map<String, int>() {
    getdatemap();
  }

  void getdatemap() {
    DateTime now = DateTime.now();
    int lastday = DateTime.utc(now.year, now.month + 1, 0).day;
    int today = now.day;
    int weekday = now.weekday;

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
    return Container(
        margin: EdgeInsets.only(right: 20, left: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          GroupTitle_Text('소셜링 캘린더'),
          morebutton_margin,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (MapEntry d in datemap.entries)
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 60,
                    //padding: EdgeInsets.only(left: 3, right: 3, top: 8, bottom: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                        color: Colors.red),
                    child: Column(
                      children: [
                        Spacer(flex: 1),
                        Text(
                          d.key,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(flex: 1),
                        Text(
                          '${d.value}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.w600),
                        ),
                        Spacer(flex: 1),
                      ],
                    ),
                  ),
                )
            ],
          ),
          /*TabBar(
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
            controller: tabController,
            unselectedLabelColor: subtitle_color,
            labelColor: Colors.white,
            indicator: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,

                borderRadius: BorderRadius.circular(15)),
            tabs: [
              for (MapEntry e in datemap.entries)
                Tab(
                    child: Column(
                      children: [
                        Text(e.key),
                        SizedBox(
                          height: 10,
                        ),
                        Text('${e.value}')
                  ],
                )
                )
            ],
          )*/
          morebutton_margin,
          for (int i = 0; i < 3; i++)
            Column(
              children: [
                Common_Container(
                    widget: Row(
                      children: [
                        GroupImage(
                            IconButton(
                                icon: (Icon(Icons.favorite)),
                                color: Colors.white,
                                onPressed: () {}),
                            'assets/images/socialring/backpacker.jpg'),
                        SizedBox(
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                KeyWordTag_Container('관악산'),
                                CommonMeetingTitle_Text('같이 관악산 국기봉 정복하러 가요'),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 15,
                                      color: subtitle_color,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                        child: Row(
                                      children: [
                                        Text(
                                          '소셜링·',
                                          style: TextStyle(
                                              fontSize: 15, color: subtitle_color),
                                        ),
                                        SocialRingSubTitle_Text(
                                            '관악구', '10.28(토) 오후 4:00')
                                      ],
                                    ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: subtitle_color,
                                      size: 15,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SocialRingParticipant(1, 8),
                                  ],
                                )
                              ],
                            ))
                      ],
                )),
                SizedBox(
                  height: 20,
                )
              ],
            ),
          More_Button(double.infinity)
        ]
        )
    );
  }
}
