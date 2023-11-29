import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../Model/meeting/meeting_model.dart';

class MeetingProvider extends ChangeNotifier{
  List<MeetingModel> _socialring;
  List<MeetingModel> _club;



  MeetingProvider():_socialring = List.empty(growable: true), _club = List.empty(growable: true){
  }

  List<MeetingModel> get socialring => _socialring;
  List<MeetingModel> get club => _club;

  Future<void> fetchAndSetSocialringItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/socialring.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<MeetingModel> loadedSocialringItem = [];

      extractedData['items'].forEach((socialringItemData) {
        loadedSocialringItem.add(MeetingModel.fromJson(socialringItemData));
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
      final List<MeetingModel> loadedClubItem = [];

      extractedData['items'].forEach((clubItemData) {
        loadedClubItem.add(MeetingModel.fromJson(clubItemData));
      });
      _club = loadedClubItem;
    }
    catch(e){
      print(e);
    }
  }

  changeLike (MeetingModel meeting){
    if (meeting.like)
      meeting.like = false;
    else
      meeting.like = true;

    notifyListeners();
  }
}