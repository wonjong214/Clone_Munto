import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/diverder_container.dart';
import 'package:loginscreen/view/component/organisms/profile/score/Assesment.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/border.dart';
import '../../atoms/app_bar_title_text.dart';
import '../../organisms/profile/score/invite_friend.dart';
import '../../organisms/profile/score/manner_score.dart';
import '../../organisms/profile/score/munto_badge.dart';
import '../../organisms/profile/score/score_member_review.dart';

class Score extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBar_color,
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appBarBottomBorder,
          shadowColor: Colors.transparent,
          centerTitle: true,
          title: AppBarTitle('이름'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MannerScore(),
              boldDivider,
              InviteFriend(),
              boldDivider,
              MuntoBadge(),
              boldDivider,
              Assesment(),
              boldDivider,
              ScoreMemberReview(),
              SizedBox(height: 50,),
            ],
          ),
        )
    );
  }
}