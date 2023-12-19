import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:Clone_Munto/model/meeting/recommend/challenge_summary.dart';

void main(){
  final List<ChallengeSummary>  challengeList = [
    ChallengeSummary(
        image: "https://cdn.emetro.co.kr/data2/content/image/2020/01/23/0540/20200123000058.jpg",
        like: false,
        tag: "스터디",
        title: "당신은 기필코 합격할 것입니다",
        date: "12.3(일)",
        duration: " 4주 간",
        time: 3,
        participants: 1,
        total: 5
    ),
    ChallengeSummary(
        image: "https://health.chosun.com/site/data/img_dir/2020/12/18/2020121801715_0.jpg",
        like: false,
        tag: "헬스",
        title: "운동량 정해서 같이 운동할 메이트 구해요 충정로역 근처에서 매일하는데 같이하실분",
        date: "12.3(일)",
        duration: " 2주 간",
        time: 3,
        participants: 1,
        total: 5
    ),
    ChallengeSummary(
        image: "https://i.namu.wiki/i/kF4DbOVxjeMVm1A7GeQKsIhgaCM6VPXSwDbsryEwglLglapp4-QxwmguseIWNTZY3ztUhmi0mS989FjoEsVAkQ.webp",
        like: false,
        tag: "독서",
        title: "독서할까?",
        date: "12.3(일)",
        duration: " 2주 간",
        time: 1,
        participants: 1,
        total: 4
    ),
  ];
  
  Future<List<ChallengeSummary>> fetchAndSetChallengeItems() async{
    final List<ChallengeSummary> challenge;
    final List<ChallengeSummary> loadedChallengeItem = [];
    try {
      final file = new File("assets/data/challenge.json");
      final extractedData = json.decode(await file.readAsString()) as Map<
          String,
          dynamic>;

      extractedData['items'].forEach((challengeItemData) {
        loadedChallengeItem.add(ChallengeSummary.fromJson(challengeItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 800));
      return challenge = loadedChallengeItem;
    }
  }

  bool changeLike (ChallengeSummary challenge){
    if (challenge.like)
      challenge.like = false;
    else
      challenge.like = true;

    return challenge.like;
  }

  //fetchAndSetChallengeItems() : ChallengeSummary 데이터가 들어있는 json 파일을 디코딩하여 List<ChallengeSummary> 멤버에 저장한다.
  test(
      'make sure fetchAndSetChallengeItems function set valid List<ChallengeSummary> ',()  async {
    List<ChallengeSummary> providerChallengeList = await fetchAndSetChallengeItems();
    for(int i = 0; i < challengeList.length; i++){
      expect(providerChallengeList[i].image, challengeList[i].image);
      expect(providerChallengeList[i].like, challengeList[i].like);
      expect(providerChallengeList[i].tag, challengeList[i].tag);
      expect(providerChallengeList[i].title, challengeList[i].title);
      expect(providerChallengeList[i].date, challengeList[i].date);
      expect(providerChallengeList[i].duration, challengeList[i].duration);
      expect(providerChallengeList[i].time, challengeList[i].time);
      expect(providerChallengeList[i].participants, challengeList[i].participants);
      expect(providerChallengeList[i].total, challengeList[i].total);
    }
  }
  );

  //changeLike() : ChallengeSummary 객체를 입력받아서 like에는 현재 bool값을 반전시켜 저장한다
  test('make sure changeLike function change ChallengeSummary like member succesfully ', () {
    bool result = changeLike(challengeList[0]);
    expect(result, true);
  });
}