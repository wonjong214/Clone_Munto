import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:Clone_Munto/model/meeting/recommend/meeting_summary.dart';

void main(){
  List<MeetingSummary> clubList = [
    MeetingSummary(
        image: "https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1200,h_630/w_80,x_15,y_15,g_south_west,l_Klook_water_br_trans_yhcmh3/activities/jkyjodrysdnoaa5nfowc/%EC%97%A0%ED%8C%8C%EC%9D%B4%EC%96%B4%20%EC%8A%A4%ED%85%8C%EC%9D%B4%ED%8A%B8%20%EB%B9%8C%EB%94%A9%20%EC%9E%85%EC%9E%A5%EA%B6%8C.jpg",
        like: false,
        tag: ["외국어"],
        title: "한국이지만 영어쓰고 싶어 모임",
        location: "성동구",
        date: "방금 대화",
        participants: 6,
        total: 50
    ),
    MeetingSummary(
        image: "https://www.k-health.com/news/photo/202205/59315_62151_2921.jpg",
        like: false,
        tag: ["또래"],
        title: "99~00년생들 모여라!",
        location: "온라인",
        date: "방금 대화",
        participants: 4,
        total: 20
    ),
  ];
  List<MeetingSummary> socialringList = [
    MeetingSummary(
        image: "https://cdn.koreaeaglenews.com/news/photo/202106/27986_38810_3330.jpg",
        like: false,
        tag: ["동물","추천"],
        title: "길냥이 밥 주는 밤 산책",
        location: "경기도 안양",
        date: "10.22(일) 오전: 10:00",
        participants: 3,
        total: 5
    ),
    MeetingSummary(
        image: "https://img1.daumcdn.net/thumb/R1280x0.fjpg/?fname=http://t1.daumcdn.net/brunch/service/user/3ODc/image/yMELUx0L_Fn8W19tmWVxdNvykjM",
        like: false,
        tag: ["취미"],
        title: "목공으로 집 만들어보기",
        location: "서울시 금천구",
        date: "10.21(토) 오전: 9:00",
        participants: 2,
        total: 8
    ),
  ];

  Future<List<MeetingSummary>> fetchAndSetSocialringItems() async{
    final List<MeetingSummary> socialring;
    final List<MeetingSummary> loadedSocialringItem = [];
    try {
      final file = new File("assets/data/socialring.json");
      final extractedData = json.decode(await file.readAsString()) as Map<
          String,
          dynamic>;

      extractedData['items'].forEach((socialringItemData) {
        loadedSocialringItem.add(MeetingSummary.fromJson(socialringItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 1600));
      return socialring = loadedSocialringItem;
    }
  }

  Future<List<MeetingSummary>> fetchAndSetClubItems() async{
    final List<MeetingSummary> club;
    final List<MeetingSummary> loadedClubItem = [];
    try {
      final file = new File("assets/data/club.json");
      final extractedData = json.decode(await file.readAsString()) as Map<
          String,
          dynamic>;

      extractedData['items'].forEach((clubItemData) {
        loadedClubItem.add(MeetingSummary.fromJson(clubItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 1600));
      return club = loadedClubItem;
    }
  }

  bool changeLike (MeetingSummary meeting){
    if (meeting.like)
      meeting.like = false;
    else
      meeting.like = true;
    
    return meeting.like;
  }

  //fetchAndSetSocialringItems() : SociaringMeetingSummary 데이터가 들어있는 json 파일을 디코딩하여 List<MeetingSummary> 멤버에 저장한다.
  test(
      'make sure fetchAndSetSocialringItems function set valid List<MeetingSummary> ',()  async {
    List<MeetingSummary> providerSocialringList = await fetchAndSetSocialringItems();
    for(int i = 0; i < socialringList.length; i++){
      expect(providerSocialringList[i].image, socialringList[i].image);
      expect(providerSocialringList[i].like, socialringList[i].like);
      expect(providerSocialringList[i].tag, socialringList[i].tag);
      expect(providerSocialringList[i].title, socialringList[i].title);
      expect(providerSocialringList[i].location, socialringList[i].location);
      expect(providerSocialringList[i].date, socialringList[i].date);
      expect(providerSocialringList[i].participants, socialringList[i].participants);
      expect(providerSocialringList[i].total, socialringList[i].total);
    }
  }
  );

  //fetchAndSetClubItems() : ClubMeetingSummary 데이터가 들어있는 json 파일을 디코딩하여 List<MeetingSummary> 멤버에 저장한다.
  test(
      'make sure fetchAndSetClubItems function set valid List<MeetingSummary> ',()  async {
    List<MeetingSummary> providerClubList = await fetchAndSetClubItems();
    for(int i = 0; i < clubList.length; i++){
      expect(providerClubList[i].image, clubList[i].image);
      expect(providerClubList[i].like, clubList[i].like);
      expect(providerClubList[i].tag, clubList[i].tag);
      expect(providerClubList[i].title, clubList[i].title);
      expect(providerClubList[i].location, clubList[i].location);
      expect(providerClubList[i].date, clubList[i].date);
      expect(providerClubList[i].participants, clubList[i].participants);
      expect(providerClubList[i].total, clubList[i].total);
    }
  }
  );

  //changeLike() : MeetingSummary 객체를 입력받아서 like에는 현재 bool값을 반전시켜 저장한다
  test('make sure changeLike function change MeetingSummary like member succesfully ', () {
    bool result = changeLike(clubList[0]);
    expect(result, true);
  });
}