import 'package:flutter/material.dart';
import 'package:Clone_Munto/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../model/meeting/recommend/challenge_summary.dart';
import '../../../../providers/challenge_summary_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/circularprogress_container.dart';
import '../../../molecules/meeting/challenge_container.dart';


class RecommendChallenge extends StatefulWidget{
  List<ChallengeSummary>? challengeSumamry;
  void Function(ChallengeSummary challenge) challengeChangeLike;
  bool isChallengeLoading;

  RecommendChallenge({required this.challengeSumamry, required this.challengeChangeLike, required this.isChallengeLoading});
  @override
  State<RecommendChallenge> createState() => _RecommendChallengeState();
}

class _RecommendChallengeState extends State<RecommendChallenge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '주목할 만한 챌린지',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            SizedBox(height: 8),
            CommonText(
              text: '이번 주부터 갓생 시작',
              textSize: meetingTabGroupSubTitleTextSize,
              textColor: meetingTabGroupSubTitleColor,
            ),
            SizedBox(height: 8),
            widget.isChallengeLoading ?
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
                  )
              ],
            ) :
            Column(
              children: [
                for (int num = 0; num < 3; num++)
                  ChallengeContainer(
                    width: double.infinity,
                    image: widget.challengeSumamry![num].image,
                    icon: (widget.challengeSumamry![num].like
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border)),
                    onPressed: (){
                      widget.challengeChangeLike(widget.challengeSumamry![num]);
                    },
                    tag: widget.challengeSumamry![num].tag,
                    title: widget.challengeSumamry![num].title,
                    date: widget.challengeSumamry![num].date,
                    duration: widget.challengeSumamry![num].duration,
                    time: widget.challengeSumamry![num].time,
                    participants:
                    widget.challengeSumamry![num].participants,
                    total: widget.challengeSumamry![num].total,
                  ),
              ],
            ),
            /*MoreButton(double.infinity)*/
          ],
        )
    );
  }
}