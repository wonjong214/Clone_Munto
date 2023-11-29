import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../view_model/exhibitions_provider.dart';
import '../../../../../view_model/review_provider_view_model.dart';
import '../../../../../view_model/selected_host_provider_view_model.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../organisms/meeting(p)_recommend/category_grid.dart';
import '../../../organisms/meeting(p)_recommend/exhibitions_view.dart';
import '../../../organisms/meeting(p)_recommend/hot_club.dart';
import '../../../organisms/meeting(p)_recommend/hot_tag.dart';
import '../../../organisms/meeting(p)_recommend/open_meeting_view.dart';
import '../../../organisms/meeting(p)_recommend/recommend_challenge.dart';
import '../../../organisms/meeting(p)_recommend/recommend_member_view.dart';
import '../../../organisms/meeting(p)_recommend/review_view.dart';
import '../../../organisms/meeting(p)_recommend/taste_socialring_view.dart';



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






