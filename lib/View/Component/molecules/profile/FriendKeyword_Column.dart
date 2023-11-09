import 'package:flutter/material.dart';
import '../../../../Constants/Enum.dart';
import '../../atoms/InterestingGroupTitle_Text.dart';
import '../../atoms/InterestingKeyword_Button.dart';

class FriendKeyword_Column extends StatefulWidget{
  @override
  State<FriendKeyword_Column> createState() => _FriendKeyword_ColumnState();
}

class _FriendKeyword_ColumnState extends State<FriendKeyword_Column> {
  Map<String, bool> friend_selected = {'관심사' : false, '동네' : false, '또래' : false,};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InterestingGroupTitle_Text(text: Category.friend.korean),
        SizedBox(height: 10,),
        Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            for(int i = 0; i < friend_selected.length; i++)
              InterestingKeyword_Button(
                selected: friend_selected[friend_selected.keys.elementAt(i)]!,
                text: friend_selected.keys.elementAt(i),
                onChanged: (){
                  setState(() {
                    if(friend_selected.values.elementAt(i))
                      friend_selected[friend_selected.keys.elementAt(i)] = false;
                    else
                      friend_selected[friend_selected.keys.elementAt(i)] = true;
                  });
                },
              ),
          ],
        )
      ],
    );
  }
}