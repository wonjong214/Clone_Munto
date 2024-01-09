import 'package:flutter/material.dart';
import '../../../atoms/common_border_container.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/more_text_group_row.dart';
import '../../../molecules/profile/circle_icon_text_column.dart';

class InviteFriend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              CommonText(text: '친구 초대'),
              Spacer(),
              moreTextGroupRow,
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleIconTextColumn(
                circleSize: 80,
                icon: Icon(Icons.mail, size: 50, color: Colors.grey.shade300,),
                text: '친구 초대\n 1명',
              ),
              CircleIconTextColumn(
                circleSize: 80,
                icon: Icon(Icons.mail, size: 50, color: Colors.grey.shade300,),
                text: '친구 초대\n 10명',
              ),
              CircleIconTextColumn(
                circleSize: 80,
                icon: Icon(Icons.mail, size: 50, color: Colors.grey.shade300,),
                text: '친구 초대\n 100명',
              ),

            ],
          ),
          SizedBox(height: 20),
          CommonBorderContainer(
            borderRadius: BorderRadius.circular(10),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 60,
            backColor: Colors.grey.shade100,
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