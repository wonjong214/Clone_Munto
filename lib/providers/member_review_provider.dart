import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/meeting/recommend/member_review.dart';




class MemberReviewProvider extends ChangeNotifier{
  List<MemberReivew> _review;

  List<MemberReivew> get review => _review;


  MemberReviewProvider(): _review = List.empty(growable: true);

  Future<void> fetchAndSetReviewItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/review.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<MemberReivew> loadedReivewItem = [];

      extractedData['items'].forEach((reviewItemData) {
        loadedReivewItem.add(MemberReivew.fromJson(reviewItemData));
      });
      _review = loadedReivewItem;
    }
    catch(e){
      print(e);
    }
  }

  changeLike (MemberReivew rev){
    if (rev.like){
      rev.like = false;
      rev.likeNum == 0 ? rev.likeNum = 0 : rev.likeNum--;
    }

    else {
        rev.like = true;
        rev.likeNum++;
    }

    notifyListeners();
  }
}