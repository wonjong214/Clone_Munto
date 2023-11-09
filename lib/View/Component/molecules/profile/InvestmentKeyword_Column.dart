import 'package:flutter/material.dart';

import '../../../../Constants/Enum.dart';
import '../../atoms/InterestingGroupTitle_Text.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class InvestmentKeyword_Column extends StatefulWidget{
  @override
  State<InvestmentKeyword_Column> createState() => _InvestmentKeyword_ColumnState();
}

class _InvestmentKeyword_ColumnState extends State<InvestmentKeyword_Column> {
  Map<String, bool> investment_selected = {'재테크' : false, 'N잡' : false, '부동산' : false, '창업' : false,
    '주식' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InterestingGroupTitle_Text(text: Category.investment.korean),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < investment_selected.length; i++)
              InterestingKeyword_Button(
                selected: investment_selected[investment_selected.keys.elementAt(i)]!,
                text: investment_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(investment_selected.values.elementAt(i))
                      investment_selected[investment_selected.keys.elementAt(i)] = false;
                    else
                      investment_selected[investment_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}