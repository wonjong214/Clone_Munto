import 'dart:convert';

import 'package:loginscreen/ViewModel/Recommend_Page/Meeting_ViewModel.dart';

import '../Model/meeting/Meeting_Model.dart';

class Meeting_DataSource{
  String socialring_json = """[
  {"image":"assets/images/recommend_page/TasteSocialRing/cat.jpeg","like":false,"tag":["동물","추천"],"title":"길냥이 밥 주는 밤 산책","location":"경기도 안양","date":"10.22(일) 오전: 10:00","participants":3,"total":5},
  {"image":"assets/images/recommend_page/TasteSocialRing/carpenter.jpeg","like":false,"tag":["취미"],"title":"목공으로 집 만들어보기","location":"서울시 금천구","date":"10.21(토) 오전: 9:00","participants":2,"total":8},
  {"image":"assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg","like":false,"tag":["산책"],"title":"같이 벚꽃 보러가요","location":"서울시 송파구","date":"10.21(토) 오후: 4:00","participants":4,"total":8},
  {"image":"assets/images/socialring/backpacker.jpg","like":false,"tag":["관악산"],"title":"같이 관악산 국기봉 정복하러 가요","location":"관악구","date":"10.28(토) 오후 4:00","participants":1,"total":8},
  {"image":"assets/images/socialring/backpacker.jpg","like":false,"tag":["관악산"],"title":"같이 관악산 국기봉 정복하러 가요","location":"관악구","date":"10.28(토) 오후 4:00","participants":1,"total":8},
  {"image":"assets/images/socialring/backpacker.jpg","like":false,"tag":["관악산"],"title":"같이 관악산 국기봉 정복하러 가요","location":"관악구","date":"10.28(토) 오후 4:00","participants":1,"total":8}
  ]""";
  String club_json = """[
  {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":["클럽"],"title":"제목","location":"위치","date":"3시간 전 대화","participants":0,"total":300},
  {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":["클럽"],"title":"제목","location":"위치","date":"3시간 전 대화","participants":0,"total":300},
  {"image":"assets/images/recommend_page/Exhibitions/airpot.jpeg","like":false,"tag":["클럽"],"title":"제목","location":"위치","date":"3시간 전 대화","participants":0,"total":300}
  ]""";

  List<Meeting_ViewModel> getSocialringList(){
    List<dynamic> list = json.decode(socialring_json);
    return new List<Meeting_ViewModel>.generate(list.length, (index){
      return Meeting_ViewModel(meeting_model: Meeting_Model.fromJson(list[index]));
    });
  }

  List<Meeting_ViewModel> getClubList(){
    List<dynamic> list = json.decode(club_json);
    return new List<Meeting_ViewModel>.generate(list.length, (index){
      return Meeting_ViewModel(meeting_model: Meeting_Model.fromJson(list[index]));
    });
  }
}