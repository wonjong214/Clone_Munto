import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Meeting_ViewModel.dart';

import '../../Model/meeting/Meeting_Model.dart';

class Meeting_Provider extends ChangeNotifier{
  List<Meeting_ViewModel> _socialring;


  Meeting_Provider():_socialring = List.empty(growable: true){
    set_socialring();

  }

  List<Meeting_ViewModel> get tastesocialring => _socialring;


  void set_socialring(){
    Meeting_Model model1 = new Meeting_Model(
        image: 'assets/images/recommend_page/TasteSocialRing/cat.jpeg',
        like: false,
        tag: ['동물', '추천'],
        title: '길냥이 밥 주는 밤 산책',
        location: '경기도 안양',
        date: '10.22(일) 오전: 10:00',
        participants: 3,
        total: 5
    );
    Meeting_Model model2 = new Meeting_Model(
        image: 'assets/images/recommend_page/TasteSocialRing/carpenter.jpeg',
        like: false,
        tag: ['취미'],
        title: '목공으로 집 만들어보기',
        location: '서울시 금천구',
        date: '10.21(토) 오전: 9:00',
        participants: 2,
        total: 8
    );
    Meeting_Model model3 = new Meeting_Model(
        image: 'assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg',
        like: false,
        tag: ['산책'],
        title: '같이 벚꽃 보러가요',
        location: '서울시 송파구',
        date: '10.21(토) 오후: 4:00',
        participants: 4,
        total: 8
    );
    _socialring.add(Meeting_ViewModel(meeting_model: model1));
    _socialring.add(Meeting_ViewModel(meeting_model: model2));
    _socialring.add(Meeting_ViewModel(meeting_model: model3));
  }





  changelike (Meeting_ViewModel meeting){
    if (meeting.like)
      meeting.like = false;
    else
      meeting.like = true;

    notifyListeners();
  }
}