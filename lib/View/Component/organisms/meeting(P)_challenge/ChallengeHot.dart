import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ChallengeProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/More_Button.dart';

class ChallengeHot extends StatefulWidget{
  @override
  State<ChallengeHot> createState() => _ChallengeHotState();
}

class _ChallengeHotState extends State<ChallengeHot> {
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
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Common_Text(
              text: '인기 챌린지',
              textsize: meetingtab_grouptitle_textsize,
              fontWeight: meetingtab_grouptitle_fontweight,
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
            morebutton_margin,
            More_Button(double.infinity)
          ],
        )
    );
  }
}