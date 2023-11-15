import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Card_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel/Recommend_Page/CardProvider_VIewModel.dart';
import '../../molecules/lounge/CommentInput_Container.dart';
import '../../molecules/lounge/Comment_Container.dart';
import '../../molecules/lounge/LoungeIconGroup.dart';
import '../../molecules/lounge/LoungeListTile.dart';
import '../../molecules/lounge/LoungePageView.dart';
import '../../molecules/lounge/LoungeReview_Text.dart';
import '../../molecules/lounge/Lounge_KeywordTag_ScrollView.dart';
import '../../molecules/lounge/Social_Location_ScrollView.dart';


class LoungeReview extends StatelessWidget{
  Card_ViewModel card;

  LoungeReview({required this.card});

  String text = 'ㅋㄱㅋㅋㅋㅋ나 이거 참여하고싶어서 좋아요 눌러놨는데 일정 확인을 못했네';

  @override
  Widget build(BuildContext context) {
    var card_provider = Provider.of<Card_Provider>(context);
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          LoungeListTile(
              image: card.writerimage,
              name: card.writername,
              date: card.writedate,
          ),
          LoungePageView(image: card.pageviewimage,),
          SizedBox(height: 10,),
          Social_Locaition_ScrollView(
              meetingimage: card.meetingimage,
              meetingtitle: card.meetingtitle,
              meetingtype: card.meetingtype,
              meetinglocation: card.meetinglocation,
              meetingtime: card.meetingtime,
              maplocation: card.maplocation,
              mapdetaillocation: card.mapdetaillocation,
          ),
          SizedBox(height: 20,),
          LoungeReview_Text(card.bodytext),
          SizedBox(height: 20,),
          Lounge_KeyWordTag_ScrollView(card.tag),
          SizedBox(height: 20,),
          Row(
            children: [
              LoungeIconGroup(
                like: card.like,
                likenum :card.likenum,
                chatnum: card.chatnum,
                onTap: (){
                  card_provider.change_like(card);
                },
              ),
              SizedBox(width: 10,),
            ],
          ),
          SizedBox(height: 20,),
          if(card.chatname != '')
          Comment_Container(AssetImage(card.chatimage),card.chatname, card.chatbody ),
          SizedBox(height: 10,),
          CommentInput_Container(AssetImage('assets/images/recommend_page/Exhibitions/nacho.jpeg')),
          intergroupmargin,
        ],
      ),
    );
  }
}