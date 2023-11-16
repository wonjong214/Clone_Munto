import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Common_Text.dart';
import '../../../../Constants/Enum.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class PartyKeyword_Column extends StatefulWidget{
  @override
  State<PartyKeyword_Column> createState() => _PartyKeyword_ColumnState();
}

class _PartyKeyword_ColumnState extends State<PartyKeyword_Column> {
  Map<String, bool> party_selected = {'파티' : false, '소개팅' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Common_Text(
          text: Category.party.korean,
          textsize: interesting_grouptitle_textsize,
          fontWeight: interesting_grouptitle_fontweight,
        ),

        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < party_selected.length; i++)
              InterestingKeyword_Button(
                selected: party_selected[party_selected.keys.elementAt(i)]!,
                text: party_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(party_selected.values.elementAt(i))
                      party_selected[party_selected.keys.elementAt(i)] = false;
                    else
                      party_selected[party_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}