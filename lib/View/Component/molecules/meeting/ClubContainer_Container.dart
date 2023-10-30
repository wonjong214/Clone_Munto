import 'package:flutter/material.dart';

import '../../atoms/CommonGreyIcon_Icon.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';
import '../../atoms/KeyWordTag_Container.dart';

class ClubContainer extends StatelessWidget{
  double? _width;

  ClubContainer(this._width);

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
                            KeyWordTag_Container('클럽')
                          ],
                        ),
                        CommonMeetingTitle_Text('제목'),
                        Row(
                          children: [
                            Text('클럽·',
                              style: TextStyle(
                                  color: Color(0XFF696969)
                              ),),
                            CommonGreyIcon(Icons.location_on),
                            SizedBox(width: 5,),
                            SizedBox(
                                child: Text(
                                  '위치',
                                  style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  maxLines: 1,
                                )
                            ),
                            SizedBox(width: 5,),
                            Icon(
                              Icons.chat_outlined,
                              color: Color(0XFF006400),
                              size: 15,
                            ),
                            SizedBox(width: 5,),
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
                            CommonGreyIcon(Icons.people),
                            Text('00/300'),
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