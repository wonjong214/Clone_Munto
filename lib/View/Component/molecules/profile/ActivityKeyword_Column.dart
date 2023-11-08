import 'package:flutter/material.dart';

import '../../../../Model/meeting/filter/Enum.dart';
import '../../atoms/InterestingGroupTitle_Text.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class ActivityKeyword_Column extends StatefulWidget{
  @override
  State<ActivityKeyword_Column> createState() => _ActivityKeyword_ColumnState();
}

class _ActivityKeyword_ColumnState extends State<ActivityKeyword_Column> {
  Map<String, bool> activity_selected = {'등산' : false, '산책' : false, '다이어트' : false, '러닝' : false,
    '배드민턴' : false, '클라이밍' : false, '야구' : false, '헬스' : false, '축구' : false, '필라테스' : false,
    '볼링' : false, '요가' : false, '서핑' : false, '수영' : false, '다이빙' : false, '농구' : false,
    '플로깅' : false, '자전거' : false, '골프' : false, '풋살' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InterestingGroupTitle_Text(text: Category.activity.korean),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < activity_selected.length; i++)
              InterestingKeyword_Button(
                selected: activity_selected[activity_selected.keys.elementAt(i)]!,
                text: activity_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(activity_selected.values.elementAt(i))
                      activity_selected[activity_selected.keys.elementAt(i)] = false;
                    else
                      activity_selected[activity_selected.keys.elementAt(i)] = true;
                  });
                },
              ),

          ],
        )
      ],
    );
  }
}