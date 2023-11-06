import 'package:flutter/material.dart';

enum Quota {
  three("3~10명"),
  eleven("11~30명"),
  thirtyone("31~60명");

  final String korean;
  const Quota(this.korean);
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
