import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/Recommend_Page/meeting_provider_view_model.dart';
import '../../atoms/common_text.dart';
import '../../atoms/more_button.dart';
import '../../molecules/meeting/Socialring_Container.dart';



class SocialringRecommend extends StatefulWidget{
  @override
  State<SocialringRecommend> createState() => _SocialringRecommendState();
}

class _SocialringRecommendState extends State<SocialringRecommend> {
  bool _isInit = true;
  bool _isSocialringLoading = false;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      setState(() {
        _isSocialringLoading = true;
      });


      Provider.of<MeetingProvider>(context).fetchAndSetSocialringItems().then((_){
        setState(() {
          _isSocialringLoading = false;
        });
      });
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    var meetingProvider = Provider.of<MeetingProvider>(context);
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: '추천 소셜링',
            textSize: meetingTabGroupTitleTextSize,
            fontWeight: meetingTabGroupTitleFontWeight,
          ),
          SizedBox(height: 10),
          _isSocialringLoading ? const Center(child: CircularProgressIndicator())
              :Column(
            children: [
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: SocialringContainer(
                      image: meetingProvider.socialring[num].image,
                      icon: meetingProvider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                      onPressed: (){
                        meetingProvider.changeLike(meetingProvider.socialring[num]);
                      },
                      tag:  meetingProvider.socialring[num].tag,
                      title:  meetingProvider.socialring[num].title,
                      location:  meetingProvider.socialring[num].location,
                      date:  meetingProvider.socialring[num].date,
                      participants:  meetingProvider.socialring[num].participants,
                      total:  meetingProvider.socialring[num].total,
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