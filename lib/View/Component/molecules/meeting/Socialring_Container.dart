import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/KeyWordTag_Container.dart';

import '../../atoms/CommonGreyIcon_Icon.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';

class Socialring_Container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white60),
        child: Row(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/recommend_page/Exhibitions/airpot.jpeg'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(5)),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: IconButton(
                    icon: (Icon(Icons.favorite)),
                    color: Colors.white,
                    onPressed: () {}),
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
                        KeyWordTag_Container(text:'게임',),
                        //else
                        KeyWordTag_Container(text: '추천', backcolor: Color(0XbbFFC0CB), textcolor: Color(0XffDC143C),),
                      ],
                    ),
                    CommonMeetingTitle_Text('제목'),
                    Row(
                      children: [
                        Text('소셜링·'),
                        CommonGreyIcon(Icons.location_on),
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
                        CommonGreyIcon(Icons.people),
                        Text('00/total'),
                      ],
                    )
                  ],
                )),
          ],
        ));
  }
}
