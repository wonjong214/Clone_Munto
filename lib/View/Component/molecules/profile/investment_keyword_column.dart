import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/common_text.dart';
import '../../../../Constants/Enum.dart';
import '../../../../Constants/fontsize.dart';
import '../../atoms/interesting_keyword_button.dart';

class InvestmentKeywordColumn extends StatefulWidget{
  @override
  State<InvestmentKeywordColumn> createState() => _InvestmentKeywordColumnState();
}

class _InvestmentKeywordColumnState extends State<InvestmentKeywordColumn> {
  Map<String, bool> investmentSelected = {'재테크' : false, 'N잡' : false, '부동산' : false, '창업' : false,
    '주식' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.investment.korean,
          textSize: interesting_grouptitle_textsize,
          fontWeight: interesting_grouptitle_fontweight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < investmentSelected.length; i++)
              InterestingKeywordButton(
                selected: investmentSelected[investmentSelected.keys.elementAt(i)]!,
                text: investmentSelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(investmentSelected.values.elementAt(i))
                      investmentSelected[investmentSelected.keys.elementAt(i)] = false;
                    else
                      investmentSelected[investmentSelected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}