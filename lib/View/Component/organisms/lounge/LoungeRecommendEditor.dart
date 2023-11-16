import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/lounge/LoungeEditoProfile.dart';

class LoungeRecommendEditor extends StatelessWidget{
  Map<String, String> map ={
    '무비리스트' : 'assets/images/socialring/colosseum.jpg',
    '애봉이' : 'assets/images/recommend_page/Exhibitions/jazz.jpeg',
    '종원' : 'assets/images/recommend_page/Exhibitions/airpot.jpeg',
    '카페한입' : 'assets/images/recommend_page/Exhibitions/coffee.jpeg',
    '푸드짱' : 'assets/images/socialring/foodstreet.jpg',
    '강민웅' : 'assets/images/recommend_page/TasteSocialRing/island.jpeg',
    '세연' : 'assets/images/recommend_page/Exhibitions/nacho.jpeg',
  };
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
                for(int i =0; i<map.length; i++)
                LoungeEditorProfile(AssetImage(map.values.elementAt(i)), map.keys.elementAt(i))
              ],
            ),
          )
        ],
      ),
    );
  }
}