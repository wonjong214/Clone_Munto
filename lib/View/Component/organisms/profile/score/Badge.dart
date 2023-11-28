import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/common_text.dart';
import '../../../atoms/more_text_group_row.dart';
import '../../../molecules/profile/circle_icon_text_column.dart';

class MuntoBadge extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              CommonText(text: '배지 4개'),
              Spacer(),
              moreTextGroupRow,
            ],
          ),
          SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 30,),
                CircleIconTextColumn(
                  circleSize: 65,
                  icon: Icon(Icons.bookmarks_rounded, size: 40, color: Colors.redAccent,),
                  text: '피드 북마크\n5회',
                ),
                SizedBox(width: 45,),
                CircleIconTextColumn(
                  circleSize: 65,
                  icon: Icon(Icons.calendar_today_rounded, size: 40, color: Colors.redAccent,),
                  text: '문토 30번\n방문',
                ),
                SizedBox(width: 45,),
                CircleIconTextColumn(
                  circleSize: 65,
                  icon: Icon(Icons.calendar_today_rounded, size: 40, color: Colors.redAccent,),
                  text: '문토 7번\n방문',
                ),
                SizedBox(width: 45,),
                CircleIconTextColumn(
                  circleSize: 65,
                  icon: Icon(Icons.calendar_today_rounded,size: 40, color: Colors.brown.shade300,),
                  text: '소셜링 참여\n1번',
                ),

              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}