import 'package:flutter/cupertino.dart';
import '../../Model/meeting/selected_host_model.dart';

class SelectedHost_Provider extends ChangeNotifier{
  List<SelectedHostModel> _selectedhost;

  SelectedHost_Provider(): _selectedhost = List.empty(growable: true){
    setSelectedHost();
  }

  List<SelectedHostModel> get selectedhost => _selectedhost;

  void setSelectedHost(){
    SelectedHostModel model1 = SelectedHostModel(
        profileImage: 'assets/images/recommend_page/Exhibitions/jazz.jpeg',
        name: 'Sunny',
        follow: false,
        selfIntroduction: '몰입하는 시간을 좋아합니다.\n와인 한잔과 책 읽고, 글을 쓰는 걸 좋아합니다.',
        tag: ['사진', '글쓰기', '독서', '위스키', '와인', '브랜딩', '러닝'],
        image: ['assets/images/socialring/beer.jpg', 'assets/images/recommend_page/Exhibitions/cd.jpeg', 'assets/images/recommend_page/Exhibitions/coffee.jpeg'],
    );
    SelectedHostModel model2 = SelectedHostModel(
      profileImage: 'assets/images/recommend_page/Review/concert.jpeg',
      name: '스페이씨',
      follow: false,
      selfIntroduction: '특별함 보다 소소한 행복을 추구해요.',
      tag: ['영화', '전시', '콘서트', '연극', '와인', '브랜딩', '러닝', '재테크'],
      image: ['assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg', 'assets/images/recommend_page/Review/burger.jpeg', 'assets/images/socialring/opera.jpg'],
    );
    SelectedHostModel model3 = SelectedHostModel(
      profileImage: 'assets/images/socialring/colosseum.jpg',
      name: '스페이씨',
      follow: false,
      selfIntroduction: '많은 곳을 돌아다니며, 여러 문화와 여러 분야의 사람들을 만나는 것을 좋아합니다.',
      tag: ['영화', '전시', '콘서트', '연극', '와인', '브랜딩', '러닝', '재테크'],
      image: ['assets/images/socialring/foodstreet.jpg', 'assets/images/socialring/beer.jpg', 'assets/images/socialring/opera.jpg'],
    );

    _selectedhost.add(model1);
    _selectedhost.add(model2);
    _selectedhost.add(model3);



  }

  void changeFollow(SelectedHostModel selectedhost){
    if(selectedhost.follow == true)
      selectedhost.follow = false;
    else
      selectedhost.follow = true;
    notifyListeners();
  }
}