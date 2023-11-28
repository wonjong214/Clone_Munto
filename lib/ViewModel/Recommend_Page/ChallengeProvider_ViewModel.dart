import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../../Model/meeting/challenge_model.dart';

class Challenge_Provider extends ChangeNotifier{
  List<ChallengeModel> _challenge = [];

  List<ChallengeModel> get challenge => _challenge;

  Future<void> fetchAndSetChallengeItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/challenge.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<ChallengeModel> loadedChallengeItem = [];

      extractedData['items'].forEach((challengeItemData) {
        loadedChallengeItem.add(ChallengeModel.fromJson(challengeItemData));
      });
      _challenge = loadedChallengeItem;
    }
    catch(e){
      print(e);
    }
  }

  changelike (ChallengeModel challenge){
    if (challenge.like)
      challenge.like = false;
    else
      challenge.like = true;

    notifyListeners();
  }
}