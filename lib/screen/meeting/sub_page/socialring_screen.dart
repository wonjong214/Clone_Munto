import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/meeting_summary_provider.dart';
import '../../../providers/member_review_provider.dart';
import '../../../providers/resolution_provider.dart';
import '../../../providers/selected_host_provider.dart';
import '../../../providers/socialring_contest_poster_provider.dart';
import '../../../widget/atoms/margin_sizedbox.dart';
import '../../../widget/molecules/meeting/tag_scrollview.dart';
import '../../../widget/organisms/meeting/recommend/exhibitions_view.dart';
import '../../../widget/organisms/meeting/recommend/open_meeting_view.dart';
import '../../../widget/organisms/meeting/recommend/review_view.dart';
import '../../../widget/organisms/meeting/socialring/socialring_calender.dart';
import '../../../widget/organisms/meeting/socialring/socialring_hicking.dart';
import '../../../widget/organisms/meeting/socialring/socialring_host_view.dart';
import '../../../widget/organisms/meeting/socialring/socialring_recommend.dart';

class SocialringScreen extends StatefulWidget {
  late final ScrollController _controller;

  SocialringScreen(ScrollController controller) {
    _controller = controller;
  }

  @override
  State<SocialringScreen> createState() => _SocialringScreenState();
}

class _SocialringScreenState extends State<SocialringScreen> with AutomaticKeepAliveClientMixin{
  bool _isInit = true;
  bool _isSocialringContestPoster = false;
  bool _isSocialringLoading = false;
  bool _isMemberReivewLoading = false;
  bool _isSelectedHostLoading = false;

  @override
  bool get wantKeepAlive => true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if (this.mounted) {
        setState(() {
          _isSocialringLoading = true;
          _isSocialringContestPoster = true;
          _isMemberReivewLoading = true;
          _isSelectedHostLoading = true;
        });
      }

      Provider.of<SocialringContestPosterProvider>(context)
          .fetchAndSetSocialringContestPosterItems()
          .then((_) {
        if (this.mounted) {
          setState(() {
            _isSocialringContestPoster = false;
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

      _isInit = false;
      super.didChangeDependencies();
    }
  }

  @override
  Widget build(BuildContext context) {
    var socialringContestPostProvider = Provider.of<SocialringContestPosterProvider>(context);
    var meetingProvider = Provider.of<MeetingSummaryProvider>(context);
    var memberReviewProvider = Provider.of<MemberReviewProvider>(context);
    var selectedHostProvider = Provider.of<SelectedHostProvider>(context);
    var resolutionProvider = Provider.of<ResolutionProvider>(context);

    return SingleChildScrollView(
      controller: widget._controller,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ExhibitionsView(
            height: 350,
            socialringContestPoster: socialringContestPostProvider.socialringContestPoster,
            isSocialringContestPosterLoading: _isSocialringContestPoster,
            currentPage: socialringContestPostProvider.currentPage,
          ),
          SizedBox(
            height: 20,
          ),
          TagScrollView(),
          interGroupMargin,
          SocialringRecommend(
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
          SocialringHicking(
            socialringSummary: meetingProvider.socialring,
            socialringChangeLike: meetingProvider.changeLike,
            isSocialringLoading: _isSocialringLoading,
          ),
          interGroupMargin,
          SocialringHostView(
            selectedHost: selectedHostProvider.selectedhost,
            selectedHostChangeFollow: selectedHostProvider.changeFollow,
            isSelectedHostLoading: _isSelectedHostLoading,
            width: resolutionProvider.width_get,
          ),
          interGroupMargin,
          SocialringCalender(
            socialringSummary: meetingProvider.socialring,
            socialringChangeLike: meetingProvider.changeLike,
            isSocialringLoading: _isSocialringLoading,
          ),
          interGroupMargin,
          OpenMeetingScreen(
              title: '소셜링 열기',
              subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?')
        ],
      ),
    );
  }
}
