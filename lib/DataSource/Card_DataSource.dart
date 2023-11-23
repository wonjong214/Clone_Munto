import 'dart:convert';

import 'package:loginscreen/Model/meeting/lounge/Card_Model.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Card_ViewModel.dart';


class Card_DataSource{
  String card_json = """[
  {"writerimage":"assets/images/recommend_page/Review/board.jpeg","writername":"하얀색","writedate":"11월 5일","pageviewimage":["assets/images/recommend_page/Review/ski.jpeg","assets/images/recommend_page/Review/board.jpeg"],"meetingimage":"assets/images/recommend_page/Review/ski.jpeg","meetingtitle":"질릴 정도로 보드만 타는 여행","meetingtype":"소셜링","meetinglocation":"강원도 평창군","meetingtime":"11.3(금) 오후 1:00","maplocation":"휘닉스파크","mapdetaillocation":"강원 평창군 봉평면 태기로 174","bodytext":"오전 오후에 보드 신나게 타고, 지친몸을 이끌고 저녁에 바베큐까지 먹으니 완벽한 하루였습니다.","tag":["스키","보드","액티비티","소셜링후기"],"like":false,"likenum":3,"chatnum":2,"chatimage":"assets/images/socialring/backpacker.jpg","chatname":"아몬드","chatbody":"날씨 추운데도 열정적이시네요. 화이팅!!"},
  {"writerimage":"assets/images/recommend_page/TasteSocialRing/cat.jpeg","writername":"이은혜","writedate":"11월 8일","pageviewimage":["assets/images/recommend_page/TasteSocialRing/cat.jpeg"],"meetingimage":"assets/images/recommend_page/TasteSocialRing/cat.jpeg","meetingtitle":"유기묘 보호소로 귀여운 냥이들 보러가기","meetingtype":"클럽","meetinglocation":"경기도 안양시","meetingtime":"11.5(일) 오후 2:00","maplocation":"아이조아요양보호소 안양점","mapdetaillocation":"경기도 안양시 만안구 안양로 164 알파동 제1층 101호","bodytext":"유기묘 보호소를 찾아간건 처음이었는데, 유기묘들이 지내는 공간이 생각보다 쾌적해서 놀랐고, 안락사가 없다는 사실에 두번 놀랐습니다.","tag":["고양이","봉사","반려동물","소셜링후기","반려묘"],"like":false,"likenum":1,"chatnum":1,"chatimage":"assets/images/socialring/backpacker.jpg","chatname":"개냥이","chatbody":"일정기간이 지나면 안락사 한다는 다른 보호소의 현실에 마음 아팠는데, 안락사가 없다는 보호소 소식을 들으니까 마음이 따듯해지네요 ㅎㅎ"},
  {"writerimage":"assets/images/recommend_page/Review/burger.jpeg","writername":"김상진","writedate":"11월 12일","pageviewimage":["assets/images/socialring/foodstreet.jpg","assets/images/socialring/beer.jpg","assets/images/recommend_page/Review/burger.jpeg"],"meetingimage":"assets/images/recommend_page/Review/ski.jpeg","meetingtitle":"점심부터 저녁까지 배 터질때까지 먹어봐요","meetingtype":"소셜링","meetinglocation":"강남구","meetingtime":"11.11(토) 오후 2:00","maplocation":"강남역","mapdetaillocation":"서울특별시 강남구 강남대로 396","bodytext":"멤버분들과 여러 맛집을 돌아다니며 속깊은 애기를 하면서 더 친해진 것 같아 너무 좋았어요","tag":["맛집","음식","맥주","멤버","푸드파이트","소셜링후기"],"like":false,"likenum":7,"chatnum":0,"chatimage":"","chatname":"","chatbody":""}
  ]""";
  List<Card_ViewModel> getCardList(){
    List<dynamic> list = json.decode(card_json);
    return new List<Card_ViewModel>.generate(list.length, (index){
      return Card_ViewModel(card_model: Card_Model.fromJson(list[index]));
    });
  }
}