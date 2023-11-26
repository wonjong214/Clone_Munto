import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loginscreen/Repository/Meeting_Repository.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Meeting_ViewModel.dart';

import '../../Model/meeting/Meeting_Model.dart';

class Meeting_Provider extends ChangeNotifier{
  late final Meeting_Repository _meeting_repository;
  List<Meeting_Model> _socialring;
  List<Meeting_Model> _club;



  Meeting_Provider():_socialring = List.empty(growable: true), _club = List.empty(growable: true){
    /*set_socialring();
    set_club();*/
    // _socialring.forEach((element) {
    //   print(jsonEncode(element.meeting_model));
    // });
    // _club.forEach((element) {
    //   print(jsonEncode(element.meeting_model));
    // });
     //_meeting_repository = Meeting_Repository();
     //_getSocialringList();
     //_getClubList();
  }

  List<Meeting_Model> get socialring => _socialring;
  List<Meeting_Model> get club => _club;

  /*void _getSocialringList() {
    _socialring.addAll(_meeting_repository.getSocialringList());
    notifyListeners();
  }*/

  /*void _getClubList() {
    _club.addAll(_meeting_repository.getClubList());
    notifyListeners();
  }*/

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