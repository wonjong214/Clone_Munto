import 'package:flutter/cupertino.dart';
import 'package:loginscreen/Model/meeting/SelectedHost_Model.dart';

import 'SelectedHost_ViewModel.dart';

class SelectedHost_Provider extends ChangeNotifier{
  List<SelectedHost_ViewModel> _selectedhost;

  SelectedHost_Provider(): _selectedhost = List.empty(growable: true){
    set_selectedhost();
  }

  List<SelectedHost_ViewModel> get selectedhost => _selectedhost;

  void set_selectedhost(){
    SelectedHost_Model model1 = SelectedHost_Model(
        profileimage: 'assets/images/recommend_page/Exhibitions/jazz.jpeg',
        name: 'Sunny',
        follow: false,
        selfintroduction: '몰입하는 시간을 좋아합니다.\n와인 한잔과 책 읽고, 글을 쓰는 걸 좋아합니다.',
        tag: ['사진', '글쓰기', '독서', '위스키', '와인', '브랜딩', '러닝'],
        image: ['assets/images/socialring/beer.jpg', 'assets/images/recommend_page/Exhibitions/cd.jpeg', 'assets/images/recommend_page/Exhibitions/coffee.jpeg'],
    );
    SelectedHost_Model model2 = SelectedHost_Model(
      profileimage: 'assets/images/recommend_page/Review/concert.jpeg',
      name: '스페이씨',
      follow: false,
      selfintroduction: '특별함 보다 소소한 행복을 추구해요.',
      tag: ['영화', '전시', '콘서트', '연극', '와인', '브랜딩', '러닝', '재테크'],
      image: ['assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg', 'assets/images/recommend_page/Review/burger.jpeg', 'assets/images/socialring/opera.jpg'],
    );
    SelectedHost_Model model3 = SelectedHost_Model(
      profileimage: 'assets/images/socialring/colosseum.jpg',
      name: '스페이씨',
      follow: false,
      selfintroduction: '많은 곳을 돌아다니며, 여러 문화와 여러 분야의 사람들을 만나는 것을 좋아합니다.',
      tag: ['영화', '전시', '콘서트', '연극', '와인', '브랜딩', '러닝', '재테크'],
      image: ['assets/images/socialring/foodstreet.jpg', 'assets/images/socialring/beer.jpg', 'assets/images/socialring/opera.jpg'],
    );

    _selectedhost.add(SelectedHost_ViewModel(selectedHost_Model: model1));
    _selectedhost.add(SelectedHost_ViewModel(selectedHost_Model: model2));
    _selectedhost.add(SelectedHost_ViewModel(selectedHost_Model: model3));


  }

  void change_follow(SelectedHost_ViewModel selectedhost){
    if(selectedhost.follow == true)
      selectedhost.follow = false;
    else
      selectedhost.follow = true;
    notifyListeners();
  }
}