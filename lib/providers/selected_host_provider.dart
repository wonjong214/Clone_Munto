import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../model/meeting/recommend/selected_host.dart';

class SelectedHostProvider extends ChangeNotifier{
  List<SelectedHost> _selectedhost;

  SelectedHostProvider(): _selectedhost = List.empty(growable: true);

  List<SelectedHost> get selectedhost => _selectedhost;

  Future<void> fetchAndSelectedHostItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/selected_host.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<SelectedHost> loadedSelectedHostItem = [];

      extractedData['items'].forEach((selectedHostItemData) {
        loadedSelectedHostItem.add(SelectedHost.fromJson(selectedHostItemData));
      });
      _selectedhost = loadedSelectedHostItem;
    }
    catch(e){
      print(e);
    }
  }

  void setSelectedHost(){
    SelectedHost model1 = SelectedHost(
        profileImage: 'assets/images/recommend_page/Exhibitions/jazz.jpeg',
        name: 'Sunny',
        follow: false,
        selfIntroduction: '몰입하는 시간을 좋아합니다.\n와인 한잔과 책 읽고, 글을 쓰는 걸 좋아합니다.',
        tag: ['사진', '글쓰기', '독서', '위스키', '와인', '브랜딩', '러닝'],
        image: ['assets/images/socialring/beer.jpg', 'assets/images/recommend_page/Exhibitions/cd.jpeg', 'assets/images/recommend_page/Exhibitions/coffee.jpeg'],
    );
    SelectedHost model2 = SelectedHost(
      profileImage: 'assets/images/recommend_page/Review/concert.jpeg',
      name: '스페이씨',
      follow: false,
      selfIntroduction: '특별함 보다 소소한 행복을 추구해요.',
      tag: ['영화', '전시', '콘서트', '연극', '와인', '브랜딩', '러닝', '재테크'],
      image: ['assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg', 'assets/images/recommend_page/Review/burger.jpeg', 'assets/images/socialring/opera.jpg'],
    );
    SelectedHost model3 = SelectedHost(
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

  void changeFollow(SelectedHost selectedhost){
    if(selectedhost.follow == true)
      selectedhost.follow = false;
    else
      selectedhost.follow = true;
    notifyListeners();
  }
}