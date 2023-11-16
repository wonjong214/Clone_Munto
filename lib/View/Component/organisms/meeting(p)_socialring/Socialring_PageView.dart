import 'package:flutter/material.dart';

class Socialring_PageView extends StatelessWidget{
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
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: PageView(
              controller: controller,
              onPageChanged: (num){ },
              children: [
                GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/recommend_page/Exhibitions/airpot.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                        Text(
                            '제목',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 40),
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