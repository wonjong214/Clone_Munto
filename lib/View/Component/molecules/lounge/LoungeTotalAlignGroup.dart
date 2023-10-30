import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/RoundedBorderContainer.dart';

class LoungeTotalAlignGroup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: [
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('최신'),
          ),
          SizedBox(width: 10,),
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('인기'),
          ),
          SizedBox(width: 10,),
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('모임 후기'),
          ),
          SizedBox(width: 10,),
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('취향 에디터'),
          ),

        ],
      ),
    );
  }
}