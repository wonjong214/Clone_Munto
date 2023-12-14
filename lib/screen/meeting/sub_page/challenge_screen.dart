import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../providers/challenge_summary_provider.dart';
import '../../../widget/atoms/margin_sizedbox.dart';
import '../../../widget/organisms/meeting/challenge/challenge_hot.dart';
import '../../../widget/organisms/meeting/challenge/challenge_pageview.dart';
import '../../../widget/organisms/meeting/challenge/challenge_total.dart';
import '../../../widget/organisms/meeting/recommend/open_meeting_view.dart';




class ChallengeScreen extends StatefulWidget{
  @override
  State<ChallengeScreen> createState() => _ChallengeScreenState();
}

class _ChallengeScreenState extends State<ChallengeScreen> with AutomaticKeepAliveClientMixin{
  bool _isInit = true;
  bool _isChallengeLoading = false;

  @override
  bool get wantKeepAlive =>true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      if(this.mounted){
        setState(() {
          _isChallengeLoading = true;
        });
      }

      Provider.of<ChallengeSummaryProvider>(context).fetchAndSetChallengeItems().then((_){
        if(this.mounted){
          setState(() {
            _isChallengeLoading = false;
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
    return Padding(
      padding: const EdgeInsets.only(top: 48),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            ChallengeScreenView(),
            SizedBox(height: 30,),
            ChallengeHot(
              challengeSumamry: challengeProvider.challenge,
              challengeChangeLike: challengeProvider.changeLike,
              isChallengeLoading: _isChallengeLoading,
            ),
            interGroupMargin,
            ChallengeTotal(
              challengeSumamry: challengeProvider.challenge,
              challengeChangeLike: challengeProvider.changeLike,
              isChallengeLoading: _isChallengeLoading,
            ),
            SizedBox(height: 25,),
            OpenMeetingScreen(
              title: '챌린지 열기',
              subtitle: '더 나은 변화를 위해 같은 목표를 가진\n멤버들과 함께 도전해볼까요?',
              color: Color(0xff3498d0),
              arrowsize: 20,
            ),
            interGroupMargin
          ],
        ),
      ),
    );
  }
}