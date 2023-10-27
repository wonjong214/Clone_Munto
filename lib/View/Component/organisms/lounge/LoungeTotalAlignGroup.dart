import 'package:flutter/material.dart';

class LoungeTotalAlignGroup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Color(0xcca9a9a9),
                width: 1
              )
            ),
            child: Text('최신'),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: Color(0xcca9a9a9),
                    width: 1
                )
            ),
            child: Text('인기'),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: Color(0xcca9a9a9),
                    width: 1
                )
            ),
            child: Text('모임 후기'),
          ),
          SizedBox(width: 10,),
          Container(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                    color: Color(0xcca9a9a9),
                    width: 1
                )
            ),
            child: Text('취향 에디터'),
          ),

        ],
      ),
    );
  }
}