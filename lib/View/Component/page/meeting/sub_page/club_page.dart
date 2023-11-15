import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_club/ClubRecommend.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ClubNewsProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../../atoms/Margin_SizedBox.dart';
import '../../../organisms/meeting(p)_club/ClubIssue.dart';
import '../../../organisms/meeting(p)_club/ClubNew.dart';
import '../../../organisms/meeting(p)_club/ClubPageView.dart';
import '../../../organisms/meeting(p)_recommend/OpenMeetingView.dart';

class club_page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClubPageView(),
          SizedBox(height: 30),
          ChangeNotifierProvider(
            create: (context) => Meeting_Provider(),
            child: ClubRecommend(),
          ),
          intergroupmargin,
          ChangeNotifierProvider(
            create: (context) => Meeting_Provider(),
            child: ClubNew(),
          ),
          intergroupmargin,
          ChangeNotifierProvider(
            create: (context) => ClubNews_Provider(),
            child: ClubIssue(),
          ),
          intergroupmargin,
          OpenMeetingView(
            title: '클럽 열기',
            subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n활발한 커뮤니티를 만들어볼까요?',
            color: Color(0xff1c8a6a),
            arrowsize: 20,
            titlefont: FontWeight.w600,
          ),
          intergroupmargin
        ],
      ),
    );
  }
}