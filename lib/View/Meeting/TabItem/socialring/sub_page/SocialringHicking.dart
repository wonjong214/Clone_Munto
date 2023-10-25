import 'package:flutter/material.dart';
import 'package:loginscreen/Component/atoms/Common_Container.dart';
import 'package:loginscreen/Component/atoms/GroupImage_Container.dart';
import 'package:loginscreen/Component/atoms/More_Button.dart';
import 'package:loginscreen/Component/atoms/SocialRingSubTitle_Text.dart';

import '../../../../../Component/atoms/CommonMeetingTitle_Text.dart';
import '../../../../../Component/atoms/KeyWordTag_Container.dart';
import '../../../../../Component/atoms/SocialRingParticipant_Text.dart';
import '../../../../../Constants/colors.dart';

class SocialringHicking extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 180,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/socialring/backpacker.jpg')
              )
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
              Text(
                '등린이부터 산신령까지\n다같이 가볍게 즐기는 등산',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 22
                ),
              ),
              SizedBox(height: 50,),
              for(int i = 0; i<3; i++)
                Column(
                  children: [
                    Common_Container(
                        Row(
                          children: [
                            GroupImage(
                                IconButton(
                                    icon: (Icon(Icons.favorite)),
                                    color: Colors.white,
                                    onPressed: () {}
                                ),
                                'assets/images/socialring/backpacker.jpg'
                            ),
                            SizedBox(
                                height: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    KeyWordTag_Container('관악산'),
                                    CommonMeetingTitle_Text('같이 관악산 국기봉 정복하러 가요'),
                                    Row(
                                      children: [
                                        Icon(Icons.location_on, size: 15, color: subtitle_color,),
                                        SizedBox(width: 5,),
                                        SizedBox(
                                            child: Row(
                                              children: [
                                                Text(
                                                  '소셜링·',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      color: subtitle_color
                                                  ),
                                                ),
                                                SocialRingSubTitle_Text('관악구', '10.28(토) 오후 4:00')
                                              ],
                                            )
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(Icons.people, color: subtitle_color, size: 15,),
                                        SizedBox(width: 5,),
                                        SocialRingParticipant(1, 8),
                                      ],
                                    )
                                  ],
                                )
                            )
                          ],
                        )
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              More_Button(double.infinity)
            ],
          ),
        )
      ],
    );
  }
}