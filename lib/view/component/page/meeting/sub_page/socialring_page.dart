import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/exhibitions_provider.dart';
import '../../../../../view_model/review_provider_view_model.dart';
import '../../../../../view_model/selected_host_provider_view_model.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../molecules/meeting/tag_scrollview.dart';
import '../../../organisms/meeting(p)_recommend/exhibitions_view.dart';
import '../../../organisms/meeting(p)_recommend/open_meeting_view.dart';
import '../../../organisms/meeting(p)_recommend/review_view.dart';
import '../../../organisms/meeting(p)_socialring/socialring_calender.dart';
import '../../../organisms/meeting(p)_socialring/socialring_hicking.dart';
import '../../../organisms/meeting(p)_socialring/socialring_host_view.dart';
import '../../../organisms/meeting(p)_socialring/socialring_recommend.dart';

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
          ChangeNotifierProvider(
            create: (context) => ExhibitionsProvider(),
            child: ExhibitionsView(height: 350,),
          ),
          SizedBox(height: 20,),
          TagScrollView(),
          interGroupMargin,
          SocialringRecommend(),
          interGroupMargin,
          ChangeNotifierProvider(
            create: (context) => ReviewProvider(),
            child: ReviewView(),
          ),
          interGroupMargin,
          SocialringHicking(),
          interGroupMargin,
          ChangeNotifierProvider(
            create: (context) => SelectedHost_Provider(),
            child: SocialringHostView(),
          ),
          interGroupMargin,
          SocialringCalender(),
          interGroupMargin,
          OpenMeetingView(title: '소셜링 열기', subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?')

        ],
      ),
    );
  }
}