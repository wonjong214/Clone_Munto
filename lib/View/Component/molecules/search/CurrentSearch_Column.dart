import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/SearchGroupTitle_Text.dart';

import '../../../../Constants/colors.dart';
import '../../atoms/CircleIcon_Icon.dart';

class CurrentSearch_Column extends StatelessWidget {
  List<String> currentsearch = [
    '등산',
    '영화',
    '캠핑',
    '보드게임',
    '사진',
    '여행',
    '전시',
    '영어',
    '페스티벌',
    '클라이밍',
    '독서'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15, right: 20),
            child: Row(
              children: [
                SearchGroupTitle_Text(text: '최근 검색'),
                Spacer(),
                Text(
                  '지우기',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              SizedBox(
                width: 15,
              ),
              for (int i = 0; i < currentsearch.length; i++)
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: tag_color),
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      Text(
                        currentsearch[i],
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleIcon(
                        width: 17,
                        height: 17,
                        icon: Icon(
                          Icons.clear,
                          size: 17,
                          color: Colors.white,
                        ),
                        backgroundcolor: Colors.grey,
                      )
                    ],
                  ),
                ),

            ]),
          ),
        ],
      ),
    );
  }
}
