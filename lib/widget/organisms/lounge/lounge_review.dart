import 'package:flutter/material.dart';
import '../../../model/meeting/lounge/lounge_post.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../molecules/lounge/comment_container.dart';
import '../../molecules/lounge/comment_input_container.dart';
import '../../molecules/lounge/lounge_icon_group.dart';
import '../../molecules/lounge/lounge_keyword_tag_scrollview.dart';
import '../../molecules/lounge/lounge_listtile.dart';
import '../../molecules/lounge/lounge_pageview.dart';
import '../../molecules/lounge/lounge_review_text.dart';
import '../../molecules/lounge/profile_group.dart';
import '../../molecules/lounge/social_location_scrollview.dart';


class LoungeReview extends StatefulWidget{
  LoungePost loungePost;
  Function changeLike;

  LoungeReview({required this.loungePost, required this.changeLike});

  @override
  State<LoungeReview> createState() => _LoungeReviewState();
}

class _LoungeReviewState extends State<LoungeReview> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        children: [
          LoungeListTile(
              image: widget.loungePost.writerImage,
              name: widget.loungePost.writerName,
              date: widget.loungePost.writeDate,
          ),
          LoungePageView(image: widget.loungePost.pageviewImage,),
          SizedBox(height: 10,),
          SocialLocaitionScrollView(
              meetingImage: widget.loungePost.meetingImage,
              meetingTitle: widget.loungePost.meetingTitle,
              meetingType: widget.loungePost.meetingType,
              meetingLocation: widget.loungePost.meetingLocation,
              meetingTime: widget.loungePost.meetingTime,
              mapLocation: widget.loungePost.mapLocation,
              mapDetailLocation: widget.loungePost.mapDetailLocation,
          ),
          SizedBox(height: 20,),
          LoungeReviewText(widget.loungePost.bodyText),
          SizedBox(height: 20,),
          LoungeKeyWordTagScrollView(widget.loungePost.tag),
          SizedBox(height: 20,),
          Row(
            children: [
              LoungeIconGroup(
                like: widget.loungePost.like,
                likeNum :widget.loungePost.likeNum,
                chatNum: widget.loungePost.chatList?.length ?? 0,
                loungePost: widget.loungePost,
                onTap: (){
                  widget.changeLike(widget.loungePost);
                },
              ),
              SizedBox(width: 10,),
              ProfileGroup(widget.loungePost.likeNum)
            ],
          ),
          SizedBox(height: 20,),
          if(widget.loungePost.chatList != null)
          CommentContainer(AssetImage(widget.loungePost.chatList![0].chatImage),widget.loungePost.chatList![0].chatName, widget.loungePost.chatList![0].chatBody),
          SizedBox(height: 10,),
          CommentInputContainer(AssetImage('assets/images/recommend_page/Exhibitions/nacho.jpeg')),
          interGroupMargin,
        ],
      ),
    );
  }
}