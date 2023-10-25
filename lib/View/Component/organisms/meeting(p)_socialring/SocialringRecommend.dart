import 'package:flutter/material.dart';
import '../../atoms/More_Button.dart';



class SocialringRecommend extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '추천 소셜링',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 10),
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
                                      image: AssetImage('assets/images/recommend_page/Exhibitions/airpot.jpeg'),
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
                                        /*for(int i=0; i< provider.tastesocialring[num].tag.length;i++)
                                        if(provider.tastesocialring[num].tag[i] != '추천')*/
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Color(0XffDCDCDC)
                                          ),
                                          padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                          child: Text('게임'),
                                        ),
                                        //else
                                        Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(30),
                                              color: Color(0XbbFFC0CB)
                                          ),
                                          padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                          child: Text('추천', style: TextStyle(color: Color(0XffDC143C))),
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
                                        Text('소셜·'),
                                        Icon(Icons.location_on),
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                            '위치·날짜',
                                            style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            maxLines: 1,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.people),
                                        Text('00/total'),
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
          More_Button(double.infinity)
        ],
      )
    );
  }
}