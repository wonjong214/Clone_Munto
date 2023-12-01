import 'package:flutter/material.dart';
import '../../../widget/atoms/margin_sizedbox.dart';
import '../../../widget/molecules/meeting/tag_scrollview.dart';
import '../../../widget/organisms/meeting/recommend/exhibitions_view.dart';
import '../../../widget/organisms/meeting/recommend/open_meeting_view.dart';
import '../../../widget/organisms/meeting/recommend/review_view.dart';
import '../../../widget/organisms/meeting/socialring/socialring_calender.dart';
import '../../../widget/organisms/meeting/socialring/socialring_hicking.dart';
import '../../../widget/organisms/meeting/socialring/socialring_host_view.dart';
import '../../../widget/organisms/meeting/socialring/socialring_recommend.dart';


class SocialringPage extends StatelessWidget{
  late final ScrollController _controller;

  SocialringPage(ScrollController controller){
    _controller = controller;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ExhibitionsView(height: 350,),
          SizedBox(height: 20,),
          TagScrollView(),
          interGroupMargin,
          SocialringRecommend(),
          interGroupMargin,
          ReviewView(),
          interGroupMargin,
          SocialringHicking(),
          interGroupMargin,
          SocialringHostView(),
          interGroupMargin,
          SocialringCalender(),
          interGroupMargin,
          OpenMeetingView(title: '소셜링 열기', subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?')

        ],
      ),
    );
  }
}