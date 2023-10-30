import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/page/chat/ChatView.dart';
import 'package:loginscreen/View/Component/page/lounge/LoungeView.dart';
import 'package:loginscreen/View/Component/page/meeting/MeetingView.dart';
import 'package:loginscreen/View/Component/page/profile/ProfileView.dart';

import 'Component/page/create/CreateView.dart';

class MainView extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainViewState();
  }
}

class MainViewState extends State<MainView>{
  int _selectedIndex = 0;
  Widget _currentwidget;

  MainViewState(): _currentwidget = MeetingView(){

  }

  final List<Widget> _widgetOptions = <Widget>[
    MeetingView(),
    LoungeView(),
    CreateView(),
    ProfileView(),
  ];

  void _onItemTapped(int index) { // 탭을 클릭했을떄 지정한 페이지로 이동
    setState(() {
      /*if(index == 3){
        _selectedIndex = 2;
      }
      else if(index == 2){

      }
      else
        _selectedIndex = index;*/
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottom navigation 선언
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          iconSize: 28,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: '모임',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sticky_note_2_outlined),
              activeIcon: Icon(Icons.sticky_note_2),
              label: '라운지',
            ),
            BottomNavigationBarItem(
                icon: Align(
                  alignment: Alignment.bottomCenter,
                  child: Icon(Icons.add_circle_outline_sharp, size:40,),
                ),
                label: ''
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: '프로필',
            ),
          ],
          currentIndex: _selectedIndex, // 지정 인덱스로 이동
          selectedItemColor: Colors.black,
          backgroundColor: bottomnavigationbar_color,
          onTap: _onItemTapped, // 선언했던 onItemTapped
        ),
      ),

    );
  }
}