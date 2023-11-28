import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:loginscreen/Model/meeting/lounge/card_model.dart';


class CardProvider extends ChangeNotifier{
  List<CardModel> _card;

  CardProvider():_card = List.empty(growable: true){
  }

  List<CardModel> get card => _card;

  Future<void> fetchAndSetCardItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/card.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<CardModel> loadedCardItem = [];

      extractedData['items'].forEach((challengeItemData) {
        loadedCardItem.add(CardModel.fromJson(challengeItemData));
      });
      _card = loadedCardItem;
    }
    catch(e){
      print(e);
    }
  }

  void changeLike(CardModel card){
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