import 'package:flutter/material.dart';
import '../../Model/recommend_page_Model.dart';

class TasteSocialRing_Provider extends ChangeNotifier{
  List<TasteSocialRing> _tastesocialring;
  List<TasteSocialRing> _tasteclub;

  TasteSocialRing_Provider():_tastesocialring = List.empty(growable: true), _tasteclub = List.empty(growable: true) {
    set_tastesocialring();
    set_tasteclub();
  }

  List<TasteSocialRing> get tastesocialring => _tastesocialring;
  List<TasteSocialRing> get tasteclub => _tasteclub;

  void set_tastesocialring(){
    _tastesocialring.add(TasteSocialRing('images/recommend_page/TasteSocialRing/cat.jpeg', false, ['동물', '추천'], '길냥이 밥 주는 밤 산책', '경기도 안양', '10.22(일) 오전: 10:00', 3, 5));
    _tastesocialring.add(TasteSocialRing('images/recommend_page/TasteSocialRing/carpenter.jpeg', false, ['취미'], '목공으로 집 만들어보기', '서울시 금천구', '10.21(토) 오전: 9:00', 2, 8));
    _tastesocialring.add(TasteSocialRing('images/recommend_page/TasteSocialRing/cherryblossoms.jpeg', false, ['산책'], '같이 벚꽃 보러가요', '서울시 송파구', '10.21(토) 오후: 4:00', 4, 8));
  }

  void set_tasteclub(){
    _tasteclub.add(TasteSocialRing('images/recommend_page/TasteSocialRing/furniture.jpeg', false, ['가구 구경'], '가구 싸게 사는 방법 알려드려요', '인천시', '10.21(토) 오후: 1:00', 10, 15));
    _tasteclub.add(TasteSocialRing('images/recommend_page/TasteSocialRing/intestines.jpeg', false, ['음식'], '불금에 같이 곱창 먹어요', '서울시 은평구', '10.20(금) 오후: 6:00', 7, 12));
    _tasteclub.add(TasteSocialRing('images/recommend_page/TasteSocialRing/island.jpeg', false, ['여행', '추천'], '울릉도로 떠나요', '목포시', '10.21(토) 오전: 8:00', 8, 10));
  }

  changelike (TasteSocialRing taste){
    if (taste.like)
      taste.like = false;
    else
      taste.like = true;

    notifyListeners();
  }
}