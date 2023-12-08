import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:loginscreen/model/meeting/recommend/club_news.dart';

void main(){
  List<ClubNews> clubNewsList = [
    ClubNews(
        image: "assets/images/socialring/beer.jpg", 
        clubExplantation: "맥주에 환장한 사람들이 벌이는 미친 텐션 파티", 
        title: "금요일 밤에 진행했던 홈파티, 신규멤버 3분이 오셔서 인원이 확 늘어 즐거웠습니다.",
        like: false,
        likeNum: 3
    ),
    ClubNews(
        image: "assets/images/socialring/opera.jpg",
        clubExplantation: "클래식 초보들이 즐기는 오페라 공연",
        title: "멤버분들과 재밌게 공연보고 뒷풀이에서 공연에 대한 이야기를 나누며 더 친해진 것 같아 좋았네요.",
        like: false,
        likeNum: 2
    ),
    ClubNews(
        image: "assets/images/socialring/colosseum.jpg",
        clubExplantation: "욜로들의 무계획 유럽여행",
        title: "아무래도 무계획으로 여행을 가다보니 불안한 점도 많았지만, 멤버간의 화합으로 잘 이겨내고 재밌게 다녀왔습니다.",
        like: false,
        likeNum: 7
    ),
    ClubNews(
        image: "assets/images/socialring/foodstreet.jpg",
        clubExplantation: "[2030] 직장인들의 맛집 도장깨기",
        title: "직장에서 쌓인 스트레스 맛있는 음식과 멤버분들 덕분에 털어버리고 갑니다.",
        like: false,
        likeNum: 3
    ),
  ];

  Future<List<ClubNews>> fetchAndSetClubNewsItems() async{
    final List<ClubNews> clubNews;
    final List<ClubNews> loadedClubNewsItem = [];
    try {
      final file = new File("assets/data/club_news.json");
      final extractedData = json.decode(await file.readAsString()) as Map<String, dynamic>;

      extractedData['items'].forEach((clubNewsItemData) {
        loadedClubNewsItem.add(ClubNews.fromJson(clubNewsItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 1600));
      return clubNews = loadedClubNewsItem;
    }
  }

  ClubNews changeLike (ClubNews club){
    if (club.like){
      club.like = false;
      club.likeNum == 0 ? club.likeNum = 0 : club.likeNum--;
    }

    else {
      club.like = true;
      club.likeNum++;
    }

    return club;
  }

  //fetchAndSetClubNewsItems() : ClubNews 데이터가 들어있는 json 파일을 디코딩하여 List<ClubNews> 멤버에 저장한다.
  test(
      'make sure fetchAndSetClubNewsItems function set valid List<ChallengeSummary> ',()  async {
    List<ClubNews> providerClubNewsList = await fetchAndSetClubNewsItems();
    for (int i = 0; i < clubNewsList.length; i++) {
      expect(providerClubNewsList[i].image, clubNewsList[i].image);
      expect(providerClubNewsList[i].clubExplantation,
          clubNewsList[i].clubExplantation);
      expect(providerClubNewsList[i].title, clubNewsList[i].title);
      expect(providerClubNewsList[i].like, clubNewsList[i].like);
      expect(providerClubNewsList[i].likeNum, clubNewsList[i].likeNum);
    }
  }
  );

  //changeLike() : ClubNews 객체를 입력받아서 like에는 현재 bool값을 반전시켜 저장하고, likeNum은 현재 bool값이 true이면 값을 1감소시키고 false이면 1 증가시킨다.
  test('make sure changeLike function change ClubNews like member and likenum member succesfully ', () {
    ClubNews result = changeLike(clubNewsList[0]);
    expect(result.like, true);
    expect(result.likeNum, 4);
  });
  
}