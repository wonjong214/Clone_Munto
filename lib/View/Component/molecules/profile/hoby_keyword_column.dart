import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/common_text.dart';
import '../../../../Constants/Enum.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/interesting_keyword_button.dart';

class HobyKeywordColumn extends StatefulWidget{
  @override
  State<HobyKeywordColumn> createState() => _HobyKeywordColumnState();
}

class _HobyKeywordColumnState extends State<HobyKeywordColumn> {
  Map<String, bool> hobySelected = {'사진' : false, '보드게임' : false, '공예' : false, '드로잉' : false,
    '댄스' : false, '노래' : false, '글쓰기' : false, '방탈출' : false, '악기연주' : false, '영상' : false,
    '게임' : false, '음악감상' : false, '봉사활동' : false, '캘리그라피' : false, '반려동물' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.hoby.korean,
          textSize: interesting_grouptitle_textsize,
          fontWeight: interesting_grouptitle_fontweight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < hobySelected.length; i++)
              InterestingKeywordButton(
                selected: hobySelected[hobySelected.keys.elementAt(i)]!,
                text: hobySelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(hobySelected.values.elementAt(i))
                      hobySelected[hobySelected.keys.elementAt(i)] = false;
                    else
                      hobySelected[hobySelected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}