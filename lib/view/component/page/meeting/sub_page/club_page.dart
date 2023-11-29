import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/club_news_provider_view_model.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../organisms/meeting(p)_club/club_issue.dart';
import '../../../organisms/meeting(p)_club/club_new.dart';
import '../../../organisms/meeting(p)_club/club_pageview.dart';
import '../../../organisms/meeting(p)_club/club_recommend.dart';
import '../../../organisms/meeting(p)_recommend/open_meeting_view.dart';

class ClubPage extends StatelessWidget{
  late final ScrollController _controller;

  ClubPage(ScrollController controller){
    _controller = controller;
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _controller,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClubPageView(),
          SizedBox(height: 30),
          ClubRecommend(),
          interGroupMargin,
          ClubNew(),
          interGroupMargin,
          ChangeNotifierProvider(
            create: (context) => ClubNewsProvider(),
            child: ClubIssue(),
          ),
          interGroupMargin,
          OpenMeetingView(
            title: '클럽 열기',
            subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n활발한 커뮤니티를 만들어볼까요?',
            color: Color(0xff1c8a6a),
            arrowsize: 20,
            titlefont: FontWeight.w600,
          ),
          interGroupMargin
        ],
      ),
    );
  }
}