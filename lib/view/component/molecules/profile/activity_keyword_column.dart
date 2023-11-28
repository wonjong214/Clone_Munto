import 'package:flutter/material.dart';
import 'package:loginscreen/constants/fontsize.dart';
import 'package:loginscreen/view/component/atoms/common_text.dart';
import '../../../../constants/Enum.dart';
import '../../atoms/interesting_keyword_button.dart';

class ActivityKeywordColumn extends StatefulWidget{
  @override
  State<ActivityKeywordColumn> createState() => _ActivityKeyword_ColumnState();
}

class _ActivityKeyword_ColumnState extends State<ActivityKeywordColumn> {
  Map<String, bool> activitySelected = {'등산' : false, '산책' : false, '다이어트' : false, '러닝' : false,
    '배드민턴' : false, '클라이밍' : false, '야구' : false, '헬스' : false, '축구' : false, '필라테스' : false,
    '볼링' : false, '요가' : false, '서핑' : false, '수영' : false, '다이빙' : false, '농구' : false,
    '플로깅' : false, '자전거' : false, '골프' : false, '풋살' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.activity.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < activitySelected.length; i++)
              InterestingKeywordButton(
                selected: activitySelected[activitySelected.keys.elementAt(i)]!,
                text: activitySelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(activitySelected.values.elementAt(i))
                      activitySelected[activitySelected.keys.elementAt(i)] = false;
                    else
                      activitySelected[activitySelected.keys.elementAt(i)] = true;
                  });
                },
              ),

          ],
        )
      ],
    );
  }
}