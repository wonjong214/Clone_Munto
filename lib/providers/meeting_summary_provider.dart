import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../model/meeting/recommend/meeting_summary.dart';

class MeetingSummaryProvider extends ChangeNotifier{
  List<MeetingSummary> _socialring;
  List<MeetingSummary> _club;
  //bool isSocialringInit = true;
  //bool isClubInit = true;



  MeetingSummaryProvider():_socialring = List.empty(growable: true), _club = List.empty(growable: true){
  }

  List<MeetingSummary> get socialring => _socialring;
  List<MeetingSummary> get club => _club;

  Future<void> fetchAndSetSocialringItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/socialring.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<MeetingSummary> loadedSocialringItem = [];

      extractedData['items'].forEach((socialringItemData) {
        loadedSocialringItem.add(MeetingSummary.fromJson(socialringItemData));
      });
      _socialring = loadedSocialringItem;
    }
    catch(e){
      print(e);
    }
    finally{
      //if(this.isSocialringInit)
      await Future.delayed(Duration(milliseconds: 2500));

      //this.isSocialringInit = false;
    }
  }

  Future<void> fetchAndSetClubItems() async {
    try{
      final response = await rootBundle.loadString('assets/data/club.json'); //http// 통신 코드
      final extractedData = json.decode(response) as Map<String, dynamic>;
      final List<MeetingSummary> loadedClubItem = [];

      extractedData['items'].forEach((clubItemData) {
        loadedClubItem.add(MeetingSummary.fromJson(clubItemData));
      });
      _club = loadedClubItem;
    }
    catch(e){
      print(e);
    }
    finally{
      //if(this.isClubInit)
      await Future.delayed(Duration(milliseconds: 3000));

      //this.isClubInit = false;
    }
  }

  changeLike (MeetingSummary meeting){
    if (meeting.like)
      meeting.like = false;
    else
      meeting.like = true;

    notifyListeners();
  }
}