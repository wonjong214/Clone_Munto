import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/meeting/recommend/review_model.dart';



class ReviewProvider extends ChangeNotifier{
  List<ReviewModel> _review;

  List<ReviewModel> get review => _review;


  ReviewProvider(): _review = List.empty(growable: true);

  Future<void> fetchAndSetReviewItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/review.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<ReviewModel> loadedReivewItem = [];

      extractedData['items'].forEach((reviewItemData) {
        loadedReivewItem.add(ReviewModel.fromJson(reviewItemData));
      });
      _review = loadedReivewItem;
    }
    catch(e){
      print(e);
    }
  }

  changeLike (ReviewModel rev){
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