import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constants/fontsize.dart';
import '../../../../model/meeting/recommend/meeting_summary.dart';
import '../../../../providers/meeting_summary_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/circularprogress_container.dart';
import '../../../molecules/meeting/Socialring_Container.dart';

class SocialringRecommend extends StatefulWidget {
  List<MeetingSummary>? socialringSummary;
  Function socialringChangeLike;
  bool isSocialringLoading;

  SocialringRecommend(
      {required this.socialringSummary,
      required this.socialringChangeLike,
      required this.isSocialringLoading});

  @override
  State<SocialringRecommend> createState() => _SocialringRecommendState();
}

class _SocialringRecommendState extends State<SocialringRecommend> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '추천 소셜링',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            SizedBox(height: 10),
            widget.isSocialringLoading
                ? Column(
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
                  )
                : Column(
                    children: [
                      for (int num = 0; num < 3; num++)
                        GestureDetector(
                            onTap: () {
                              print('touch');
                            },
                            child: SocialringContainer(
                              image: widget.socialringSummary![num].image,
                              icon: widget.socialringSummary![num].like
                                  ? Icon(Icons.favorite)
                                  : Icon(Icons.favorite_border),
                              onPressed: () {
                                widget.socialringChangeLike(
                                    widget.socialringSummary![num]);
                              },
                              tag: widget.socialringSummary![num].tag,
                              title: widget.socialringSummary![num].title,
                              location: widget.socialringSummary![num].location,
                              date: widget.socialringSummary![num].date,
                              participants:
                                  widget.socialringSummary![num].participants,
                              total: widget.socialringSummary![num].total,
                            )),
                    ],
                  ),
            MoreButton(double.infinity)
          ],
        ));
  }
}
