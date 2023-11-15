import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/Enum.dart';
import 'package:loginscreen/View/Component/atoms/CustomThirtyRoundedRadio.dart';
import 'package:loginscreen/View/Component/atoms/ThirtyRoundedBorderContainer.dart';

class LoungeTotalAlignGroup extends StatefulWidget{
  @override
  State<LoungeTotalAlignGroup> createState() => _LoungeTotalAlignGroupState();
}

class _LoungeTotalAlignGroupState extends State<LoungeTotalAlignGroup> {
  int groupvalue = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 15),
      child: Row(
        children: [
          Wrap(
            spacing: 10,
            children: List.generate(LoungeAlign.values.length, (index) {
              return CustomThirtyRoundedRadio(
                value: LoungeAlign.values[index].index,
                groupvalue: groupvalue,
                label: LoungeAlign.values[index].korean,
                padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                onChanged: (value) {
                  setState(() {
                    groupvalue = value;
                  });
                },
                truebordercolor: Colors.black,
                falsebordercolor: Colors.grey.shade300,
                truebackcolor: Colors.black,
                falsebackcolor: Colors.transparent,
                truetextcolor: Colors.white,
                falsetextcolor: Colors.black,
              );
            }),
          ),
        ],
      )



      /*Row(
        children: [
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('최신'),
          ),
          SizedBox(width: 10,),
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('인기'),
          ),
          SizedBox(width: 10,),
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('모임 후기'),
          ),
          SizedBox(width: 10,),
          ThirtyRoundedBorderContainer(
            padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
            bordercolor: Color(0xcca9a9a9),
            widget: Text('취향 에디터'),
          ),

        ],
      ),*/
    );
  }
}