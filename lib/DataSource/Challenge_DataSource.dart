import 'dart:convert';

import 'package:loginscreen/Model/meeting/Challenge_Model.dart';

import '../ViewModel/Recommend_Page/Challenge_ViewModel.dart';

class Challenge_DataSource{

  String jsondata = """[{"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":"챌린지","title":"제목","date":"10.22(일)","duration":" 2주 간","time":3,"participants":0,"total":50}, {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":"챌린지","title":"제목","date":"10.22(일)","duration":" 2주 간","time":3,"participants":0,"total":50}, {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":"챌린지","title":"제목","date":"10.22(일)","duration":" 2주 간","time":3,"participants":0,"total":50}]""";

  List<Challenge_ViewModel> getChallengeList() {
    List<dynamic> list = json.decode(jsondata);
    int num = list.length;
    return new List<Challenge_ViewModel>.generate(list.length, (index){
      return Challenge_ViewModel(challenge_model: Challenge_Model.fromJson(list[index]));
    });
  }

}