import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:loginscreen/model/meeting/recommend/selected_host.dart';

void main(){
  List<SelectedHost> selectedHostList = [
    SelectedHost(
        profileImage: "assets/images/recommend_page/Exhibitions/jazz.jpeg",
        name: "Sunny", 
        follow: false, 
        selfIntroduction: "몰입하는 시간을 좋아합니다.\n와인 한잔과 책 읽고, 글을 쓰는 걸 좋아합니다.",
        tag: ["사진", "글쓰기", "독서", "위스키", "와인", "브랜딩", "러닝"],
        image: ["assets/images/socialring/beer.jpg", "assets/images/recommend_page/Exhibitions/cd.jpeg", "assets/images/recommend_page/Exhibitions/coffee.jpeg"]
    ),
    SelectedHost(
        profileImage: "assets/images/recommend_page/Review/concert.jpeg",
        name: "스페이씨",
        follow: false,
        selfIntroduction: "특별함 보다 소소한 행복을 추구해요.",
        tag: ["영화", "볼링", "콘서트", "향수", "와인", "마케팅", "클라이밍"],
        image: ["assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg", "assets/images/recommend_page/Review/burger.jpeg", "assets/images/socialring/opera.jpg"]
    ),
  ];

  Future<List<SelectedHost>> fetchAndSelectedHostItems() async{
    final List<SelectedHost> selectedHost;
    final List<SelectedHost> loadedSelectedHostItem = [];
    try {
      final file = new File("assets/data/selected_host.json");
      final extractedData = json.decode(await file.readAsString()) as Map<
          String,
          dynamic>;

      extractedData['items'].forEach((selectedHostItemData) {
        loadedSelectedHostItem.add(SelectedHost.fromJson(selectedHostItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 2500));
      return selectedHost = loadedSelectedHostItem;
    }
  }

  bool changeFollow(SelectedHost selectedhost){
    if(selectedhost.follow == true)
      selectedhost.follow = false;
    else
      selectedhost.follow = true;
    
    return selectedhost.follow;
  }

  //fetchAndSelectedHostItems() : SelectedHost 데이터가 들어있는 json 파일을 디코딩하여 List<SelectedHost> 멤버에 저장한다.
  test(
      'make sure fetchAndSelectedHostItems function set valid List<SelectedHost> ',()  async {
    List<SelectedHost> providerSelectedHostList = await fetchAndSelectedHostItems();
    for(int i = 0; i < selectedHostList.length; i++){
      expect(providerSelectedHostList[i].profileImage, selectedHostList[i].profileImage);
      expect(providerSelectedHostList[i].name, selectedHostList[i].name);
      expect(providerSelectedHostList[i].follow, selectedHostList[i].follow);
      expect(providerSelectedHostList[i].selfIntroduction, selectedHostList[i].selfIntroduction);
      expect(providerSelectedHostList[i].tag, selectedHostList[i].tag);
      expect(providerSelectedHostList[i].image, selectedHostList[i].image);
    }
  }
  );

  //changeLike() : SelectedHost 객체를 입력받아서 like에는 현재 bool값을 반전시켜 저장한다
  test('make sure changeFollow function change SelectedHost follow member succesfully ', () {
    bool result = changeFollow(selectedHostList[0]);
    expect(result, true);
  });
  
}