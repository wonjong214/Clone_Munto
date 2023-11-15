import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../../atoms/MoreTextGroup_Row.dart';

class ScoreMemberReview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Common_Text(text: '멤버들의 후기'),
              SizedBox(width: 10,),
              Text(
                '(나에게만 보여요)',
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xffa9a9a9),
                ),
              ),
              Spacer(),
              MoreTextGroup_Row,
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: double.infinity,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.chat_bubble_outline_sharp,color: Colors.grey.shade300, size: 60,),
                Text(
                  '멤버들이 남긴 후기가 아직 없어요',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey.shade400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}