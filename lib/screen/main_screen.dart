import 'package:flutter/material.dart';
import 'package:loginscreen/constants/colors.dart';
import 'package:loginscreen/screen/profile/profile_screen.dart';
import 'package:provider/provider.dart';
import '../providers/resolution_provider.dart';
import 'lounge/lounge_screen.dart';
import 'meeting/meeting_screen.dart';

class MainScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen>{
  int _selectedIndex = 0;


  final List<Widget> _widgetOptions = <Widget>[
    MeetingScreen(),
    LoungeScreen(),
    ProfileScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) { // 탭을 클릭했을떄 지정한 페이지로 이동
    setState(() {
      if(index == 2){
        Navigator.pushNamed(context, '/meetingtype');
      }
      else
        _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    Provider.of<ResolutionProvider>(context, listen: false).width_set(width);
    Provider.of<ResolutionProvider>(context, listen: false).height_set(height);
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
          backgroundColor: bottomnavigationbarColor,
          onTap: _onItemTapped, // 선언했던 onItemTapped
        ),
      ),

    );
  }
}