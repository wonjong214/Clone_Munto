import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../Model/meeting/Meeting_Model.dart';

class Meeting_Provider extends ChangeNotifier{
  List<Meeting_Model> _socialring;
  List<Meeting_Model> _club;



  Meeting_Provider():_socialring = List.empty(growable: true), _club = List.empty(growable: true){
  }

  List<Meeting_Model> get socialring => _socialring;
  List<Meeting_Model> get club => _club;

  Future<void> fetchAndSetSocialringItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/socialring.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<Meeting_Model> loadedSocialringItem = [];

      extractedData['items'].forEach((socialringItemData) {
        loadedSocialringItem.add(Meeting_Model.fromJson(socialringItemData));
      });
      _socialring = loadedSocialringItem;
    }
    catch(e){
      print(e);
    }
  }

  Future<void> fetchAndSetClubItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/club.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<Meeting_Model> loadedClubItem = [];

      extractedData['items'].forEach((clubItemData) {
        loadedClubItem.add(Meeting_Model.fromJson(clubItemData));
      });
      _club = loadedClubItem;
    }
    catch(e){
      print(e);
    }
  }

  changelike (Meeting_Model meeting){
    if (meeting.like)
      meeting.like = false;
    else
      meeting.like = true;

    notifyListeners();
  }
}