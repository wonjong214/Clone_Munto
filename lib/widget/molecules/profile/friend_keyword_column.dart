import 'package:flutter/material.dart';
import '../../../../constants/Enum.dart';
import '../../../../constants/fontsize.dart';
import '../../atoms/common_text.dart';
import '../../atoms/interesting_keyword_button.dart';

class FriendKeywordColumn extends StatefulWidget{
  @override
  State<FriendKeywordColumn> createState() => _FriendKeywordColumnState();
}

class _FriendKeywordColumnState extends State<FriendKeywordColumn> {
  Map<String, bool> friendSelected = {'관심사' : false, '동네' : false, '또래' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CommonText(
          text: Category.friend.korean,
          textSize: interestingGroupTitleTextsize,
          fontWeight: interestingGroupTitleFontWeight,
        ),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < friendSelected.length; i++)
              InterestingKeywordButton(
                selected: friendSelected[friendSelected.keys.elementAt(i)]!,
                text: friendSelected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(friendSelected.values.elementAt(i))
                      friendSelected[friendSelected.keys.elementAt(i)] = false;
                    else
                      friendSelected[friendSelected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}