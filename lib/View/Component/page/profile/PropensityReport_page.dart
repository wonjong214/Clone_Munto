import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/fontsize.dart';
import 'package:loginscreen/View/Component/atoms/analysis_results_button.dart';
import 'package:loginscreen/View/Component/atoms/common_border_container.dart';
import 'package:loginscreen/View/Component/atoms/common_text.dart';
import 'package:loginscreen/View/Component/atoms/margin_sizedbox.dart';
import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';
import '../../atoms/app_bar_title_text.dart';
import '../../molecules/profile/analysis_result_body_title.dart';
import '../../organisms/profile/propensity/PropensityInitialGroup.dart';

class PropensityReport extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background_color,
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shape: appbarbottom_border,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: AppBarTitle('성향 리포트'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.ios_share,)
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 15, right: 15, top: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonText(
                text: '전체 분석 결과',
                textSize: profiletab_propensityreport_grouptitle_textsize,
              ),
              propensityTitleMargin,
              CommonBorderContainer(
                  backColor: Colors.white,
                  circular: 10,
                  width: double.infinity,
                  height: 470,
                  widget : Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 98,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40,),
                            Icon(Icons.question_mark,size: 65, color: Color(0xffdbdbdb),),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnalysisResultBodyTitle(
                                    color: Color(0xff8ec4b5),
                                    text: '내가 보는 나',
                                ),
                                Text('나도 몰랐던 내 성향을 알아봐요'),
                                AnalysisResultsButton(color: Color(0xff1c8a6a), text: '테스트 하기')
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 98,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40,),
                            Icon(Icons.question_mark,size: 65, color: Color(0xffdbdbdb),),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnalysisResultBodyTitle(
                                  color: Color(0xff9acbe8),
                                  text: '친구가 보는 나',
                                ),
                                Text('친구나 지인들이 보는 나에 대해 알아봐요'),
                                AnalysisResultsButton(color: Color(0xff3498d0), text: '테스트 요청하기')
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 98,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 40,),
                            Icon(Icons.question_mark,size: 65, color: Color(0xffdbdbdb),),
                            SizedBox(width: 20,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AnalysisResultBodyTitle(
                                  color: Color(0xfff99b98),
                                  text: '처음 본 멤버가 보는 나',
                                ),
                                SizedBox(height: 10,),
                                Text('문토 멤버가 보는 나에 대해 알아봐요'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ),
              SizedBox(height: 40,),
              CommonText(
                text: '내가 보는 나',
                textSize: profiletab_propensityreport_grouptitle_textsize,
              ),
              propensityTitleMargin,
              PropensityInitialGroup(text: '그동안 몰랐던 나의 성향을\n테스트를 통해 알아보세요'),
              SizedBox(height: 30,),
              CommonText(
                text: '친구가 보는 나',
                textSize: profiletab_propensityreport_grouptitle_textsize,
              ),
              propensityTitleMargin,
              PropensityInitialGroup(text: '친구가 보는 나의 성향은 어떤 모습일까요?\n친구에게 테스트를 요청해 보세요'),
              SizedBox(height: 30,),
              CommonText(
                text: '처음 본 멤버가 보는 나',
                textSize: profiletab_propensityreport_grouptitle_textsize,
              ),
              propensityTitleMargin,
              PropensityInitialGroup(text: '문토에서 만난 멤버들과 함께\n나의 성향을 알아보세요'),
              SizedBox(height: 50,),
            ],
          ),
        ),
      )
    );
  }
}