import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/meeting/review_model.dart';



class ReviewProvider extends ChangeNotifier{
  List<ReviewModel> _review;

  List<ReviewModel> get review => _review;


  ReviewProvider(): _review = List.empty(growable: true){
    //set_review();
  }
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

  /*void set_review(){
    _review.add(ReviewModel('assets/images/recommend_page/Review/board.jpeg', '호스트님께서 친절하게 보딩을 알려주셔서 재밌게 탈 수 있었습니다. 감사합니다', false, 4));
    _review.add(ReviewModel('assets/images/recommend_page/Review/burger.jpeg', '맛있는 음식과 함께 재밌는 시간을 보낼 수 있어서 좋았어요', false, 2));
    _review.add(ReviewModel('assets/images/recommend_page/Review/concert.jpeg', '다음 날 못 걸어다닐 정도로 미친듯이 놀았네요. 다음 콘서트때도 같이 가요!!', false, 6));
    _review.add(ReviewModel('assets/images/recommend_page/Review/ski.jpeg', '다음에 더 재밌게 놀아요', false, 1));
  }*/
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