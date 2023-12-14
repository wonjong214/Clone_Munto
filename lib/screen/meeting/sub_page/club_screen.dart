import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/challenge_summary_provider.dart';
import '../../../providers/club_news_provider.dart';
import '../../../providers/meeting_summary_provider.dart';
import '../../../providers/resolution_provider.dart';
import '../../../widget/atoms/margin_sizedbox.dart';
import '../../../widget/organisms/meeting/club/club_issue.dart';
import '../../../widget/organisms/meeting/club/club_new.dart';
import '../../../widget/organisms/meeting/club/club_pageview.dart';
import '../../../widget/organisms/meeting/club/club_recommend.dart';
import '../../../widget/organisms/meeting/recommend/open_meeting_view.dart';


class ClubScreen extends StatefulWidget{
  @override
  State<ClubScreen> createState() => _ClubScreenState();
}

class _ClubScreenState extends State<ClubScreen> with AutomaticKeepAliveClientMixin{
  bool _isInit = true;
  bool _isClubLoading = false;
  bool _isClubNewsLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if (this.mounted) {
        setState(() {
          _isClubLoading = true;
          _isClubNewsLoading = true;
        });
      }

      Provider.of<MeetingSummaryProvider>(context).fetchAndSetClubItems().then((_){
        if(this.mounted){
          setState(() {
            _isClubLoading = false;
          });
        }
      });

      Provider.of<ClubNewsProvider>(context).fetchAndSetClubNewsItems().then((_){
        if(this.mounted){
          setState(() {
            _isClubNewsLoading = false;
          });
        }
      });

      _isInit = false;
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    var meetingProvider = Provider.of<MeetingSummaryProvider>(context);
    var clubNewsProvider = Provider.of<ClubNewsProvider>(context);
    var resolutionProvider = Provider.of<ResolutionProvider>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ClubScreenView(),
            SizedBox(height: 30),
            ClubRecommend(
              clubSummary: meetingProvider.club,
              clubChangeLike: meetingProvider.changeLike,
              isClubLoading: _isClubLoading,
            ),
            interGroupMargin,
            ClubNew(
              clubSummary: meetingProvider.club,
              clubChangeLike: meetingProvider.changeLike,
              isClubLoading: _isClubLoading,
            ),
            interGroupMargin,
            ClubIssue(
              clubNews: clubNewsProvider.clubnews,
              clubNewsChangeLike: clubNewsProvider.changeLike,
              isClubNewsLoading: _isClubNewsLoading,
              width: resolutionProvider.width_get,
            ),
            interGroupMargin,
            OpenMeetingScreen(
              title: '클럽 열기',
              subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n활발한 커뮤니티를 만들어볼까요?',
              color: Color(0xff1c8a6a),
              arrowsize: 20,
              titlefont: FontWeight.w600,
            ),
            interGroupMargin
          ],
        ),
      ),
    );
  }
}