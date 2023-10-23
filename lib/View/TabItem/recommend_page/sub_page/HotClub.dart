import 'package:flutter/material.dart';
import 'package:loginscreen/Common/MoreButton.dart';
import 'package:loginscreen/Constants/colors.dart';

class HotClub extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '지금 핫한 클럽',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 8),
          Text(
            '지금 멤버들이 몰리고 있는',
            style: TextStyle(color: subtitle_color),

          ),
          SizedBox(height: 8),
          for(int num=0; num<3; num++)
            Column(
              children: [
                GestureDetector(
                    onTap: () {print('touch');},
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white60
                        ),
                        child:Row(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage('images/recommend_page/Exhibitions/airpot.jpeg'),
                                      fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Align(
                                alignment: Alignment.bottomLeft,
                                child: IconButton(
                                    icon: (Icon(Icons.favorite)),
                                    color: Colors.white,
                                    onPressed: () {}
                                ),
                              ),
                            ),
                            SizedBox(
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: tag_color
                                          ),
                                          padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                          child: Text('클럽'),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '제목',
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text('클럽·',
                                          style: TextStyle(
                                              color: Color(0XFF696969)
                                          ),),
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0XFF696969),
                                          size: 15,
                                        ),
                                        SizedBox(
                                            child: Text(
                                              '위치',
                                              style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              maxLines: 1,
                                            )
                                        ),
                                        Icon(
                                          Icons.chat_outlined,
                                          color: Color(0XFF006400),
                                          size: 15,
                                        ),
                                        Text(
                                          '3시간 전 대화',
                                          style: TextStyle(
                                              color: Color(0XFF006400)
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.people),
                                        Text('00/300'),
                                      ],
                                    )
                                  ],
                                )
                            ),
                          ],
                        )
                    )
                ),
                SizedBox(height: 10),
              ],
            ),
          MoreButton(double.infinity)
        ],
      )
    );
  }
}