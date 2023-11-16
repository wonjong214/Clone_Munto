import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../../../Constants/Enum.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class LanguageKeyword_Column extends StatefulWidget{
  @override
  State<LanguageKeyword_Column> createState() => _LanguageKeyword_ColumnState();
}

class _LanguageKeyword_ColumnState extends State<LanguageKeyword_Column> {
  Map<String, bool> language_selected = {'영어' : false, '언어교환' : false, '일본어' : false, '중국어' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Common_Text(
          text: Category.language.korean,
          textsize: interesting_grouptitle_textsize,
          fontWeight: interesting_grouptitle_fontweight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < language_selected.length; i++)
              InterestingKeyword_Button(
                selected: language_selected[language_selected.keys.elementAt(i)]!,
                text: language_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(language_selected.values.elementAt(i))
                      language_selected[language_selected.keys.elementAt(i)] = false;
                    else
                      language_selected[language_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}