import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:provider/provider.dart';
import '../../../providers/challenge_summary_provider.dart';
import '../../../widget/molecules/meeting/challenge_container.dart';

class SearchChallenge extends StatefulWidget {
  @override
  State<SearchChallenge> createState() => _SearchChallengeState();
}

class _SearchChallengeState extends State<SearchChallenge> {
  bool _isInit = true;
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isLoading = true;
      });
      Provider.of<ChallengeSummaryProvider>(context)
          .fetchAndSetChallengeItems()
          .then((_) {
        setState(() {
          _isLoading = false;
        });
        print('in!!!!!!');
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var challengeProvider = Provider.of<ChallengeSummaryProvider>(context);
    return Container(
      color: backGroundColor,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey.shade700),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '마감된 모임도 보기',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '기본순',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        for (int num = 0; num < 3; num++)
                          ChallengeContainer(
                            width: double.infinity,
                            image: challengeProvider.challenge[num].image,
                            icon: (challengeProvider.challenge[num].like
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border)),
                            onPressed: () {
                              challengeProvider.changeLike(
                                  challengeProvider.challenge[num]);
                            },
                            tag: challengeProvider.challenge[num].tag,
                            title: challengeProvider.challenge[num].title,
                            date: challengeProvider.challenge[num].date,
                            duration:
                                challengeProvider.challenge[num].duration,
                            time: challengeProvider.challenge[num].time,
                            participants:
                                challengeProvider.challenge[num].participants,
                            total: challengeProvider.challenge[num].total,
                          ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
