import 'package:flutter/material.dart';
import '../../Model/meeting/recommend/recommend_page_Model.dart';
class ExhibitionsProvider with ChangeNotifier{
  int _currentPage;
  List<Exhibitions> _exhibitions;

  List<Exhibitions> get exhibitions => _exhibitions;
  int get currentPage => _currentPage;

  ExhibitionsProvider():this._currentPage = 1, _exhibitions = List.empty(growable: true){
    set_exhibitions();
  }

  void pagechange(int num){
    _currentPage = num + 1;
    notifyListeners();
  }
  void set_exhibitions(){
    _exhibitions.add(Exhibitions('assets/images/recommend_page/Exhibitions/airpot.jpeg', '최고의 선물 AIR PODS2'));
    _exhibitions.add(Exhibitions('assets/images/recommend_page/Exhibitions/jazz.jpeg', '이색데이트 추천 JAZZ BAR'));
    _exhibitions.add(Exhibitions('assets/images/recommend_page/Exhibitions/cd.jpeg', '좋아하는 가수 CD 들으면서 chilling'));
    _exhibitions.add(Exhibitions('assets/images/recommend_page/Exhibitions/coffee.jpeg', '커피 한 잔과 함께하는 일상의 여유'));
    _exhibitions.add(Exhibitions('assets/images/recommend_page/Exhibitions/nacho.jpeg', '페스티벌 원정대 모집'));
  }
}