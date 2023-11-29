import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/challenge_provider_view_model.dart';
import '../../atoms/common_text.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/challenge_container.dart';

class RecommendChallenge extends StatefulWidget{
  @override
  State<RecommendChallenge> createState() => _RecommendChallengeState();
}

class _RecommendChallengeState extends State<RecommendChallenge> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });

      Provider.of<ChallengeProvider>(context).fetchAndSetChallengeItems().then((_){
        setState(() {
          _isLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }
  @override
  Widget build(BuildContext context) {
    var _challengeProvider = Provider.of<ChallengeProvider>(context);
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
            _isLoading ? const Center(child: CircularProgressIndicator())
                : Column(
              children: [
                for (int num = 0; num < 3; num++)
                  ChallengeContainer(
                    width: double.infinity,
                    image: _challengeProvider.challenge[num].image,
                    icon: (_challengeProvider.challenge[num].like
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border)),
                    onPressed: (){
                      _challengeProvider
                          .changeLike(_challengeProvider.challenge[num]);
                    },
                    tag: _challengeProvider.challenge[num].tag,
                    title: _challengeProvider.challenge[num].title,
                    date: _challengeProvider.challenge[num].date,
                    duration: _challengeProvider.challenge[num].duration,
                    time: _challengeProvider.challenge[num].time,
                    participants:
                    _challengeProvider.challenge[num].participants,
                    total: _challengeProvider.challenge[num].total,
                  ),
              ],
            ),
            MoreButton(double.infinity)
          ],
        )
    );
  }
}