import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../../../ViewModel/Recommend_Page/Exhibitions.dart';


class ExhibitionsView extends StatelessWidget{
  double? height;

  ExhibitionsView({this.height});

  PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 1
  );

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Exhibitions_Provider>(context);
    return Stack(
      children: [
        Container(
            height: height,
            width: double.infinity,
            margin: EdgeInsets.all(20),
            child: PageView(
              controller: controller,
              onPageChanged: (num){ provider.pagechange(num);},
              children: [
                for(int i = 0; i< provider.exhibitions.length; i++)
                GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(provider.exhibitions[i].image),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                          Text(
                              provider.exhibitions[i].title,
                              style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                          ),
                      ),
                      padding: EdgeInsets.only(bottom: 80),
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
                '${provider.currentpage}/5+',
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

/*
class pageview extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return pageviewState();
  }

}

class pageviewState extends State<pageview>{
  PageController controller = PageController(
      initialPage: 0,
      viewportFraction: 1
  );
  int currentpage = 1;

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
              onPageChanged: (num){setState(() {
                currentpage = num + 1;
              });},
              children: [
                GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/recommend_image/airpot.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                        Text(
                            '최고의 선물 AIR PODS2',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)
                        ),
                      ),
                      padding: EdgeInsets.only(bottom: 40),
                    )
                ),
                GestureDetector(
                  onTap: () {print('touch');},
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/recommend_image/jazz.jpeg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                          '이색데이트 추천 JAZZ BAR',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                    padding: EdgeInsets.only(bottom: 40),
                  ),
                ),
                GestureDetector(
                    onTap: () {print('touch');},
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/recommend_image/cd.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('좋아하는 가수 CD 들으면서 chilling',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      padding: EdgeInsets.only(bottom: 40),
                    )
                ),
                GestureDetector(
                    onTap: () {print('touch');},
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/recommend_image/coffee.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('커피 한 잔과 함께하는 일상의 여유',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      padding: EdgeInsets.only(bottom: 40),
                    )
                ),
                GestureDetector(
                    onTap: () {print('touch');},
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('images/recommend_image/nacho.jpeg'),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20)),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('페스티벌 원정대 모집',
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                      ),
                      padding: EdgeInsets.only(bottom: 40),
                    )
                ),
              ],
            )
        ),
        Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              padding: EdgeInsets.only(left: 7, right: 7, top: 4, bottom: 4),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 0, 0, 0.5),
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Text(
                '${currentpage}/5+',
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
*/
