import 'package:flutter/cupertino.dart';
import 'package:loginscreen/Model/meeting/club_news_model.dart';


class ClubNewsProvider extends ChangeNotifier{
  List<ClubNewsModel> _clubnews;

  ClubNewsProvider():_clubnews = List.empty(growable: true){
    set_clubnews();
  }

  List<ClubNewsModel> get clubnews => _clubnews;

  set_clubnews(){
    ClubNewsModel model1 = ClubNewsModel(
        image: 'assets/images/socialring/beer.jpg',
        clubExplantation: '맥주에 환장한 사람들이 벌이는 미친 텐션 파티',
        title: '금요일 밤에 진행했던 홈파티, 신규멤버 3분이 오셔서 인원이 확 늘어 즐거웠습니다.',
        like: false,
        likeNum: 3,
    );
    ClubNewsModel model2 = ClubNewsModel(
      image: 'assets/images/socialring/opera.jpg',
      clubExplantation: '클래식 초보들이 즐기는 오페라 공연',
      title: '멤버분들과 재밌게 공연보고 뒷풀이에서 공연에 대한 이야기를 나누며 더 친해진 것 같아 좋았네요.',
      like: false,
      likeNum: 2,
    );
    ClubNewsModel model3 = ClubNewsModel(
      image: 'assets/images/socialring/colosseum.jpg',
      clubExplantation: '욜로들의 무계획 유럽여행',
      title: '아무래도 무계획으로 여행을 가다보니 불안한 점도 많았지만, 멤버간의 화합으로 잘 이겨내고 재밌게 다녀왔습니다.',
      like: false,
      likeNum: 7,
    );
    ClubNewsModel model4 = ClubNewsModel(
      image: 'assets/images/socialring/foodstreet.jpg',
      clubExplantation: '[2030] 직장인들의 맛집 도장깨기',
      title: '직장에서 쌓인 스트레스 맛있는 음식과 멤버분들 덕분에 털어버리고 갑니다.',
      like: false,
      likeNum: 3,
    );

    _clubnews.add(model1);
    _clubnews.add(model2);
    _clubnews.add(model3);
    _clubnews.add(model4);


  }

  changelike (ClubNewsModel club){
    if (club.like){
      club.like = false;
      club.likeNum == 0 ? club.likeNum = 0 : club.likeNum--;
    }

    else {
      club.like = true;
      club.likeNum++;
    }

    notifyListeners();
  }

}