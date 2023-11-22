import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_mymeeting/MyClubView.dart';
import 'package:loginscreen/View/Component/organisms/meeting(p)_mymeeting/MySocialring.dart';
import '../../../organisms/meeting(p)_mymeeting/MyChallenge.dart';


class MyMeeting_Page extends StatefulWidget{
  late final ScrollController _controller;

  MyMeeting_Page(ScrollController controller){
    _controller = controller;
  }
  @override
  State<StatefulWidget> createState() {
    return MyMeeting_Page_State(_controller);
  }
}

class MyMeeting_Page_State extends State<MyMeeting_Page>{
  int _selectedIndex = 0;
  bool socialselected = true;
  bool clubseleted = false;
  bool challengeselected = false;
  late final screen;

  MyMeeting_Page_State(ScrollController controller){
    screen = [
      MySocialring(controller),
      MyClubView(controller),
      MyChallenge(controller)
    ];
  }

  @override
  Widget build(BuildContext context) {


    return Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: socialselected ? Colors.white : Colors.black,
                        backgroundColor: socialselected ? Colors.black : Colors.white,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                        socialselected = true;
                        clubseleted = false;
                        challengeselected = false;
                      });
                    },
                    child: Text('소셜링')
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(30,36),
                        foregroundColor: clubseleted ? Colors.white : Colors.black,
                        backgroundColor: clubseleted ? Colors.black : Colors.white,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                        socialselected = false;
                        clubseleted = true;
                        challengeselected = false;
                      });
                    },
                    child: Text('클럽')
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: challengeselected ? Colors.white : Colors.black,
                        backgroundColor: challengeselected ? Colors.black : Colors.white,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                        socialselected = false;
                        clubseleted = false;
                        challengeselected = true;
                      });
                    },
                    child: Text('챌린지')
                ),
              ],
            ),
          ),
          Flexible(
              child: screen[_selectedIndex]
          )
        ],
      );
  }
}