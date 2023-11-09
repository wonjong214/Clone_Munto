import 'package:flutter/material.dart';

import '../../../../Constants/Enum.dart';
import '../../atoms/InterestingGroupTitle_Text.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class FoodKeyword_Column extends StatefulWidget{
  @override
  State<FoodKeyword_Column> createState() => _FoodKeyword_ColumnState();
}

class _FoodKeyword_ColumnState extends State<FoodKeyword_Column> {
  Map<String, bool> food_selected = {'맛집투어' : false, '카페' : false, '와인' : false, '요리' : false,
    '맥주' : false, '칵테일' : false, '커피' : false, '디저트' : false, '위스키' : false, '페어링' : false,
    '전통주' : false, '파인다이닝' : false, '비건' : false, '티룸' : false};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InterestingGroupTitle_Text(text: Category.food.korean),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < food_selected.length; i++)
              InterestingKeyword_Button(
                selected: food_selected[food_selected.keys.elementAt(i)]!,
                text: food_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(food_selected.values.elementAt(i))
                      food_selected[food_selected.keys.elementAt(i)] = false;
                    else
                      food_selected[food_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}