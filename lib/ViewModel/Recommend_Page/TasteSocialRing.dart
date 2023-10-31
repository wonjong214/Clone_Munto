import 'package:flutter/material.dart';
import '../../Model/meeting/recommend/recommend_page_Model.dart';

class TasteSocialRing_Provider extends ChangeNotifier{
  List<TasteSocialRing> _tastesocialring;


  TasteSocialRing_Provider():_tastesocialring = List.empty(growable: true) {
    set_tastesocialring();

  }

  List<TasteSocialRing> get tastesocialring => _tastesocialring;


  void set_tastesocialring(){
    _tastesocialring.add(TasteSocialRing('assets/images/recommend_page/TasteSocialRing/cat.jpeg', false, ['동물', '추천'], '길냥이 밥 주는 밤 산책', '경기도 안양', '10.22(일) 오전: 10:00', 3, 5));
    _tastesocialring.add(TasteSocialRing('assets/images/recommend_page/TasteSocialRing/carpenter.jpeg', false, ['취미'], '목공으로 집 만들어보기', '서울시 금천구', '10.21(토) 오전: 9:00', 2, 8));
    _tastesocialring.add(TasteSocialRing('assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg', false, ['산책'], '같이 벚꽃 보러가요', '서울시 송파구', '10.21(토) 오후: 4:00', 4, 8));
  }



  changelike (TasteSocialRing taste){
    if (taste.like)
      taste.like = false;
    else
      taste.like = true;

    notifyListeners();
  }
}