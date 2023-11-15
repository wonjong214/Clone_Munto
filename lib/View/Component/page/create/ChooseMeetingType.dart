import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:loginscreen/View/Component/atoms/GroupTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/View/Component/atoms/TenRoundedBorderContainer_Container.dart';
import 'package:loginscreen/Model/create/ChooseMeetingType_Model.dart';
import 'package:loginscreen/Model/meeting/recommend/recommend_page_Model.dart';
import 'package:loginscreen/View/Component/atoms/ThirtyRoundedInfinity_Container.dart';

import '../../../../Constants/colors.dart';

class ChooseMeetingType extends StatefulWidget{
  @override
  State<ChooseMeetingType> createState() => _ChooseMeetingTypeState();
}

class _ChooseMeetingTypeState extends State<ChooseMeetingType> {

  ChooseMeetingType_Model? _social;
  ChooseMeetingType_Model? _club;
  ChooseMeetingType_Model? _challenge;
  Color? _buttoncolor;
  Color? _buttontextcolor;

  _ChooseMeetingTypeState(){
    _social = ChooseMeetingType_Model(Colors.white, Colors.red, Colors.white, Color(0xffa9a9a9), Colors.black, Color(0xffa9a9a9));
    _club = ChooseMeetingType_Model(Colors.white, Colors.green.shade800, Colors.white, Color(0xffa9a9a9), Colors.black, Color(0xffa9a9a9));
    _challenge = ChooseMeetingType_Model(Colors.white, Colors.blue, Colors.white, Color(0xffa9a9a9), Colors.black, Color(0xffa9a9a9));
    _buttoncolor = Color(0xffdbdbdb);
    _buttontextcolor = Colors.grey;
  }

  reset_socialringcolor(){
    _social!.containerbackcolor = Colors.white;
    _social!.containerbordercolor = Color(0xffa9a9a9);
    _social!.iconcolor = Colors.white;
    _social!.iconbackcolor = Colors.red;
    _social!.titletextcolor = Colors.black;
    _social!.subtextcolor = Color(0xffa9a9a9);

  }

  set_socialringcolor(){
    _social!.containerbackcolor = Colors.red;
    _social!.containerbordercolor = Colors.transparent;
    _social!.iconcolor = Colors.red;
    _social!.iconbackcolor = Colors.white;
    _social!.titletextcolor = Colors.white;
    _social!.subtextcolor = Colors.white;
  }

  reset_clubcolor(){
    _club!.containerbackcolor = Colors.white;
    _club!.containerbordercolor = Color(0xffa9a9a9);
    _club!.iconcolor = Colors.white;
    _club!.iconbackcolor = Colors.green.shade800;
    _club!.titletextcolor = Colors.black;
    _club!.subtextcolor = Color(0xffa9a9a9);

  }

  set_clubcolor(){
    _club!.containerbackcolor = Colors.green.shade800;
    _club!.containerbordercolor = Colors.transparent;
    _club!.iconcolor = Colors.green.shade800;
    _club!.iconbackcolor = Colors.white;
    _club!.titletextcolor = Colors.white;
    _club!.subtextcolor = Colors.white;
  }

  reset_challengecolor(){
    _challenge!.containerbackcolor = Colors.white;
    _challenge!.containerbordercolor = Color(0xffa9a9a9);
    _challenge!.iconcolor = Colors.white;
    _challenge!.iconbackcolor = Colors.blue;
    _challenge!.titletextcolor = Colors.black;
    _challenge!.subtextcolor = Color(0xffa9a9a9);

  }

  set_challengecolor(){
    _challenge!.containerbackcolor = Colors.blue;
    _challenge!.containerbordercolor = Colors.transparent;
    _challenge!.iconcolor = Colors.blue;
    _challenge!.iconbackcolor = Colors.white;
    _challenge!.titletextcolor = Colors.white;
    _challenge!.subtextcolor = Colors.white;
  }




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
              GestureDetector(
                onTap: (){
                  setState(() {
                    set_socialringcolor();
                    reset_clubcolor();
                    reset_challengecolor();
                    _buttoncolor = Colors.red;
                    _buttontextcolor = Colors.white;
                  });
                },
                child: CommonBorderContainer(
                  circular: 10,
                  borderwidth: 0.3,
                  width: double.infinity,
                  height: 80,
                  bordercolor: _social!.containerbordercolor,
                  backcolor: _social!.containerbackcolor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20,),
                      CircleIcon(
                        width: 20,
                        height: 20,
                        backgroundcolor: _social!.iconbackcolor,
                        icon: Icon(Icons.bolt, size: 18, color: _social!.iconcolor,),
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
                              color: _social!.titletextcolor,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text(
                            '일회성 모임으로 번개처럼 가볍게 만나요',
                            style: TextStyle(
                              color: _social!.subtextcolor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    set_clubcolor();
                    reset_socialringcolor();
                    reset_challengecolor();
                    _buttoncolor = Colors.green.shade800;
                    _buttontextcolor = Colors.white;
                  });
                },
                child: CommonBorderContainer(
                  circular: 10,
                  borderwidth: 0.3,
                  width: double.infinity,
                  height: 80,
                  bordercolor: _club!.containerbordercolor,
                  backcolor: _club!.containerbackcolor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20,),
                      CircleIcon(
                        width: 20,
                        height: 20,
                        backgroundcolor: _club!.iconbackcolor,
                        icon: Icon(Icons.star, size: 14, color: _club!.iconcolor,),
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
                              color: _club!.titletextcolor,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text(
                            '지속형 모임으로 계속해서 친하게 지내요',
                            style: TextStyle(
                              color: _club!.subtextcolor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: (){
                  setState(() {
                    set_challengecolor();
                    reset_socialringcolor();
                    reset_clubcolor();
                    _buttoncolor = Colors.blue;
                    _buttontextcolor = Colors.white;
                  });
                },
                child: CommonBorderContainer(
                  circular: 10,
                  borderwidth: 0.3,
                  width: double.infinity,
                  height: 80,
                  bordercolor: _challenge!.containerbordercolor,
                  backcolor: _challenge!.containerbackcolor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20,),
                      CircleIcon(
                        width: 20,
                        height: 20,
                        backgroundcolor: _challenge!.iconbackcolor,
                        icon: Icon(Icons.local_fire_department, size: 18, color: _challenge!.iconcolor,),
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
                              color: _challenge!.titletextcolor,
                            ),
                          ),
                          SizedBox(height: 3,),
                          Text(
                            '같은 목표를 가진 멤버들과 함께 도전해요',
                            style: TextStyle(
                              color: _challenge!.subtextcolor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Spacer(),
              ThirtyRoundedInfinity_Container(
                  text: '다음',
                  buttoncolor: _buttoncolor,
                  buttontextcolor: _buttontextcolor)
            ],
          ),
        )
    );
  }
}