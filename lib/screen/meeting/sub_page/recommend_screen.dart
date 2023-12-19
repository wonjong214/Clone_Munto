import 'package:flutter/material.dart';
import 'package:Clone_Munto/providers/socialring_contest_poster_provider.dart';
import 'package:provider/provider.dart';
import '../../../providers/challenge_summary_provider.dart';
import '../../../providers/meeting_summary_provider.dart';
import '../../../providers/member_review_provider.dart';
import '../../../providers/resolution_provider.dart';
import '../../../providers/selected_host_provider.dart';
import '../../../widget/atoms/margin_sizedbox.dart';
import '../../../widget/organisms/meeting/recommend/category_grid.dart';
import '../../../widget/organisms/meeting/recommend/exhibitions_view.dart';
import '../../../widget/organisms/meeting/recommend/hot_club.dart';
import '../../../widget/organisms/meeting/recommend/hot_tag.dart';
import '../../../widget/organisms/meeting/recommend/open_meeting_view.dart';
import '../../../widget/organisms/meeting/recommend/recommend_challenge.dart';
import '../../../widget/organisms/meeting/recommend/recommend_member_view.dart';
import '../../../widget/organisms/meeting/recommend/review_view.dart';
import '../../../widget/organisms/meeting/recommend/taste_socialring_view.dart';



class RecommendScreen extends StatefulWidget{

  @override
  State<RecommendScreen> createState() => _RecommendScreenState();
}

class _RecommendScreenState extends State<RecommendScreen> with AutomaticKeepAliveClientMixin {
  bool _isInit = true;
  bool _isChallengeLoading = false;
  bool _isSocialringLoading = false;
  bool _isClubLoading = false;
  bool _isMemberReivewLoading = false;
  bool _isSelectedHostLoading = false;
  bool _isSocialringContestPoster = false;

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if(this.mounted){
        setState(() {
          _isChallengeLoading = true;
          _isSocialringLoading = true;
          _isClubLoading = true;
          _isMemberReivewLoading = true;
          _isSelectedHostLoading = true;
          _isSocialringContestPoster = true;
        });
      }

      Provider.of<SocialringContestPosterProvider>(context).fetchAndSetSocialringContestPosterItems().then((_){
        if(this.mounted){
          setState(() {
            _isSocialringContestPoster = false;
          });
        }
      });

      Provider.of<ChallengeSummaryProvider>(context).fetchAndSetChallengeItems().then((_){
        if(this.mounted){
          setState(() {
            _isChallengeLoading = false;
          });
        }
      });

      Provider.of<MeetingSummaryProvider>(context).fetchAndSetSocialringItems().then((_){
        if(this.mounted){
          setState(() {
            _isSocialringLoading = false;
          });
        }
      });

      Provider.of<MeetingSummaryProvider>(context).fetchAndSetClubItems().then((_){
        if(this.mounted){
          setState(() {
            _isClubLoading = false;
          });
        }
      });

      Provider.of<MemberReviewProvider>(context).fetchAndSetReviewItems().then((_){
        if(this.mounted){
          setState(() {
            _isMemberReivewLoading = false;
          });
        }
      });

      Provider.of<SelectedHostProvider>(context).fetchAndSelectedHostItems().then((_){
        if(this.mounted){
          setState(() {
            _isSelectedHostLoading = false;
          });
        }
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var challengeProvider = Provider.of<ChallengeSummaryProvider>(context);
    var meetingProvider = Provider.of<MeetingSummaryProvider>(context);
    var memberReviewProvider = Provider.of<MemberReviewProvider>(context);
    var selectedHostProvider = Provider.of<SelectedHostProvider>(context);
    var socialringContestPostProvider = Provider.of<SocialringContestPosterProvider>(context);
    var resolutionProvider = Provider.of<ResolutionProvider>(context);


    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              //페이지뷰
              ExhibitionsView(
                height: 350,
                socialringContestPoster: socialringContestPostProvider.socialringContestPoster,
                isSocialringContestPosterLoading: _isSocialringContestPoster,
                currentPage: socialringContestPostProvider.currentPage,
              ),
              //카테고리
              CategoryGrid(),
              SizedBox(height: 20,),
              Divider(color: Color(0xff8e8e8e)),
              SizedBox(height: 20,),
              HotTag(),
              interGroupMargin,
              //추천 스크롤 뷰
              TasteSocialRingView(
                challengeSummary: challengeProvider.challenge,
                challengeChangeLike: challengeProvider.changeLike,
                isChallengeLoading: _isChallengeLoading,
                clubSummary: meetingProvider.club,
                clubChangeLike: meetingProvider.changeLike,
                isClubLoading: _isClubLoading,
                socialringSummary: meetingProvider.socialring,
                socialringChangeLike: meetingProvider.changeLike,
                isSocialringLoading: _isSocialringLoading,
              ),
              interGroupMargin,
              ReviewView(
                memberReview: memberReviewProvider.review,
                memberReivewChangeLike: memberReviewProvider.changeLike,
                isMemberReviewLoading: _isMemberReivewLoading,
                width: resolutionProvider.width_get,
              ),
              interGroupMargin,
              HotClub(
                clubSummary: meetingProvider.club,
                clubChangeLike: meetingProvider.changeLike,
                isClubLoading: _isClubLoading,
              ),
              interGroupMargin,
              RecommendChallenge(
                challengeSumamry: challengeProvider.challenge,
                challengeChangeLike: challengeProvider.changeLike,
                isChallengeLoading: _isChallengeLoading,
              ),
              interGroupMargin,
              RecommendMemberView(
                selectedHost: selectedHostProvider.selectedhost,
                selectedHostChangeFollow: selectedHostProvider.changeFollow,
                isSelectedHostLoading: _isSelectedHostLoading,
                width: resolutionProvider.width_get,
              ),
              interGroupMargin,
              OpenMeetingScreen(title: '모임 열기',subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?'),
              SizedBox(height: 80,)
            ],
          )
      ),
    );
  }
}






