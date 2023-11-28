import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/calender_radio.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/fontsize.dart';
import '../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../atoms/common_text.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';



class SocialringCalender extends StatefulWidget{



  @override
  State<SocialringCalender> createState() => _SocialringCalenderState();
}

class _SocialringCalenderState extends State<SocialringCalender> {
  Map<String, int> datemap;
  int? calendergroupvalue;
  bool _isInit = true;
  bool _issocialringLoading = false;

  _SocialringCalenderState() : datemap = new Map<String, int>() {
    getdatemap();
  }
  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _issocialringLoading = true;
      });


      Provider.of<Meeting_Provider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _issocialringLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
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
          CommonText(
            text: '소셜링 캘린더',
            textSize: meetingtab_grouptitle_textsize,
            fontWeight: meetingtab_grouptitle_fontweight,
          ),
          moreButtonMargin,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (MapEntry d in datemap.entries)
                CalenderRadio(
                    value: d.value,
                    groupValue: calendergroupvalue,
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
          moreButtonMargin,
          _issocialringLoading ? const Center(child: CircularProgressIndicator())
              :Column(
            children: [
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: SocialringContainer(
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
            ],
          ),
          MoreButton(double.infinity)
        ]
        )
    );
  }
}
