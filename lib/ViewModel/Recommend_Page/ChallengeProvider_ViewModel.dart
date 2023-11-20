import 'package:flutter/material.dart';
import 'package:loginscreen/Repository/Challenge_Repository.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Challenge_ViewModel.dart';
import 'dart:convert';

import '../../Model/meeting/Challenge_Model.dart';

class Challenge_Provider extends ChangeNotifier{
  late final Challenge_Repository _challenge_repository;
  List<Challenge_ViewModel> _challenge;

  String jsondata = """[{"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":"챌린지","title":"제목","date":"10.22(일)","duration":" 2주 간","time":3,"participants":0,"total":50}, {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":"챌린지","title":"제목","date":"10.22(일)","duration":" 2주 간","time":3,"participants":0,"total":50}, {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":"챌린지","title":"제목","date":"10.22(일)","duration":" 2주 간","time":3,"participants":0,"total":50}]""";

  Challenge_Provider(): _challenge = List.empty(growable: true){
    //set_challenge();
    //print(jsonEncode(_challenge[0].challenge_model));
    /*List<dynamic> list = json.decode(jsondata);
    list.forEach((element) {
      _challenge.add(Challenge_ViewModel(challenge_model: Challenge_Model.fromJson(element)));
    });*/
    _challenge_repository = Challenge_Repository();
    _getChallengeList();
  }

  List<Challenge_ViewModel> get challenge => _challenge;

  void _getChallengeList() {
    _challenge.addAll(_challenge_repository.getChallengeList());
    notifyListeners();
  }


  void set_challenge(){
    Challenge_Model model1 = new Challenge_Model(
        image: 'assets/images/recommend_page/Exhibitions/airpot.jpeg',
        like: false,
        tag: '챌린지',
        title: '제목',
        date: '10.22(일)',
        duration: ' 2주 간',
        time: 3,
        participants: 0,
        total: 50
    );
    Challenge_Model model2 = new Challenge_Model(
        image: 'assets/images/recommend_page/Exhibitions/airpot.jpeg',
        like: false,
        tag: '챌린지',
        title: '제목',
        date: '10.22(일)',
        duration: ' 2주 간',
        time: 3,
        participants: 0,
        total: 50
    );
    Challenge_Model model3 = new Challenge_Model(
        image: 'assets/images/recommend_page/Exhibitions/airpot.jpeg',
        like: false,
        tag: '챌린지',
        title: '제목',
        date: '10.22(일)',
        duration: ' 2주 간',
        time: 3,
        participants: 0,
        total: 50
    );
    _challenge.add(Challenge_ViewModel(challenge_model: model1));
    _challenge.add(Challenge_ViewModel(challenge_model: model2));
    _challenge.add(Challenge_ViewModel(challenge_model: model3));
  }

  changelike (Challenge_ViewModel challenge){
    if (challenge.like)
      challenge.like = false;
    else
      challenge.like = true;

    notifyListeners();
  }
}