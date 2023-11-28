import 'package:flutter/material.dart';
import 'package:loginscreen/Model/meeting/lounge/card_model.dart';
import 'package:loginscreen/View/Component/atoms/margin_sizedbox.dart';
import '../../molecules/lounge/comment_container.dart';
import '../../molecules/lounge/comment_input_container.dart';
import '../../molecules/lounge/lounge_icon_group.dart';
import '../../molecules/lounge/lounge_keyword_tag_scrollview.dart';
import '../../molecules/lounge/lounge_listtile.dart';
import '../../molecules/lounge/lounge_pageview.dart';
import '../../molecules/lounge/lounge_review_text.dart';
import '../../molecules/lounge/profile_group.dart';
import '../../molecules/lounge/social_location_scrollview.dart';


class LoungeReview extends StatelessWidget{
  CardModel card;
  void Function() change_like;

  LoungeReview({required this.card, required this.change_like});



  String text = 'ㅋㄱㅋㅋㅋㅋ나 이거 참여하고싶어서 좋아요 눌러놨는데 일정 확인을 못했네';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          LoungeListTile(
              image: card.writerImage,
              name: card.writerName,
              date: card.writeDate,
          ),
          LoungePageView(image: card.pageviewImage,),
          SizedBox(height: 10,),
          SocialLocaitionScrollView(
              meetingImage: card.meetingImage,
              meetingTitle: card.meetingTitle,
              meetingType: card.meetingType,
              meetingLocation: card.meetingLocation,
              meetingTime: card.meetingTime,
              mapLocation: card.mapLocation,
              mapDetailLocation: card.mapDetailLocation,
          ),
          SizedBox(height: 20,),
          LoungeReviewText(card.bodyText),
          SizedBox(height: 20,),
          LoungeKeyWordTagScrollView(card.tag),
          SizedBox(height: 20,),
          Row(
            children: [
              LoungeIconGroup(
                like: card.like,
                likeNum :card.likeNum,
                chatNum: card.chatNum,
                onTap: (){
                  change_like;
                },
              ),
              SizedBox(width: 10,),
              ProfileGroup(card.likeNum)
            ],
          ),
          SizedBox(height: 20,),
          if(card.chatName != '')
          CommentContainer(AssetImage(card.chatImage),card.chatName, card.chatBody ),
          SizedBox(height: 10,),
          CommentInputContainer(AssetImage('assets/images/recommend_page/Exhibitions/nacho.jpeg')),
          interGroupMargin,
        ],
      ),
    );
  }
}