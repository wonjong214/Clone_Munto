import 'package:flutter/material.dart';

import '../../atoms/keyword_tag_container.dart';

class ChallengePageView extends StatelessWidget{
  PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 1
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: 350,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: PageView(
              controller: controller,
              onPageChanged: (num){ },
              children: [
                GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/socialring/people.jpg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                              '문토 챌린지를 소개합니다',
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                          SizedBox(height: 10,),
                          KeyWordTagContainer(
                            text: '챌린지 가이드',
                            textSize: 15,
                            fontWeight: FontWeight.w600,
                            textColor: Colors.white,
                            backColor: Colors.transparent,
                            padding: EdgeInsets.only(left: 12, right: 12, bottom: 8, top: 8),
                            border: Border.all(width: 1, color: Colors.white),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    )
                ),
              ],
            )
        ),
        Positioned(
            bottom: 30,
            right: 30,
            child: Container(
              padding: EdgeInsets.only(left: 7, right: 7, top: 4, bottom: 4),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                '1/1+',
                style: TextStyle(
                    color: Colors.white
                ),
              ),
            )

        )
      ],
    );
  }
}