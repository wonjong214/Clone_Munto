import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/common_text.dart';
import '../../../../constants/Enum.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/interesting_keyword_button.dart';

class LanguageKeywordColumn extends StatefulWidget{
  @override
  State<LanguageKeywordColumn> createState() => _LanguageKeywordColumnState();
}

class _LanguageKeywordColumnState extends State<LanguageKeywordColumn> {
  Map<String, bool> languageSelected = {'영어' : false, '언어교환' : false, '일본어' : false, '중국어' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.language.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < languageSelected.length; i++)
              InterestingKeywordButton(
                selected: languageSelected[languageSelected.keys.elementAt(i)]!,
                text: languageSelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(languageSelected.values.elementAt(i))
                      languageSelected[languageSelected.keys.elementAt(i)] = false;
                    else
                      languageSelected[languageSelected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}