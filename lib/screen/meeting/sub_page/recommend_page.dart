import 'package:flutter/material.dart';
import '../../../widget/atoms/margin_sizedbox.dart';
import '../../../widget/organisms/meeting/recommend/category_grid.dart';
import '../../../widget/organisms/meeting/recommend/exhibitions_view.dart';
import '../../../widget/organisms/meeting/recommend/hot_club.dart';
import '../../../widget/organisms/meeting/recommend/hot_tag.dart';
import '../../../widget/organisms/meeting/recommend/open_meeting_view.dart';
import '../../../widget/organisms/meeting/recommend/recommend_challenge.dart';
import '../../../widget/organisms/meeting/recommend/recommend_member_view.dart';
import '../../../widget/organisms/meeting/recommend/review_view.dart';
import '../../../widget/organisms/meeting/recommend/taste_socialring_view.dart';




class RecommendPage extends StatefulWidget{
  late final ScrollController _controller;

  RecommendPage(ScrollController controller){
    _controller = controller;
  }

  @override
  State<RecommendPage> createState() => _RecommendPageState();
}

class _RecommendPageState extends State<RecommendPage> with AutomaticKeepAliveClientMixin {

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: widget._controller,
      scrollDirection: Axis.vertical,
      child:Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            //페이지뷰
            ExhibitionsView(height: 350,),
            //카테고리
            CategoryGrid(),
            SizedBox(height: 20,),
            Divider(color: Color(0xff8e8e8e)),
            SizedBox(height: 20,),
            HotTag(),
            interGroupMargin,
            //추천 스크롤 뷰
            TasteSocialRingView(),
            interGroupMargin,
            ReviewView(),
            interGroupMargin,
            HotClub(),
            interGroupMargin,
            RecommendChallenge(),
            interGroupMargin,
            RecommendMemberView(),
            interGroupMargin,
            OpenMeetingView(title: '모임 열기',subtitle: '나와 꼭 맞는 취향을 가진 사람들과\n만날 기회 직접 만들어볼까요?'),
            SizedBox(height: 80,)
          ],
        )
    );
  }
}






