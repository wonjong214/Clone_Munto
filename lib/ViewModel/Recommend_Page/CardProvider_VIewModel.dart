import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:loginscreen/Model/meeting/lounge/Card_Model.dart';


class Card_Provider extends ChangeNotifier{
  List<Card_Model> _card;

  Card_Provider():_card = List.empty(growable: true){
  }

  List<Card_Model> get card => _card;

  Future<void> fetchAndSetCardItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/card.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<Card_Model> loadedCardItem = [];

      extractedData['items'].forEach((challengeItemData) {
        loadedCardItem.add(Card_Model.fromJson(challengeItemData));
      });
      _card = loadedCardItem;
    }
    catch(e){
      print(e);
    }
  }

  void change_like(Card_Model card){
    if (card.like){
      card.like = false;
      card.likenum == 0 ? card.likenum = 0 : card.likenum--;
    }
    else {
      card.like = true;
      card.likenum++;
    }
    notifyListeners();
  }
}