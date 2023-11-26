import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../../../Constants/colors.dart';
import '../../../../Constants/fontsize.dart';
import '../../../../ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import '../../atoms/Common_Text.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../molecules/meeting/ClubContainer_Container.dart';
import '../../molecules/meeting/Socialring_Container.dart';

class TasteSocialRingView extends StatefulWidget {
  @override
  State<TasteSocialRingView> createState() => _TasteSocialRingViewState();
}

class _TasteSocialRingViewState extends State<TasteSocialRingView> {
  bool _isInit = true;
  bool _ischallengeLoading = false;
  bool _issocialringLoading = false;
  bool _isclubLoading = false;


  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _ischallengeLoading = true;
        _issocialringLoading = true;
        _isclubLoading = true;
      });

      Provider.of<Challenge_Provider>(context).fetchAndSetChallengeItems().then((_){
        setState(() {
          _ischallengeLoading = false;
        });
      });

      Provider.of<Meeting_Provider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _issocialringLoading = false;
        });
      });

      Provider.of<Meeting_Provider>(context).fetchAndSetClubItems().then((_){
        setState(() {
          _isclubLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<Meeting_Provider>(context);
    var challenge_provider = Provider.of<Challenge_Provider>(context);

    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      width: double.infinity,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Common_Text(
                      text: '취향 저격 소셜링',
                      textsize: meetingtab_grouptitle_textsize,
                      fontWeight: meetingtab_grouptitle_fontweight,
                    ),
                    title_margin,
                    Common_Text(
                      text: '내 취향에 딱 맞는 원데이 모임',
                      textsize: meetingtab_groupsubtitle_textsize,
                      textcolor: meetingtab_groupsubtitle_color,
                    ),
                    title_margin,
                    _issocialringLoading ? const Center(child: CircularProgressIndicator())
                    :Column(
                      children: [
                        for(int num=0; num<3; num++)
                          GestureDetector(
                              onTap: () {print('touch');},
                              child: Socialring_Container(
                                width: 350,
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
                    More_Button(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Common_Text(
                      text: '취향 저격 클럽',
                      textsize: meetingtab_grouptitle_textsize,
                      fontWeight: meetingtab_grouptitle_fontweight,
                    ),
                    title_margin,
                    Common_Text(
                      text: '지속형 모임으로 오래오래 친하게',
                      textsize: meetingtab_groupsubtitle_textsize,
                      textcolor: meetingtab_groupsubtitle_color,
                    ),
                    title_margin,
                    _isclubLoading ? const Center(child: CircularProgressIndicator())
                    : Column(
                      children: [
                        for (int num = 0; num < meeting_provider.club.length; num++)
                          ClubContainer(
                            width: 350,
                            image: meeting_provider.club[num].image,
                            icon: (meeting_provider.club[num].like
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                            onPressed: () {
                              meeting_provider
                                  .changelike(meeting_provider.club[num]);
                            },
                            tag: meeting_provider.club[num].tag,
                            title: meeting_provider.club[num].title,
                            location: meeting_provider.club[num].location,
                            date: meeting_provider.club[num].date,
                            participants: meeting_provider.club[num].participants,
                            total: meeting_provider.club[num].total,
                          ),
                      ],
                    ),
                    More_Button(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Common_Text(
                      text: '취향 저격 챌린지',
                      textsize: meetingtab_grouptitle_textsize,
                      fontWeight: meetingtab_grouptitle_fontweight,
                    ),
                    title_margin,
                    Common_Text(
                      text: '같은 목표를 위해 함께 하는 도전',
                      textsize: meetingtab_groupsubtitle_textsize,
                      textcolor: meetingtab_groupsubtitle_color,
                    ),
                    title_margin,
                    _ischallengeLoading ? const Center(child: CircularProgressIndicator())
                      : Column(
                      children: [
                        for (int num = 0; num < 3; num++)
                          ChallengeContainer(
                            width: double.infinity,
                            image: challenge_provider.challenge[num].image,
                            icon: (challenge_provider.challenge[num].like
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                            onPressed: (){
                              challenge_provider
                                  .changelike(challenge_provider.challenge[num]);
                            },
                            tag: challenge_provider.challenge[num].tag,
                            title: challenge_provider.challenge[num].title,
                            date: challenge_provider.challenge[num].date,
                            duration: challenge_provider.challenge[num].duration,
                            time: challenge_provider.challenge[num].time,
                            participants:
                            challenge_provider.challenge[num].participants,
                            total: challenge_provider.challenge[num].total,
                          ),
                      ],
                    ),
                    More_Button(350)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
