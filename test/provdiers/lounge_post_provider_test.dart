import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:loginscreen/model/meeting/lounge/lounge_post.dart';

void main(){
  List<LoungePost> loungePostList = [
    LoungePost(
        writerImage: "assets/images/recommend_page/Review/board.jpeg",
        writerName: "하얀색",
        writeDate: "11월 5일",
        pageviewImage: ["assets/images/recommend_page/Review/ski.jpeg", "assets/images/recommend_page/Review/board.jpeg"],
        meetingImage: "assets/images/recommend_page/Review/ski.jpeg",
        meetingTitle: "질릴 정도로 보드만 타는 여행",
        meetingType: "소셜링",
        meetingLocation: "강원도 평창군",
        meetingTime: "11.3(금) 오후 1:00",
        mapLocation: "휘닉스파크",
        mapDetailLocation: "강원 평창군 봉평면 태기로 174",
        bodyText: "오전 오후에 보드 신나게 타고, 지친몸을 이끌고 저녁에 바베큐까지 먹으니 완벽한 하루였습니다.",
        tag: ["스키","보드","액티비티","소셜링후기"],
        like: false,
        likeNum: 3,
        chatNum: 2, 
        chatImage: "assets/images/socialring/backpacker.jpg",
        chatName: "아몬드",
        chatBody: "날씨 추운데도 열정적이시네요. 화이팅!!"
    ),
    LoungePost(
        writerImage: "assets/images/recommend_page/TasteSocialRing/cat.jpeg",
        writerName: "이은혜",
        writeDate: "11월 8일",
        pageviewImage: ["assets/images/recommend_page/TasteSocialRing/cat.jpeg"],
        meetingImage: "assets/images/recommend_page/TasteSocialRing/cat.jpeg",
        meetingTitle: "유기묘 보호소로 귀여운 냥이들 보러가기",
        meetingType: "클럽",
        meetingLocation: "경기도 안양시",
        meetingTime: "11.5(일) 오후 2:00",
        mapLocation: "아이조아요양보호소 안양점",
        mapDetailLocation: "경기도 안양시 만안구 안양로 164 알파동 제1층 101호",
        bodyText: "유기묘 보호소를 찾아간건 처음이었는데, 유기묘들이 지내는 공간이 생각보다 쾌적해서 놀랐고, 안락사가 없다는 사실에 두번 놀랐습니다.",
        tag: ["고양이","봉사","반려동물","소셜링후기","반려묘"],
        like: false,
        likeNum: 1,
        chatNum: 1,
        chatImage: "assets/images/socialring/backpacker.jpg",
        chatName: "개냥이",
        chatBody: "일정기간이 지나면 안락사 한다는 다른 보호소의 현실에 마음 아팠는데, 안락사가 없다는 보호소 소식을 들으니까 마음이 따듯해지네요 ㅎㅎ"
    ),
  ];
  
  Future<List<LoungePost>> fetchAndSetLoungePostItems() async{
    final List<LoungePost> loungePost;
    final List<LoungePost> loadedLoungePostItem = [];
    try {
      final file = new File("assets/data/lounge_post.json");
      final extractedData = json.decode(await file.readAsString()) as Map<
          String,
          dynamic>;

      extractedData['items'].forEach((loungePostItemData) {
        loadedLoungePostItem.add(LoungePost.fromJson(loungePostItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 1500));
      return loungePost = loadedLoungePostItem;
    }
  }

  LoungePost changeLike(LoungePost loungePost){
    if (loungePost.like){
      loungePost.like = false;
      loungePost.likeNum == 0 ? loungePost.likeNum = 0 : loungePost.likeNum--;
    }
    else {
      loungePost.like = true;
      loungePost.likeNum++;
    }
    return loungePost;
  }

  //fetchAndSetLoungePostItems() : LoungePost 데이터가 들어있는 json 파일을 디코딩하여 List<LoungePost> 멤버에 저장한다.
  test(
      'make sure fetchAndSetLoungePostItems function set valid List<LoungePost> ',()  async {
    List<LoungePost> providerLoungePostList = await fetchAndSetLoungePostItems();
    for(int i = 0; i < loungePostList.length; i++){
      expect(providerLoungePostList[i].writerImage, loungePostList[i].writerImage);
      expect(providerLoungePostList[i].writerName, loungePostList[i].writerName);
      expect(providerLoungePostList[i].writeDate, loungePostList[i].writeDate);
      expect(providerLoungePostList[i].pageviewImage, loungePostList[i].pageviewImage);
      expect(providerLoungePostList[i].meetingImage, loungePostList[i].meetingImage);
      expect(providerLoungePostList[i].meetingTitle, loungePostList[i].meetingTitle);
      expect(providerLoungePostList[i].meetingType, loungePostList[i].meetingType);
      expect(providerLoungePostList[i].meetingLocation, loungePostList[i].meetingLocation);
      expect(providerLoungePostList[i].meetingTime, loungePostList[i].meetingTime);
      expect(providerLoungePostList[i].mapLocation, loungePostList[i].mapLocation);
      expect(providerLoungePostList[i].mapDetailLocation, loungePostList[i].mapDetailLocation);
      expect(providerLoungePostList[i].bodyText, loungePostList[i].bodyText);
      expect(providerLoungePostList[i].tag, loungePostList[i].tag);
      expect(providerLoungePostList[i].like, loungePostList[i].like);
      expect(providerLoungePostList[i].likeNum, loungePostList[i].likeNum);
      expect(providerLoungePostList[i].chatNum, loungePostList[i].chatNum);
      expect(providerLoungePostList[i].chatImage, loungePostList[i].chatImage);
      expect(providerLoungePostList[i].chatName, loungePostList[i].chatName);
      expect(providerLoungePostList[i].chatBody, loungePostList[i].chatBody);

    }
  }
  );

  //changeLike() : LoungePost 객체를 입력받아서 like에는 현재 bool값을 반전시켜 저장하고, likeNum은 현재 bool값이 true이면 값을 1감소시키고 false이면 1 증가시킨다.
  test('make sure changeLike function change LoungePost like member and likeNum member succesfully ', () {
    LoungePost result = changeLike(loungePostList[0]);
    expect(result.like, true);
    expect(result.likeNum, 4);

  });
}