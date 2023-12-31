import 'package:flutter/material.dart';


const List<String> dayList = ['월', '화', '수', '목', '금', '토', '일'];

const List<String> recommendKeyword = ['버킷리스트이벤트', '맛집', '카페', '등산', '전시', '러닝', '독서',
'사진', '여행', '스터디', '보드게임', '맥주'];

const List<String> ageLabel = ['20', '25', '30', '35', '40', '45', '50+'];

const List<String> tagList = ['등산', '영', '캠핑', '보드게임', '사진', '여행', '전시', '영어', '페스티벌'];

const List<Widget> duration = [
  Text(
      '이번 주',
    style: TextStyle(
      fontSize: 17,
    ),
  ),
  Text(
      '다음 주',
    style: TextStyle(
      fontSize: 17,
    ),
  ),
  Text(
      '직접 입력',
    style: TextStyle(
      fontSize: 17,
    ),
  ),
];

const List<String> koreaLocationList = ['서울', '경기', '인천',
  '강원', '충북', '충남', '세종', '대전', '광주', '전북', '경북',
  '대구', '제주', '전남', '경남/울산', '부산'];

const Map<String, List<String>> locationMap = {'서울' : seoulLocationList,};

const List<String> seoulLocationList = ['서울 전체', '강남', '강동', '강북', '강서', '관악', '광진', '구로',
  '금천', '노원', '도봉', '동대문', '동작', '마포', '서대문', '서초', '성동', '성북', '송파', '양천', '영등포',
'용산', '은평', '종로', '중구', '중랑', '', ''];

const List<String> qyeonggiLocationList = ['경기 전체', '수원', '성남', '고양', '용인', '부천', '안산', '안양',
'남양주', '화성', '의정부', '시흥', '평택', '광명', '파주', '군포', '광주', '김포', '이천', '양주', '구리', '오산',
'안성', '의왕', '하남', '포천', '동두천', '과천', '여주', '양평', '가평', '연천'];

const List<String> incheonLocationList = ['인천 전체', '중구', '동구', '미추홀', '연수', '남동', '부평', '계양',
'서구', '강화', '웅진'];

const List<String> gangWonLocationList = ['강원 전체', '춘천', '인제', '양구', '고성', '양양', '강릉', '속초',
'삼척', '정선', '평차', '영월', '원주', '횡성', '홍천', '화천', '철원', '동해', '태백'];

const List<String> chungbukLocationList = ['충북 전체', '청주', '충주', '제천', '보은', '옥천', '영동', '증평',
'진천', '괴산', '음성', '단양'];

const List<String> chungnamLocationList = ['충남 전체', '천안', '공주', '보령', '아산', '서산', '논산', '계룡',
'당진', '금산', '부여', '서천', '청양', '홍성', '예산', '태안'];

const List<String> sejongLocationList = ['세종 전체', '조치원', '연기', '연동', '부강', '금남', '장군', '연서',
'전의', '전동', '소정', '한솔', '새롬', '도담', '아름', '종촌', '고운', '소담', '보람', '대평', '다정', '해밀', '반곡', ''];

const List<String> daejeonLocationList = ['대전 전체', '동구', '중구', '서구', '유성', '대덕', '', ''];

const List<String> gwangjuLocationList = ['광주 전체', '동구', '서구', '남구', '북구', '광산', '', ''];

const List<String> jeonbukLocationList = ['전북 전체', '전주', '익산', '군산', '정읍', '남원', '김제', '완주',
'고창', '부안', '임실', '순창', '진안', '무주', '장수'];

const List<String> gyeongbukLocationList = ['경북 전체', '포항', '경주', '김천', '안동', '구미', '영주', '영천',
'상주', '문경', '경산', '군위', '의성', '청송', '영양', '영덕', '청도', '고령', '성주', '칠곡', '예천', '봉화', '울진',
'울릉'];

const List<String> daeguLocationList = ['대구 전체', '중구', '동구', '서구', '남구', '북구', '수성', '달서', '달성',
'', '', ''];

const List<String> jejuLocationList = ['제주 전체', '제주', '한림', '애월', '구좌', '조천', '한경', '추자', '우도',
'서귀포', '대정', '남원', '성산', '안덕', '표선', ''];

const List<String> jeonnamLocationList = ['전남 전체', '목포', '여수', '순천', '나주', '광양', '담양', '곡성',
'구례', '고흥', '보성', '화순', '장흥', '강진', '해남', '영암', '무안', '함평', '영광', '장성', '완도', '진도', '신안', ''];

const List<String> gyeongulLocationList = ['경남 전체', '울산 전체', '울산 중구', '울산 남구', '울산 동구', '울산 북구',
'울산 울주군', '창원', '김해', '양산', '진주', '거제', '통영', '사천', '밀양', '함안', '거창', '창녕', '고성', '하동',
'합천', '남해', '함양', '산청', '의령', '', '', ''];

const List<String> busanLocationList = ['부산 전체', '중구', '서구', '동구', '영도', '부산진구', '동래', '남구',
'북구', '강서', '해운대', '사하', '금정', '연제', '수영', '사상', '기장', '', '', ''];
