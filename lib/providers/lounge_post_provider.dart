import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../model/meeting/lounge/lounge_post.dart';


class LoungePostProvider extends ChangeNotifier{
  List<LoungePost> _loungePost;

  LoungePostProvider():_loungePost = List.empty(growable: true){
  }

  List<LoungePost> get loungePost => _loungePost;

  Future<void> fetchAndSetLoungePostItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/lounge_post.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<LoungePost> loadedLoungePostItem = [];
      extractedData['items'].forEach((challengeItemData) {
        loadedLoungePostItem.add(LoungePost.fromJson(challengeItemData));
      });
      _loungePost = loadedLoungePostItem;
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 1500));
    }
  }

  void changeLike(LoungePost loungePost){
    if (loungePost.like){
      loungePost.like = false;
      loungePost.likeNum == 0 ? loungePost.likeNum = 0 : loungePost.likeNum--;
    }
    else {
      loungePost.like = true;
      loungePost.likeNum++;
    }
    notifyListeners();
  }
}