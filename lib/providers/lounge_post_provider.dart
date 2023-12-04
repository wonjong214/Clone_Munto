import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../model/meeting/lounge/lounge_post.dart';


class LoungePostProvider extends ChangeNotifier{
  List<LoungePost> _card;

  LoungePostProvider():_card = List.empty(growable: true){
  }

  List<LoungePost> get card => _card;

  Future<void> fetchAndSetCardItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/card.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<LoungePost> loadedLoungePostItem = [];
      extractedData['items'].forEach((challengeItemData) {
        loadedLoungePostItem.add(LoungePost.fromJson(challengeItemData));
      });
      _card = loadedLoungePostItem;
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 2000));
    }
  }

  void changeLike(LoungePost card){
    if (card.like){
      card.like = false;
      card.likeNum == 0 ? card.likeNum = 0 : card.likeNum--;
    }
    else {
      card.like = true;
      card.likeNum++;
    }
    notifyListeners();
  }
}