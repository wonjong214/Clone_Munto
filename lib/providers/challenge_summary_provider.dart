import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../model/meeting/recommend/challenge_summary.dart';



class ChallengeSummaryProvider extends ChangeNotifier{
  List<ChallengeSummary> _challenge = [];
  //bool isInit = true;


  List<ChallengeSummary> get challenge => _challenge;

  Future<void> fetchAndSetChallengeItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/challenge.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<ChallengeSummary> loadedChallengeItem = [];

      extractedData['items'].forEach((challengeItemData) {
        loadedChallengeItem.add(ChallengeSummary.fromJson(challengeItemData));
      });
      _challenge = loadedChallengeItem;
    }
    catch(e){
      print(e);
    }
    finally {
      //if(this.isInit)
      await Future.delayed(Duration(milliseconds: 800));

      //this.isInit = false;
    }
  }

  changeLike (ChallengeSummary challenge){
    if (challenge.like)
      challenge.like = false;
    else
      challenge.like = true;

    notifyListeners();
  }
}