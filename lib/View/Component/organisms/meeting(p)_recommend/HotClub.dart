import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../molecules/meeting/ClubContainer_Container.dart';

class HotClub extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지금 핫한 클럽',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 8),
          Text(
            '지금 멤버들이 몰리고 있는',
            style: TextStyle(color: subtitle_color),

          ),
          SizedBox(height: 8),
          for(int num=0; num<3; num++)
            Column(
              children: [
                ClubContainer(double.infinity),
                morebutton_margin
              ],
            ),
          More_Button(double.infinity)
        ],
      )
    );
  }
}