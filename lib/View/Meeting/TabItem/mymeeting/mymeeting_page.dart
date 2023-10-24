import 'package:flutter/material.dart';
import 'package:loginscreen/View/Meeting/TabItem/mymeeting/sub_page/MySocialring.dart';




class mymeeting_page extends StatelessWidget{

  var routeA = '/socialring_route';
  var routeB = '/club_route';
  var routeC = '/challenge_route';

  /*MaterialPageRoute _onGenerateRoute(RouteSettings setting)
  {
    if (setting.name == routeA)
      return MaterialPageRoute<dynamic>(
        builder: (context) => MySocialring(), settings: setting
      );
    else if(setting.name == routeB)
      return Material
  }*/
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 10, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: () {},
                    child: Text('소셜링')
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: () {},
                    child: Text('클럽')
                ),
                SizedBox(width: 15),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),
                    onPressed: () {},
                    child: Text('챌린지')
                )
              ],
            ),
          ),
          /*Container(
            child: Navigator(
              onGenerateRoute: ,
            ),
          )*/
        ],
      ),
    );
  }
}