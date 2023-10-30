import 'package:flutter/material.dart';

import '../../../../Constants/colors.dart';
import '../../atoms/CommonGreyIcon_Icon.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';

class ChallengeContainer extends StatelessWidget{
  double? _width;

  ChallengeContainer(this._width);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {print('touch');},
        child: Container(
            width: _width,
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
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Color(0XffDCDCDC)
                              ),
                              padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                              child: Text('챌린지'),
                            )
                          ],
                        ),
                        CommonMeetingTitle_Text('제목'),
                        Row(
                          children: [
                            Text('챌린지·',
                              style: TextStyle(
                                color: subtitle_color,
                              ),),
                            CommonGreyIcon(Icons.calendar_month),
                            SizedBox(
                                child: Text(
                                  '10월 22(일)· 2주 간',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                )
                            ),
                            CommonGreyIcon(Icons.check_circle),
                            Text(
                              '주 3회',
                              style: TextStyle(
                                  color: subtitle_color
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            CommonGreyIcon(Icons.people),
                            Text('00/99'),
                          ],
                        )
                      ],
                    )
                ),
              ],
            )
        )
    );
  }
}