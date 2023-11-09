import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/Enum.dart';
import 'package:loginscreen/View/Component/atoms/InterestingGroupTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/InterestingKeyword_Button.dart';

class CultureKeyword_Column extends StatefulWidget{
  @override
  State<CultureKeyword_Column> createState() => _CultureKeyword_ColumnState();
}

class _CultureKeyword_ColumnState extends State<CultureKeyword_Column> {
  Map<String, bool> culture_selected = {'전시' : false, '영화' : false, '뮤지컬' : false, '공연' : false,
  '연극' : false, '페스티벌' : false, '연주회' : false, '콘서트' : false};


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InterestingGroupTitle_Text(text: Category.culture.korean),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < culture_selected.length; i++)
            InterestingKeyword_Button(
                selected: culture_selected[culture_selected.keys.elementAt(i)]!,
                text: culture_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(culture_selected.values.elementAt(i))
                      culture_selected[culture_selected.keys.elementAt(i)] = false;
                    else
                      culture_selected[culture_selected.keys.elementAt(i)] = true;
                  });
                },
            ),

          ],
        )
      ],
    );
  }
}