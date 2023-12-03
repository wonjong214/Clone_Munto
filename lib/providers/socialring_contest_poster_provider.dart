import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/meeting/recommend/socialring_contest_poster.dart';

class SocialringContestPosterProvider with ChangeNotifier{
  int _currentPage;
  List<SocialringContestPoster> _socialringContestPoster;
  //bool isInit = true;

  List<SocialringContestPoster> get socialringContestPoster => _socialringContestPoster;
  int get currentPage => _currentPage;
  void set currentPage(int currentPage){
    this._currentPage = currentPage;
  }

  SocialringContestPosterProvider():this._currentPage = 1, _socialringContestPoster = List.empty(growable: true){
    //set_socialringContestPoster();
  }

  Future<void> fetchAndSetSocialringContestPosterItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/socialring_contest_poster.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<SocialringContestPoster> loadedPosterItem = [];

      extractedData['items'].forEach((posterItemData) {
        loadedPosterItem.add(SocialringContestPoster.fromJson(posterItemData));
      });
      _socialringContestPoster = loadedPosterItem;
    }
    catch(e){
      print(e);
    }
    finally {
      //if(this.isInit)
      await Future.delayed(Duration(milliseconds: 3000));

      //this.isInit = false;
    }
  }

  void pageChange(int num){
    _currentPage = num;
    notifyListeners();
  }
  /*void set_socialringContestPoster(){
    _socialringContestPoster.add(SocialringContestPoster('assets/images/recommend_page/Exhibitions/airpot.jpeg', '최고의 선물 AIR PODS2'));
    _socialringContestPoster.add(SocialringContestPoster('assets/images/recommend_page/Exhibitions/jazz.jpeg', '이색데이트 추천 JAZZ BAR'));
    _socialringContestPoster.add(SocialringContestPoster('assets/images/recommend_page/Exhibitions/cd.jpeg', '좋아하는 가수 CD 들으면서 chilling'));
    _socialringContestPoster.add(SocialringContestPoster('assets/images/recommend_page/Exhibitions/coffee.jpeg', '커피 한 잔과 함께하는 일상의 여유'));
    _socialringContestPoster.add(SocialringContestPoster('assets/images/recommend_page/Exhibitions/nacho.jpeg', '페스티벌 원정대 모집'));
  }*/
}