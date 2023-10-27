import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CircleAvatarProfile.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
import 'package:provider/provider.dart';
import '../../atoms/GroupSubTitle_Text.dart';
import '../../atoms/GroupTitle_Text.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';

class RecommendMemberView extends StatelessWidget {
  List<Widget> set_tag() {
    return [
      Container(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GroupTitle_Text('추천 멤버'),
              SizedBox(height: 10),
              GroupSubTitle_Text('팔로우하고 문토 대표 모임과 트렌드 소식 받아보기'),
              SizedBox(height: 10),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for(int i = 0; i < 3; i++)
                      Container(
                          margin: EdgeInsets.only(right: 10),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white60,
                                  ),
                                  width: width - 70,
                                  height: width - 70,
                                  child: Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 30),
                                          child: Column(
                                            children: [
                                              Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    children: [
                                                      CircleAvatarProfile(AssetImage('assets/images/recommend_page/Exhibitions/jazz.jpeg')),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      SizedBox(
                                                        height: 70,
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment:
                                                          MainAxisAlignment.spaceEvenly,
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment.start,
                                                          children: [
                                                            Text(
                                                              '이름',
                                                              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),

                                                            ),
                                                            Row(
                                                              children: [
                                                                Icon(Icons.check_circle_rounded,
                                                                    color: Colors.red,
                                                                    size: 15),
                                                                SizedBox(
                                                                  width: 5,
                                                                ),
                                                                Text(
                                                                  '셀렉티드 호스트',
                                                                  style: TextStyle(
                                                                      color: Colors.red,
                                                                      fontSize: 15),
                                                                )
                                                              ],
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Container(
                                                        padding: EdgeInsets.only(
                                                            left: 5,
                                                            right: 5,
                                                            top: 8,
                                                            bottom: 8),
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius.circular(15),
                                                            color: Colors.red,
                                                            border:
                                                            Border.all(color: Colors.red)),
                                                        child: Text(
                                                          '팔로우',
                                                          style: TextStyle(color: Colors.white),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                              SizedBox(height: 30,),
                                              Text(
                                                '호스트 자기소개 : 그대 내게 오지 말아요 두번다시 이런 사랑하지 마요. 그댈 추억하기보다 기다리는게 부서질듯 마음이 더 아파와 다시 누군가를 만나도',
                                                maxLines: 2,
                                                style: TextStyle(height: 1.5, fontSize: 15),
                                              ),
                                              SizedBox(height: 20,),
                                              Row(
                                                children: [
                                                  for (int i = 0; i < 4; i++)
                                                    Container(
                                                      margin: EdgeInsets.only(right: 10),
                                                      padding: EdgeInsets.only(
                                                          left: 6,
                                                          right: 6,
                                                          top: 3,
                                                          bottom: 3),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius.circular(15),
                                                          color: tag_color),
                                                      child: Text(
                                                        '태그',
                                                        style: TextStyle(fontSize: 15),
                                                      ),
                                                    ),
                                                  Container(
                                                    padding: EdgeInsets.only(
                                                        left: 8,
                                                        right: 8,
                                                        top: 3,
                                                        bottom: 3),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(15),
                                                        color: Colors.white60,
                                                        border:
                                                        Border.all(color: Colors.grey)),
                                                    child: Text(
                                                      '+6',
                                                      style: TextStyle(fontSize: 15),
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Image.asset(
                                              'assets/images/recommend_page/Exhibitions/nacho.jpeg',
                                              height: (width - 70) / 3,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Image.asset(
                                                  'assets/images/recommend_page/Exhibitions/nacho.jpeg',
                                                  height: (width - 70) / 3,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                          Expanded(
                                              flex: 1,
                                              child: Container(
                                                child: Image.asset(
                                                  'assets/images/recommend_page/Exhibitions/nacho.jpeg',
                                                  height: (width - 70) / 3,
                                                  fit: BoxFit.cover,
                                                ),
                                              )),
                                        ],
                                      ),
                                    ],
                                  )))
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
        morebutton_margin,
        Container(
          margin: EdgeInsets.only(left: 20,right: 20),
          child: More_Button(double.infinity),
        )
      ],
    );
  }
}
