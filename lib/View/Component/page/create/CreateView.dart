import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/GroupTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/atoms/RoundedBorderContainer.dart';
import 'package:loginscreen/View/Component/atoms/TenRoundedBorderContainer_Container.dart';

import '../../../../Constants/colors.dart';

class CreateView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffefefe),
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
        ),
        body: Container(
          margin: EdgeInsets.only(left: 15, right: 15, top: 60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GroupTitle_Text('멤버들과 함께 어떤 활동을 하고싶나요?'),
              intergroupmargin,
              TenRoundedBorderContainer(
                width: double.infinity,
                height: 80,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    CircleIcon(
                      width: 20,
                      height: 20,
                      backgroundcolor: Colors.red,
                      icon: Icons.bolt,
                      iconsize: 18,
                      iconcolor: Colors.white,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '소셜링',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          '일회성 모임으로 번개처럼 가볍게 만나요',
                          style: TextStyle(
                            color: Color(0xffa9a9a9),
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              TenRoundedBorderContainer(
                width: double.infinity,
                height: 80,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    CircleIcon(
                      width: 20,
                      height: 20,
                      backgroundcolor: Colors.green.shade800,
                      icon: Icons.star,
                      iconsize: 14,
                      iconcolor: Colors.white,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '클럽',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          '지속형 모임으로 계속해서 친하게 지내요',
                          style: TextStyle(
                            color: Color(0xffa9a9a9),
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 15,),
              TenRoundedBorderContainer(
                width: double.infinity,
                height: 80,
                widget: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20,),
                    CircleIcon(
                      width: 20,
                      height: 20,
                      backgroundcolor: Colors.blue,
                      icon: Icons.local_fire_department,
                      iconsize: 18,
                      iconcolor: Colors.white,
                    ),
                    SizedBox(width: 20,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '챌린지',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 3,),
                        Text(
                          '같은 목표를 가진 멤버들과 함께 도전해요',
                          style: TextStyle(
                            color: Color(0xffa9a9a9),
                            fontSize: 15,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Spacer(),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffdbdbdb)
                ),
                child: Text(
                  '다음',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}