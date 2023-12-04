import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../model/meeting/recommend/club_news.dart';


class ClubNewsProvider extends ChangeNotifier{
  List<ClubNews> _clubnews;

  ClubNewsProvider():_clubnews = List.empty(growable: true);

  List<ClubNews> get clubnews => _clubnews;

  Future<void> fetchAndSetClubNewsItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/club_news.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<ClubNews> loadedClubNewsItem = [];

      extractedData['items'].forEach((clubNewsItemData) {
        loadedClubNewsItem.add(ClubNews.fromJson(clubNewsItemData));
      });
      _clubnews = loadedClubNewsItem;
    }
    catch(e){
      print(e);
    }
    finally {
      //if(this.isInit)
      await Future.delayed(Duration(milliseconds: 1600));
      //this.isInit = false;
    }
  }

  changeLike (ClubNews club){
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