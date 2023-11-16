import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../../../Constants/Enum.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class HobyKeyword extends StatefulWidget{
  @override
  State<HobyKeyword> createState() => _HobyKeywordState();
}

class _HobyKeywordState extends State<HobyKeyword> {
  Map<String, bool> hoby_selected = {'사진' : false, '보드게임' : false, '공예' : false, '드로잉' : false,
    '댄스' : false, '노래' : false, '글쓰기' : false, '방탈출' : false, '악기연주' : false, '영상' : false,
    '게임' : false, '음악감상' : false, '봉사활동' : false, '캘리그라피' : false, '반려동물' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Common_Text(
          text: Category.hoby.korean,
          textsize: interesting_grouptitle_textsize,
          fontWeight: interesting_grouptitle_fontweight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < hoby_selected.length; i++)
              InterestingKeyword_Button(
                selected: hoby_selected[hoby_selected.keys.elementAt(i)]!,
                text: hoby_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(hoby_selected.values.elementAt(i))
                      hoby_selected[hoby_selected.keys.elementAt(i)] = false;
                    else
                      hoby_selected[hoby_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}