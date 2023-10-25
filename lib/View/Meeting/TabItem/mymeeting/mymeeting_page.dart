import 'package:flutter/material.dart';
import 'package:loginscreen/View/Meeting/TabItem/mymeeting/sub_page/MyChallenge.dart';
import 'package:loginscreen/View/Meeting/TabItem/mymeeting/sub_page/MyClubView.dart';
import 'package:loginscreen/View/Meeting/TabItem/mymeeting/sub_page/MySocialring.dart';


class MyMeeting_Page extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyMeeting_Page_State();
  }
}

class MyMeeting_Page_State extends State<MyMeeting_Page>{
  int _selectedIndex = 0;
  final screen = [
    MySocialring(),
    MyClubView(),
    MyChallenge()
  ];

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
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    },
                    child: Text('소셜링')
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(30,36),
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    },
                    child: Text('클럽')
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        splashFactory: NoSplash.splashFactory,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        )
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
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