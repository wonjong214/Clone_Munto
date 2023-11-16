import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../../../Constants/Enum.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class TravelKeyword_Column extends StatefulWidget{
  @override
  State<TravelKeyword_Column> createState() => _TravelKeyword_ColumnState();
}

class _TravelKeyword_ColumnState extends State<TravelKeyword_Column> {
  Map<String, bool> travel_selected = {'국내여행' : false, '해외여행' : false, '캠핑' : false, '드라이브' : false,
    '테마파크' : false, '피크닉' : false, '복함분화공간' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Common_Text(
          text: Category.travel.korean,
          textsize: interesting_grouptitle_textsize,
          fontWeight: interesting_grouptitle_fontweight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < travel_selected.length; i++)
              InterestingKeyword_Button(
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