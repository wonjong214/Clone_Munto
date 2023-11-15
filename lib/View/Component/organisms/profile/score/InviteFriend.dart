import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import 'package:loginscreen/View/Component/atoms/MoreTextGroup_Row.dart';
import 'package:loginscreen/View/Component/molecules/profile/CircleIconText_Column.dart';

class InviteFriend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Common_Text(text: '친구 초대'),
              Spacer(),
              MoreTextGroup_Row,
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleIconText_Column(
                circlesize: 80,
                icon: Icon(Icons.mail, size: 50, color: Colors.grey.shade300,),
                text: '친구 초대\n 1명',
              ),
              CircleIconText_Column(
                circlesize: 80,
                icon: Icon(Icons.mail, size: 50, color: Colors.grey.shade300,),
                text: '친구 초대\n 10명',
              ),
              CircleIconText_Column(
                circlesize: 80,
                icon: Icon(Icons.mail, size: 50, color: Colors.grey.shade300,),
                text: '친구 초대\n 100명',
              ),

            ],
          ),
          SizedBox(height: 20),
          CommonBorderContainer(
            circular: 10,
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 60,
            backcolor: Colors.grey.shade100,
            widget: Row(
              children: [
                Text(
                  '초대한 친구',
                  style: TextStyle(fontSize: 16,),
                ),
                Spacer(),
                Text(
                  '0명',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}