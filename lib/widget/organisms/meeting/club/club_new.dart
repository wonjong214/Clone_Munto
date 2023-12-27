import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constants/fontsize.dart';
import '../../../../model/meeting/recommend/meeting_summary.dart';
import '../../../../providers/meeting_summary_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/circularprogress_container.dart';
import '../../../molecules/meeting/club_container.dart';

class ClubNew extends StatefulWidget{
  List<MeetingSummary>? clubSummary;
  Function clubChangeLike;
  bool isClubLoading;

  ClubNew({required this.clubSummary, required this.clubChangeLike, required this.isClubLoading});
  
  @override
  State<ClubNew> createState() => _ClubNewState();
}

class _ClubNewState extends State<ClubNew> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '새로 열린 클럽',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            SizedBox(height: 8),
            widget.isClubLoading ?
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
                for(int num=0; num<3; num++)
                  ClubContainer(
                    width: double.infinity,
                    image: widget.clubSummary![num].image,
                    icon: (widget.clubSummary![num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                    onPressed: (){
                      widget.clubChangeLike(widget.clubSummary![num]);
                    },
                    tag: widget.clubSummary![num].tag,
                    title: widget.clubSummary![num].title,
                    location: widget.clubSummary![num].location,
                    date: widget.clubSummary![num].date,
                    participants: widget.clubSummary![num].participants,
                    total: widget.clubSummary![num].total,
                  ),
              ],
            ),
            /*MoreButton(double.infinity)*/
          ],
        )
    );
  }
}