import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/fontsize.dart';
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

      Provider.of<Challenge_Provider>(context).fetchAndSetChallengeItems().then((_){
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
    var challenge_provider = Provider.of<Challenge_Provider>(context);
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '주목할 만한 챌린지',
              textSize: meetingtab_grouptitle_textsize,
              fontWeight: meetingtab_grouptitle_fontweight,
            ),
            SizedBox(height: 8),
            CommonText(
              text: '이번 주부터 갓생 시작',
              textSize: meetingtab_groupsubtitle_textsize,
              textColor: meetingtab_groupsubtitle_color,
            ),
            SizedBox(height: 8),
            _isLoading ? const Center(child: CircularProgressIndicator())
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
                          .changelike(challenge_provider.challenge[num]);
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
            MoreButton(double.infinity)
          ],
        )
    );
  }
}