import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/meeting/TagScroll_ScrollView.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_recommend/ExhibitionsView.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_socialring/SocialringCalender.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_socialring/SocialringHostView.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_socialring/SocialringRecommend.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/SelectedHostProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/Exhibitions.dart';
import '../../../../../ViewModel/Recommend_Page/Review.dart';
import '../../../atoms/Margin_SizedBox.dart';
import '../../../organisms/meeting(p)_recommend/OpenMeetingView.dart';
import '../../../organisms/meeting(p)_recommend/ReviewView.dart';
import '../../../organisms/meeting(p)_socialring/SocialringHicking.dart';

class Socialring_Page extends StatelessWidget{
  late final ScrollController _controller;

  Socialring_Page(ScrollController controller){
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
            create: (context) => Exhibitions_Provider(),
            child: ExhibitionsView(height: 350,),
          ),
          SizedBox(height: 20,),
          TagScroll_ScrollView(),
          intergroupmargin,
          SocialringRecommend(),
          intergroupmargin,
          ChangeNotifierProvider(
            create: (context) => Review_Provider(),
            child: ReviewView(),
          ),
          intergroupmargin,
          SocialringHicking(),
          intergroupmargin,
          ChangeNotifierProvider(
            create: (context) => SelectedHost_Provider(),
            child: SocialringHostView(),
          ),
          intergroupmargin,
          SocialringCalender(),
          intergroupmargin,
          OpenMeetingView(title: '소셜링 열기', subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?')

        ],
      ),
    );
  }
}