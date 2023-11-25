import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../../Model/meeting/Challenge_Model.dart';

class Challenge_Provider extends ChangeNotifier{
  List<Challenge_Model> _challenge = [];

  List<Challenge_Model> get challenge => _challenge;

  Future<void> fetchAndSetChallengeItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/challenge.json'); //http// 통신 코드
      print(response);
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<Challenge_Model> loadedChallengeItem = [];

      extractedData['items'].forEach((challengeItemData) {
        loadedChallengeItem.add(Challenge_Model.fromJson(challengeItemData));
      });
      _challenge = loadedChallengeItem;
    }
    catch(e){
      print(e);
    }
  }

  changelike (Challenge_Model challenge){
    if (challenge.like)
      challenge.like = false;
    else
      challenge.like = true;

    notifyListeners();
  }
}