import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/Recommend_Page/challenge_provider_view_model.dart';
import '../../../../view_model/Recommend_Page/meeting_provider_view_model.dart';
import '../../atoms/common_text.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';
import '../../molecules/meeting/challenge_container.dart';
import '../../molecules/meeting/club_container.dart';

class TasteSocialRingView extends StatefulWidget {
  @override
  State<TasteSocialRingView> createState() => _TasteSocialRingViewState();
}

class _TasteSocialRingViewState extends State<TasteSocialRingView> {
  bool _isInit = true;
  bool _isChallengeLoading = false;
  bool _isSocialringLoading = false;
  bool _isClubLoading = false;


  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isChallengeLoading = true;
        _isSocialringLoading = true;
        _isClubLoading = true;
      });

      Provider.of<ChallengeProvider>(context).fetchAndSetChallengeItems().then((_){
        setState(() {
          _isChallengeLoading = false;
        });
      });

      Provider.of<MeetingProvider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _isSocialringLoading = false;
        });
      });

      Provider.of<MeetingProvider>(context).fetchAndSetClubItems().then((_){
        setState(() {
          _isClubLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<MeetingProvider>(context);
    var challenge_provider = Provider.of<ChallengeProvider>(context);

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
                    CommonText(
                      text: '취향 저격 소셜링',
                      textSize: meetingTabGroupTitleTextSize,
                      fontWeight: meetingTabGroupTitleFontWeight,
                    ),
                    titleMargin,
                    CommonText(
                      text: '내 취향에 딱 맞는 원데이 모임',
                      textSize: meetingTabGroupSubTitleTextSize,
                      textColor: meetingTabGroupSubTitleColor,
                    ),
                    titleMargin,
                    _isSocialringLoading ? const Center(child: CircularProgressIndicator())
                    :Column(
                      children: [
                        for(int num=0; num<3; num++)
                          GestureDetector(
                              onTap: () {print('touch');},
                              child: SocialringContainer(
                                width: 350,
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
                    MoreButton(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: '취향 저격 클럽',
                      textSize: meetingTabGroupTitleTextSize,
                      fontWeight: meetingTabGroupTitleFontWeight,
                    ),
                    titleMargin,
                    CommonText(
                      text: '지속형 모임으로 오래오래 친하게',
                      textSize: meetingTabGroupSubTitleTextSize,
                      textColor: meetingTabGroupSubTitleColor,
                    ),
                    titleMargin,
                    _isClubLoading ? const Center(child: CircularProgressIndicator())
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
                                  .changeLike(meeting_provider.club[num]);
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
                    MoreButton(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                      text: '취향 저격 챌린지',
                      textSize: meetingTabGroupTitleTextSize,
                      fontWeight: meetingTabGroupTitleFontWeight,
                    ),
                    titleMargin,
                    CommonText(
                      text: '같은 목표를 위해 함께 하는 도전',
                      textSize: meetingTabGroupSubTitleTextSize,
                      textColor: meetingTabGroupSubTitleColor,
                    ),
                    titleMargin,
                    _isChallengeLoading ? const Center(child: CircularProgressIndicator())
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
                                  .changeLike(challenge_provider.challenge[num]);
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
                    MoreButton(350)
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
