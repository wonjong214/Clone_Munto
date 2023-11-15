import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../../atoms/MoreTextGroup_Row.dart';

class Assesment extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Common_Text(text: '만족도 평가'),
              Spacer(),
              MoreTextGroup_Row,
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.people_alt, size: 15,),
              SizedBox(width: 5,),
              Text(
                '3명의 멤버들이 이런 점이 좋다고 평가했어요',
                style: TextStyle(
                  fontSize: 15
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          CommonBorderContainer(
            circular: 10,
            padding: EdgeInsets.all(10),
            width: double.infinity,
            backcolor: Color(0xffe8f3f0),
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex : 13,
                  child: Text(
                    '"취향이 통하는 멤버를 만나 좋았어요.다음에 또 만나고 싶어요"',
                    style: TextStyle(fontSize: 16,),
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '3',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          CommonBorderContainer(
            circular: 10,
            padding: EdgeInsets.all(10),
            width: double.infinity,
            backcolor: Color(0xffe8f3f0),
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex : 13,
                  child: Text(
                    '"모임 장소에 먼저 나와 기다리고 있어서 좋았어요."',
                    style: TextStyle(fontSize: 16,),
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          CommonBorderContainer(
            circular: 10,
            padding: EdgeInsets.all(10),
            width: double.infinity,
            backcolor: Color(0xffe8f3f0),
            widget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex : 13,
                  child: Text(
                    '"대화 주제에 대해 충분히 잘 답변해주셔서 인상깊었어요."',
                    style: TextStyle(fontSize: 16,),
                    maxLines: 2,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '2',
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}