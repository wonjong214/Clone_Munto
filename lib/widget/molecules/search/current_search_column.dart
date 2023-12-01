import 'package:flutter/material.dart';
import 'package:loginscreen/constants/fontsize.dart';
import '../../../../constants/colors.dart';
import '../../atoms/circle_icon.dart';
import '../../atoms/common_text.dart';

class CurrentSearchColumn extends StatefulWidget {
  @override
  State<CurrentSearchColumn> createState() => _CurrentSearchColumnState();
}

class _CurrentSearchColumnState extends State<CurrentSearchColumn> {
  List<String> currentSearch = [
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
                CommonText(
                  text: '최근 검색',
                  textSize: searchGroupTitleTextSize,
                  fontWeight: searchGroupTitleFontWeight,
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      currentSearch.clear();
                    });
                  },
                  child: Text(
                    '지우기',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
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
              for (int i = 0; i < currentSearch.length; i++)
                Container(
                  margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: tagColor),
                  padding:
                      EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.of(context, rootNavigator: true).pushNamed(
                            '/SearchKeyword_page',
                            arguments: currentSearch[i],
                          );
                          },
                        child: Text(
                          currentSearch[i],
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            currentSearch.removeAt(i);
                          });
                        },
                        child: CircleIcon(
                          width: 17,
                          height: 17,
                          icon: Icon(
                            Icons.clear,
                            size: 17,
                            color: Colors.white,
                          ),
                          backgroundColor: Colors.grey,
                        ),
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
