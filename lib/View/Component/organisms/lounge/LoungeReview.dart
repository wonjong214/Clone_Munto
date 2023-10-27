import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';

import '../../atoms/LoungeKeywordTag_Container.dart';
import '../../molecules/lounge/CommentInput_Container.dart';
import '../../molecules/lounge/Comment_Container.dart';
import '../../molecules/lounge/LoungeIconGroup.dart';
import '../../molecules/lounge/LoungeListTile.dart';
import '../../molecules/lounge/LoungePageView.dart';
import '../../molecules/lounge/LoungeReview_Text.dart';
import '../../molecules/lounge/Lounge_KeywordTag_ScrollView.dart';
import '../../molecules/lounge/Social_Location_ScrollView.dart';

class LoungeReview extends StatelessWidget{
  List<Widget> set_keywordtag (){
    List<LoungeKeywordTag_Container> taglist = List.empty(growable: true);
    for(int i = 0; i< 10; i++)
    {
      taglist.add(LoungeKeywordTag_Container('#태그'));
    }
    return taglist;
  }

  List<AssetImage> set_profileimage (){
    List<AssetImage> profileimage = List.empty(growable: true);
    for(int i = 0; i< 5; i++)
    {
      profileimage.add(AssetImage('assets/images/recommend_page/Exhibitions/jazz.jpeg'));
    }
    return profileimage;
  }

  String text = 'ㅋㄱㅋㅋㅋㅋ나 이거 참여하고싶어서 좋아요 눌러놨는데 일정 확인을 못했네';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          LoungeListTile(),
          LoungePageView(),
          SizedBox(height: 10,),
          Social_Locaition_ScrollView(),
          SizedBox(height: 20,),
          LoungeReview_Text('더보기 기능 구현해야함 더보기 기능 구현해야함 더 보기 기능 구현해야함 더 보기 기능'),
          SizedBox(height: 20,),
          Lounge_KeyWordTag_ScrollView(set_keywordtag()),
          SizedBox(height: 20,),
          Row(
            children: [
              LoungeIconGroup(4, 0),
              SizedBox(width: 10,),
              /*Expanded(
                      flex: 1,
                      child: ProfileGroup(set_profileimage()),
                    )*/
            ],
          ),
          SizedBox(height: 20,),
          Comment_Container(AssetImage('assets/images/recommend_page/Review/concert.jpeg'),'닉네임', text ),
          SizedBox(height: 10,),
          CommentInput_Container(AssetImage('assets/images/recommend_page/Review/concert.jpeg')),
          intergroupmargin,
        ],
      ),
    );
  }
}