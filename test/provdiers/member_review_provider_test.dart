import 'dart:convert';
import 'dart:io';
import 'package:flutter_test/flutter_test.dart';
import 'package:loginscreen/model/meeting/recommend/member_review.dart';

void main(){
  List<MemberReview> memberReviewList = [
    MemberReview(
        image: "assets/images/recommend_page/Review/board.jpeg",
        title: "호스트님께서 친절하게 보딩을 알려주셔서 재밌게 탈 수 있었습니다. 감사합니다",
        like: false,
        likeNum: 4
    ),
    MemberReview(
        image: "assets/images/recommend_page/Review/burger.jpeg",
        title: "맛있는 음식과 함께 재밌는 시간을 보낼 수 있어서 좋았어요",
        like: false,
        likeNum: 2
    ),
  ];

  Future<List<MemberReview>> fetchAndSetReviewItems() async{
    final List<MemberReview> memberReview;
    final List<MemberReview> loadedMemberReviewItem = [];
    try {
      final file = new File("assets/data/review.json");
      final extractedData = json.decode(await file.readAsString()) as Map<String, dynamic>;

      extractedData['items'].forEach((memberReviewItemData) {
        loadedMemberReviewItem.add(MemberReview.fromJson(memberReviewItemData));
      });
    }
    catch(e){
      print(e);
    }
    finally{
      await Future.delayed(Duration(milliseconds: 1600));
      return memberReview = loadedMemberReviewItem;
    }
  }

  MemberReview changeLike (MemberReview rev){
    if (rev.like){
      rev.like = false;
      rev.likeNum == 0 ? rev.likeNum = 0 : rev.likeNum--;
    }
    else {
      rev.like = true;
      rev.likeNum++;
    }
    
    return rev;
  }

  //fetchAndSetReviewItems() : MemberReview 데이터가 들어있는 json 파일을 디코딩하여 List<MemberReview> 멤버에 저장한다.
  test(
      'make sure fetchAndSetReviewItems function set valid List<MemberReview> ',()  async {
    List<MemberReview> providerMemberReviewList = await fetchAndSetReviewItems();
    for (int i = 0; i < memberReviewList.length; i++) {
      expect(providerMemberReviewList[i].image, memberReviewList[i].image);
      expect(providerMemberReviewList[i].title, memberReviewList[i].title);
      expect(providerMemberReviewList[i].like, memberReviewList[i].like);
      expect(providerMemberReviewList[i].likeNum, memberReviewList[i].likeNum);
    }
  }
  );

  //changeLike() : MemberReview 객체를 입력받아서 like에는 현재 bool값을 반전시켜 저장하고, likeNum은 현재 bool값이 true이면 값을 1감소시키고 false이면 1 증가시킨다.
  test('make sure changeLike function change MemberReview like member and likenum member succesfully ', () {
    MemberReview result = changeLike(memberReviewList[0]);
    expect(result.like, true);
    expect(result.likeNum, 5);
  });
}