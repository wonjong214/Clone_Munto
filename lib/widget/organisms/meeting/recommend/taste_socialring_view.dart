import 'package:flutter/material.dart';
import 'package:Clone_Munto/model/meeting/recommend/meeting_summary.dart';
import 'package:Clone_Munto/widget/molecules/circularprogress_container.dart';
import 'package:provider/provider.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/fontsize.dart';
import '../../../../model/meeting/recommend/challenge_summary.dart';
import '../../../../providers/meeting_summary_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/meeting/Socialring_Container.dart';
import '../../../molecules/meeting/challenge_container.dart';
import '../../../molecules/meeting/club_container.dart';

class TasteSocialRingView extends StatefulWidget {
  List<ChallengeSummary>? challengeSummary;
  Function challengeChangeLike;
  bool isChallengeLoading;
  List<MeetingSummary>? socialringSummary;
  Function socialringChangeLike;
  bool isSocialringLoading;
  List<MeetingSummary>? clubSummary;
  Function clubChangeLike;
  bool isClubLoading;

  TasteSocialRingView(
      {required this.challengeSummary,
      required this.challengeChangeLike,
      required this.isChallengeLoading,
      required this.socialringSummary,
      required this.socialringChangeLike,
      required this.isSocialringLoading,
      required this.clubSummary,
      required this.clubChangeLike,
      required this.isClubLoading});

  @override
  State<TasteSocialRingView> createState() => _TasteSocialRingViewState();
}

class _TasteSocialRingViewState extends State<TasteSocialRingView> {
  @override
  Widget build(BuildContext context) {
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
                    widget.isSocialringLoading
                        ? Column(
                            children: [
                              for (int num = 0; num < 3; num++)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: CircularprogressContainer(
                                    width: 350,
                                    height: 120,
                                    backColor: Colors.white60,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                            ],
                          )
                        : Column(
                            children: [
                              for (int num = 0; num < 3; num++)
                                GestureDetector(
                                    onTap: () {
                                      print('touch');
                                    },
                                    child: SocialringContainer(
                                      width: 350,
                                      image:
                                          widget.socialringSummary![num].image,
                                      icon: widget.socialringSummary![num].like
                                          ? Icon(Icons.favorite)
                                          : Icon(Icons.favorite_border),
                                      onPressed: () {
                                        widget.socialringChangeLike(
                                            widget.socialringSummary![num]);
                                      },
                                      tag: widget.socialringSummary![num].tag,
                                      title:
                                          widget.socialringSummary![num].title,
                                      location: widget
                                          .socialringSummary![num].location,
                                      date: widget.socialringSummary![num].date,
                                      participants: widget
                                          .socialringSummary![num].participants,
                                      total:
                                          widget.socialringSummary![num].total,
                                    )),
                            ],
                          ),
                    /*MoreButton(350)*/
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
                    widget.isClubLoading
                        ? Column(
                            children: [
                              for (int num = 0; num < 3; num++)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: CircularprogressContainer(
                                    width: 350,
                                    height: 120,
                                    backColor: Colors.white60,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                            ],
                          )
                        : Column(
                            children: [
                              for (int num = 0; num < 3; num++)
                                ClubContainer(
                                  width: 350,
                                  image: widget.clubSummary![num].image,
                                  icon: (widget.clubSummary![num].like
                                      ? Icon(Icons.favorite)
                                      : Icon(Icons.favorite_border)),
                                  onPressed: () {
                                    widget.clubChangeLike(
                                        widget.clubSummary![num]);
                                  },
                                  tag: widget.clubSummary![num].tag,
                                  title: widget.clubSummary![num].title,
                                  location: widget.clubSummary![num].location,
                                  date: widget.clubSummary![num].date,
                                  participants:
                                      widget.clubSummary![num].participants,
                                  total: widget.clubSummary![num].total,
                                ),
                            ],
                          ),
                    /*MoreButton(350)*/
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
                    widget.isChallengeLoading
                        ? Column(
                            children: [
                              for (int num = 0; num < 3; num++)
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15),
                                  child: CircularprogressContainer(
                                    width: 350,
                                    height: 120,
                                    backColor: Colors.white60,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                            ],
                          )
                        : Column(
                            children: [
                              for (int num = 0; num < 3; num++)
                                ChallengeContainer(
                                  width: double.infinity,
                                  image: widget.challengeSummary![num].image,
                                  icon: (widget.challengeSummary![num].like
                                      ? Icon(Icons.favorite)
                                      : Icon(Icons.favorite_border)),
                                  onPressed: () {
                                    widget.challengeChangeLike(
                                        widget.challengeSummary![num]);
                                  },
                                  tag: widget.challengeSummary![num].tag,
                                  title: widget.challengeSummary![num].title,
                                  date: widget.challengeSummary![num].date,
                                  duration:
                                      widget.challengeSummary![num].duration,
                                  time: widget.challengeSummary![num].time,
                                  participants: widget
                                      .challengeSummary![num].participants,
                                  total: widget.challengeSummary![num].total,
                                ),
                            ],
                          ),
                    /*MoreButton(350)*/
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
