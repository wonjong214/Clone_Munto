import 'package:flutter/material.dart';
import '../../../../constants/Enum.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/interesting_keyword_button.dart';

class TravelKeywordColumn extends StatefulWidget{
  @override
  State<TravelKeywordColumn> createState() => _TravelKeyword_ColumnState();
}

class _TravelKeyword_ColumnState extends State<TravelKeywordColumn> {
  Map<String, bool> travel_selected = {'국내여행' : false, '해외여행' : false, '캠핑' : false, '드라이브' : false,
    '테마파크' : false, '피크닉' : false, '복함분화공간' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.travel.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < travel_selected.length; i++)
              InterestingKeywordButton(
                selected: travel_selected[travel_selected.keys.elementAt(i)]!,
                text: travel_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(travel_selected.values.elementAt(i))
                      travel_selected[travel_selected.keys.elementAt(i)] = false;
                    else
                      travel_selected[travel_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}