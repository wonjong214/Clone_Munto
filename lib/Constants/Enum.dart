import 'package:flutter/material.dart';

enum LoungeAlign {
  current("최신"),
  popular("인기"),
  meetingreview("모임 후기"),
  editortype("취향에디터");

  final String korean;
  const LoungeAlign(this.korean);
}

enum Quota {
  three("3~10명"),
  eleven("11~30명"),
  thirtyone("31~60명");

  final String korean;
  const Quota(this.korean);
}

enum ExhibitionsKeyword {
  fall("가을기획전", AssetImage('assets/icons/transport.png')),
  friends("프렌즈기획전", AssetImage('assets/icons/high-five.png')),
  godlife("갓생기획전", AssetImage('assets/icons/give-love.png')),
  weekend("주말에 뭐하지?", AssetImage('assets/icons/smiling-face.png')),
  blinddate("소개팅 기획전", AssetImage('assets/icons/heart.png'));


  final String korean;
  final AssetImage image;
  const ExhibitionsKeyword(this.korean, this.image);
}

enum Tag {
  culture("등산", AssetImage('assets/images/socialring/backpacker.jpg')),
  activity("영화", AssetImage('assets/images/recommend_page/Exhibitions/jazz.jpeg')),
  food("캠핑", AssetImage('assets/images/recommend_page/Review/ski.jpeg')),
  hoby("보드게임", AssetImage('assets/images/recommend_page/Exhibitions/cd.jpeg')),
  party("사진", AssetImage('assets/images/recommend_page/TasteSocialRing/cat.jpeg')),
  travel("여행", AssetImage('assets/images/recommend_page/TasteSocialRing/island.jpeg')),
  study("전시", AssetImage('assets/images/recommend_page/Exhibitions/coffee.jpeg')),
  friend("영어", AssetImage('assets/images/recommend_page/TasteSocialRing/cherryblossoms.jpeg')),
  investment("페스티벌", AssetImage('assets/images/recommend_page/Exhibitions/nacho.jpeg'));

  final String korean;
  final AssetImage image;
  const Tag(this.korean, this.image);
}

enum Category {
  culture("문화·예술", Icons.format_paint_outlined),
  activity("액티비티", Icons.sports_baseball),
  food("푸드·드링크", Icons.fastfood),
  hoby("취미", Icons.star),
  party("파티·소개팅", Icons.wine_bar),
  travel("여행·동행", Icons.airplane_ticket),
  study("자기계발", Icons.menu_book_outlined),
  friend("동네·친목", Icons.chat),
  investment("재테크", Icons.wallet),
  language("외국어", Icons.sort_by_alpha);


  final String korean;
  final IconData icon;
  const Category(this.korean, this.icon);
}

enum Type {
  normal("일반 소셜링"),
  club("클럽 소셜링");

  final String korean;
  const Type(this.korean);
}

enum Day {
  mon("월"),
  tue("화"),
  wed("수"),
  thu("목"),
  fri("금"),
  sat("토"),
  sun("일");

  final String korean;
  const Day(this.korean);
}

enum KoreaLocation{
  seoul('서울'),
  qyeonggi('경기'),
  incheon('인천'),
  gangwon('강원'),
  chungbuk('충북'),
  chungnam('충남'),
  sejong('세종'),
  daejeon('대전'),
  gwangju('광주'),
  jeonbuk('전북'),
  qyeongbuk('경북'),
  daegu('대구'),
  jeju('제주'),
  jeonnam('전남'),
  qyeongul('경남/울산'),
  busan('부산');

  final String korean;
  const KoreaLocation(this.korean);
}
