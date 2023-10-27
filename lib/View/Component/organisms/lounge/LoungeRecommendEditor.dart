import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CircleAvatarProfile.dart';
import 'package:loginscreen/View/Component/molecules/lounge/LoungeEditoProfile.dart';

class LoungeRecommendEditor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '추천 취향 에디터',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(height: 10,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for(int i =0; i<8; i++)
                LoungeEditorProfile(AssetImage('assets/images/recommend_page/Exhibitions/jazz.jpeg'), '이름')
              ],
            ),
          )
        ],
      ),
    );
  }
}