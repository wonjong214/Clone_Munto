import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:Clone_Munto/model/meeting/recommend/socialring_contest_poster.dart';

void main(){
  List<SocialringContestPoster> socialringContestPosterList = [
    SocialringContestPoster(
        image: "assets/images/recommend_page/Exhibitions/airpot.jpeg", 
        title: "최고의 선물 AIR PODS2"
    ),
    SocialringContestPoster(
        image: "assets/images/recommend_page/Exhibitions/jazz.jpeg",
        title: "이색데이트 추천 JAZZ BAR"
    ),
  ];

  Future<List<SocialringContestPoster>> fetchAndSetSocialringContestPosterItems() async{
    final List<SocialringContestPoster> socialringContestPoster;
    final List<SocialringContestPoster> loadedSocialringContestPosterItem = [];
    try {
      final file = new File("assets/data/socialring_contest_poster.json");
      final extractedData = json.decode(await file.readAsString()) as Map<
          String,
          dynamic>;

      extractedData['items'].forEach((socialringContestPosterItemData) {
        loadedSocialringContestPosterItem.add(SocialringContestPoster.fromJson(socialringContestPosterItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 3000));
      return socialringContestPoster = loadedSocialringContestPosterItem;
    }
  }

  //fetchAndSetSocialringContestPosterItems() : SocialringContestPoster 데이터가 들어있는 json 파일을 디코딩하여 List<SocialringContestPoster> 멤버에 저장한다.
  test(
      'make sure fetchAndSetSocialringContestPosterItems function set valid List<ChallengeSummary> ',()  async {
    List<SocialringContestPoster> providerSocialringContestPosterList = await fetchAndSetSocialringContestPosterItems();
    for(int i = 0; i < socialringContestPosterList.length; i++){
      expect(providerSocialringContestPosterList[i].image, socialringContestPosterList[i].image);
      expect(providerSocialringContestPosterList[i].title, socialringContestPosterList[i].title);
    }
  }
  );
  
  
}