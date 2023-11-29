import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/challenge_provider_view_model.dart';
import '../../atoms/common_text.dart';
import '../../molecules/meeting/challenge_container.dart';

class ChallengeTotal extends StatefulWidget{
  @override
  State<ChallengeTotal> createState() => _ChallengeTotalState();
}

class _ChallengeTotalState extends State<ChallengeTotal> {
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
    var challengeProvider = Provider.of<ChallengeProvider>(context);
    return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '전체 챌린지',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            SizedBox(height: 8),
            _isLoading ? const Center(child: CircularProgressIndicator())
                : Column(
              children: [
                for (int num = 0; num < 3; num++)
                  ChallengeContainer(
                    width: double.infinity,
                    image: challengeProvider.challenge[num].image,
                    icon: (challengeProvider.challenge[num].like
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border)),
                    onPressed: (){
                      challengeProvider
                          .changeLike(challengeProvider.challenge[num]);
                    },
                    tag: challengeProvider.challenge[num].tag,
                    title: challengeProvider.challenge[num].title,
                    date: challengeProvider.challenge[num].date,
                    duration: challengeProvider.challenge[num].duration,
                    time: challengeProvider.challenge[num].time,
                    participants:
                    challengeProvider.challenge[num].participants,
                    total: challengeProvider.challenge[num].total,
                  ),
              ],
            ),
          ],
        )
    );
  }
}