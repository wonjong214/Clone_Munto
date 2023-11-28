import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';



class SocialringRecommend extends StatefulWidget{
  @override
  State<SocialringRecommend> createState() => _SocialringRecommendState();
}

class _SocialringRecommendState extends State<SocialringRecommend> {
  bool _isInit = true;
  bool _issocialringLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _issocialringLoading = true;
      });


      Provider.of<Meeting_Provider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _issocialringLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<Meeting_Provider>(context);
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: '추천 소셜링',
            textSize: meetingtab_grouptitle_textsize,
            fontWeight: meetingtab_grouptitle_fontweight,
          ),
          SizedBox(height: 10),
          _issocialringLoading ? const Center(child: CircularProgressIndicator())
              :Column(
            children: [
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: SocialringContainer(
                      image: meeting_provider.socialring[num].image,
                      icon: meeting_provider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                      onPressed: (){
                        meeting_provider.changelike(meeting_provider.socialring[num]);
                      },
                      tag:  meeting_provider.socialring[num].tag,
                      title:  meeting_provider.socialring[num].title,
                      location:  meeting_provider.socialring[num].location,
                      date:  meeting_provider.socialring[num].date,
                      participants:  meeting_provider.socialring[num].participants,
                      total:  meeting_provider.socialring[num].total,
                    )
                ),
            ],
          ),
          MoreButton(double.infinity)
        ],
      )
    );
  }
}