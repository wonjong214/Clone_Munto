import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/common_text.dart';
import '../../../../constants/Enum.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/interesting_keyword_button.dart';

class PartyKeywordColumn extends StatefulWidget{
  @override
  State<PartyKeywordColumn> createState() => _PartyKeywordColumnState();
}

class _PartyKeywordColumnState extends State<PartyKeywordColumn> {
  Map<String, bool> partySelected = {'파티' : false, '소개팅' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.party.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),

        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < partySelected.length; i++)
              InterestingKeywordButton(
                selected: partySelected[partySelected.keys.elementAt(i)]!,
                text: partySelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(partySelected.values.elementAt(i))
                      partySelected[partySelected.keys.elementAt(i)] = false;
                    else
                      partySelected[partySelected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}