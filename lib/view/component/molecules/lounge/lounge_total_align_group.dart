import 'package:flutter/material.dart';
import 'package:loginscreen/constants/Enum.dart';
import 'package:loginscreen/view/component/atoms/custom_thirty_rounded_radio.dart';

class LoungeTotalAlignGroup extends StatefulWidget{
  @override
  State<LoungeTotalAlignGroup> createState() => _LoungeTotalAlignGroupState();
}

class _LoungeTotalAlignGroupState extends State<LoungeTotalAlignGroup> {
  int groupValue = 0;

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
                groupvalue: groupValue,
                label: LoungeAlign.values[index].korean,
                padding: EdgeInsets.only(left: 12, right: 12, top: 8, bottom: 8),
                onChanged: (value) {
                  setState(() {
                    groupValue = value;
                  });
                },
                trueBorderColor: Colors.black,
                falseBorderColor: Colors.grey.shade300,
                trueBackColor: Colors.black,
                falseBackColor: Colors.transparent,
                trueTextColor: Colors.white,
                falseTextColor: Colors.black,
              );
            }),
          ),
        ],
      ),
    );
  }
}