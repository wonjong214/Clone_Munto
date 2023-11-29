import 'package:flutter/material.dart';

import '../Model/meeting/recommend/recommend_page_Model.dart';

class ReviewProvider extends ChangeNotifier{
  List<Review> _review;

  List<Review> get review => _review;


  ReviewProvider(): _review = List.empty(growable: true){
    set_review();
  }

  void set_review(){
    _review.add(Review('assets/images/recommend_page/Review/board.jpeg', '호스트님께서 친절하게 보딩을 알려주셔서 재밌게 탈 수 있었습니다. 감사합니다', false, 4));
    _review.add(Review('assets/images/recommend_page/Review/burger.jpeg', '맛있는 음식과 함께 재밌는 시간을 보낼 수 있어서 좋았어요', false, 2));
    _review.add(Review('assets/images/recommend_page/Review/concert.jpeg', '다음 날 못 걸어다닐 정도로 미친듯이 놀았네요. 다음 콘서트때도 같이 가요!!', false, 6));
    _review.add(Review('assets/images/recommend_page/Review/ski.jpeg', '다음에 더 재밌게 놀아요', false, 1));
  }
  changeLike (Review rev){
    if (rev.like){
      rev.like = false;
      rev.likenum == 0 ? rev.likenum = 0 : rev.likenum--;
    }

    else {
        rev.like = true;
        rev.likenum++;
    }

    notifyListeners();
  }
}