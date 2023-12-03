import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../model/meeting/recommend/challenge_summary.dart';



class ChallengeSummaryProvider extends ChangeNotifier{
  List<ChallengeSumamry> _challenge = [];
  //bool isInit = true;


  List<ChallengeSumamry> get challenge => _challenge;

  Future<void> fetchAndSetChallengeItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/challenge.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<ChallengeSumamry> loadedChallengeItem = [];

      extractedData['items'].forEach((challengeItemData) {
        loadedChallengeItem.add(ChallengeSumamry.fromJson(challengeItemData));
      });
      _challenge = loadedChallengeItem;
    }
    catch(e){
      print(e);
    }
    finally {
      //if(this.isInit)
      await Future.delayed(Duration(milliseconds: 3000));

      //this.isInit = false;
    }
  }

  changeLike (ChallengeSumamry challenge){
    if (challenge.like)
      challenge.like = false;
    else
      challenge.like = true;

    notifyListeners();
  }
}