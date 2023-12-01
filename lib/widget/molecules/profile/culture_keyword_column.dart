import 'package:flutter/material.dart';
import 'package:loginscreen/constants/Enum.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/interesting_keyword_button.dart';

class CultureKeywordColumn extends StatefulWidget{
  @override
  State<CultureKeywordColumn> createState() => _CultureKeyword_ColumnState();
}

class _CultureKeyword_ColumnState extends State<CultureKeywordColumn> {
  Map<String, bool> cultureSelected = {'전시' : false, '영화' : false, '뮤지컬' : false, '공연' : false,
  '연극' : false, '페스티벌' : false, '연주회' : false, '콘서트' : false};


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.culture.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < cultureSelected.length; i++)
            InterestingKeywordButton(
                selected: cultureSelected[cultureSelected.keys.elementAt(i)]!,
                text: cultureSelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(cultureSelected.values.elementAt(i))
                      cultureSelected[cultureSelected.keys.elementAt(i)] = false;
                    else
                      cultureSelected[cultureSelected.keys.elementAt(i)] = true;
                  });
                },
            ),

          ],
        )
      ],
    );
  }
}