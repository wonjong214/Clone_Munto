import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/SearchGroupTitle_Text.dart';

class CurrentSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 20),
            child: Row(
              children: [
                SearchGroupTitle_Text(text: '최근 검색'),
                Spacer(),
                Text(
                  '지우기',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20,),

        ],
      ),
    );
  }
}