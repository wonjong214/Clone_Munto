import 'package:flutter/material.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/fontsize.dart';
import '../../model/create/choose_meeting_type.dart';
import '../../widget/atoms/circle_icon.dart';
import '../../widget/atoms/common_border_container.dart';
import '../../widget/atoms/common_text.dart';
import '../../widget/atoms/margin_sizedbox.dart';

class ChooseMeetingTypeScreen extends StatefulWidget {
  @override
  State<ChooseMeetingTypeScreen> createState() => _chooseMeetingTypeState();
}

class _chooseMeetingTypeState extends State<ChooseMeetingTypeScreen> {
  ChooseMeetingType? _social;
  ChooseMeetingType? _club;
  ChooseMeetingType? _challenge;
  Color? _buttonColor;
  Color? _buttonTextColor;

  _chooseMeetingTypeState() {
    _social = ChooseMeetingType(Colors.white, Colors.red, Colors.white,
        Color(0xffa9a9a9), Colors.black, Color(0xffa9a9a9));
    _club = ChooseMeetingType(Colors.white, Colors.green.shade800,
        Colors.white, Color(0xffa9a9a9), Colors.black, Color(0xffa9a9a9));
    _challenge = ChooseMeetingType(Colors.white, Colors.blue,
        Colors.white, Color(0xffa9a9a9), Colors.black, Color(0xffa9a9a9));
    _buttonColor = Color(0xffdbdbdb);
    _buttonTextColor = Colors.grey;
  }

  resetSocialringColor() {
    _social!.containerBackColor = Colors.white;
    _social!.containerBorderColor = Color(0xffa9a9a9);
    _social!.iconColor = Colors.white;
    _social!.iconBackColor = Colors.red;
    _social!.titleTextColor = Colors.black;
    _social!.subtextColor = Color(0xffa9a9a9);
  }

  setSocialringColor() {
    _social!.containerBackColor = Colors.red;
    _social!.containerBorderColor = Colors.transparent;
    _social!.iconColor = Colors.red;
    _social!.iconBackColor = Colors.white;
    _social!.titleTextColor = Colors.white;
    _social!.subtextColor = Colors.white;
  }

  resetClubColor() {
    _club!.containerBackColor = Colors.white;
    _club!.containerBorderColor = Color(0xffa9a9a9);
    _club!.iconColor = Colors.white;
    _club!.iconBackColor = Colors.green.shade800;
    _club!.titleTextColor = Colors.black;
    _club!.subtextColor = Color(0xffa9a9a9);
  }

  setClubColor() {
    _club!.containerBackColor = Colors.green.shade800;
    _club!.containerBorderColor = Colors.transparent;
    _club!.iconColor = Colors.green.shade800;
    _club!.iconBackColor = Colors.white;
    _club!.titleTextColor = Colors.white;
    _club!.subtextColor = Colors.white;
  }

  resetChallengeColor() {
    _challenge!.containerBackColor = Colors.white;
    _challenge!.containerBorderColor = Color(0xffa9a9a9);
    _challenge!.iconColor = Colors.white;
    _challenge!.iconBackColor = Colors.blue;
    _challenge!.titleTextColor = Colors.black;
    _challenge!.subtextColor = Color(0xffa9a9a9);
  }

  setChallengeColor() {
    _challenge!.containerBackColor = Colors.blue;
    _challenge!.containerBorderColor = Colors.transparent;
    _challenge!.iconColor = Colors.blue;
    _challenge!.iconBackColor = Colors.white;
    _challenge!.titleTextColor = Colors.white;
    _challenge!.subtextColor = Colors.white;
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
              CommonText(
                text: '멤버들과 함께 어떤 활동을 하고싶나요?',
                textSize: meetingTabGroupTitleTextSize,
                fontWeight: meetingTabGroupTitleFontWeight,
              ),
              interGroupMargin,
              GestureDetector(
                onTap: () {
                  setState(() {
                    setSocialringColor();
                    resetClubColor();
                    resetChallengeColor();
                    _buttonColor = Colors.red;
                    _buttonTextColor = Colors.white;
                  });
                },
                child: CommonBorderContainer(
                  circular: 10,
                  borderWidth: 0.3,
                  width: double.infinity,
                  height: 80,
                  borderColor: _social!.containerBorderColor,
                  backColor: _social!.containerBackColor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      CircleIcon(
                        width: 20,
                        height: 20,
                        backgroundColor: _social!.iconBackColor,
                        icon: Icon(
                          Icons.bolt,
                          size: 18,
                          color: _social!.iconColor,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '소셜링',
                            style: TextStyle(
                              fontSize: 15,
                              color: _social!.titleTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '일회성 모임으로 번개처럼 가볍게 만나요',
                            style: TextStyle(
                              color: _social!.subtextColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    setClubColor();
                    resetSocialringColor();
                    resetChallengeColor();
                    _buttonColor = Colors.green.shade800;
                    _buttonTextColor = Colors.white;
                  });
                },
                child: CommonBorderContainer(
                  circular: 10,
                  borderWidth: 0.3,
                  width: double.infinity,
                  height: 80,
                  borderColor: _club!.containerBorderColor,
                  backColor: _club!.containerBackColor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      CircleIcon(
                        width: 20,
                        height: 20,
                        backgroundColor: _club!.iconBackColor,
                        icon: Icon(
                          Icons.star,
                          size: 14,
                          color: _club!.iconColor,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '클럽',
                            style: TextStyle(
                              fontSize: 15,
                              color: _club!.titleTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '지속형 모임으로 계속해서 친하게 지내요',
                            style: TextStyle(
                              color: _club!.subtextColor,
                              fontSize: 15,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    setChallengeColor();
                    resetSocialringColor();
                    resetClubColor();
                    _buttonColor = Colors.blue;
                    _buttonTextColor = Colors.white;
                  });
                },
                child: CommonBorderContainer(
                  circular: 10,
                  borderWidth: 0.3,
                  width: double.infinity,
                  height: 80,
                  borderColor: _challenge!.containerBorderColor,
                  backColor: _challenge!.containerBackColor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      CircleIcon(
                        width: 20,
                        height: 20,
                        backgroundColor: _challenge!.iconBackColor,
                        icon: Icon(
                          Icons.local_fire_department,
                          size: 18,
                          color: _challenge!.iconColor,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '챌린지',
                            style: TextStyle(
                              fontSize: 15,
                              color: _challenge!.titleTextColor,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            '같은 목표를 가진 멤버들과 함께 도전해요',
                            style: TextStyle(
                              color: _challenge!.subtextColor,
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
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: CommonBorderContainer(
                  width: double.infinity,
                  height: 50,
                  backColor: _buttonColor,
                  widget: Align(
                    alignment: Alignment.center,
                    child: Text(
                      '다음',
                      style: TextStyle(
                        fontSize: 17,
                        color: _buttonTextColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
