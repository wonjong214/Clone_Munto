import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/diverder_container.dart';
import 'package:loginscreen/View/Component/organisms/profile/score/Assesment.dart';
import 'package:loginscreen/View/Component/organisms/profile/score/InviteFriend.dart';
import 'package:loginscreen/View/Component/organisms/profile/score/MannerScore.dart';
import 'package:loginscreen/View/Component/organisms/profile/score/ScoreMemberReview.dart';
import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';
import '../../atoms/app_bar_title_text.dart';
import '../../organisms/profile/score/Badge.dart';

class Score extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppBar_color,
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appbarbottom_border,
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