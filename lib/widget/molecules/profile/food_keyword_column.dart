import 'package:flutter/material.dart';
import '../../../../constants/Enum.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/interesting_keyword_button.dart';

class FoodKeywordColumn extends StatefulWidget{
  @override
  State<FoodKeywordColumn> createState() => _FoodKeyword_ColumnState();
}

class _FoodKeyword_ColumnState extends State<FoodKeywordColumn> {
  Map<String, bool> foodSelected = {'맛집투어' : false, '카페' : false, '와인' : false, '요리' : false,
    '맥주' : false, '칵테일' : false, '커피' : false, '디저트' : false, '위스키' : false, '페어링' : false,
    '전통주' : false, '파인다이닝' : false, '비건' : false, '티룸' : false};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.food.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < foodSelected.length; i++)
              InterestingKeywordButton(
                selected: foodSelected[foodSelected.keys.elementAt(i)]!,
                text: foodSelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(foodSelected.values.elementAt(i))
                      foodSelected[foodSelected.keys.elementAt(i)] = false;
                    else
                      foodSelected[foodSelected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}