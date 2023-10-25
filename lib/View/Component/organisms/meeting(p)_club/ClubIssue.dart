import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/More_Button.dart';



class ClubIssue extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double img_width = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '클럽 소식',
              style: TextStyle(
                  fontSize: 22
              ),
            ),
            SizedBox(height: 8),
            Container(
                height: (img_width + 60)*2 + 10,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for(int num =0;num<3;num+=2)
                        Row(
                          children: [
                            SizedBox(
                              width: img_width,
                              height: img_width + 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: img_width,
                                    height: img_width,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage('assets/images/recommend_page/Exhibitions/airpot.jpeg'),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                icon: (Icon(Icons.favorite)),
                                                color: Colors.white,
                                                onPressed: () {}
                                            ),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.stars_rounded,
                                        color: Color(0XFF006400),
                                      ),
                                      Text(
                                        '모임설명.....',
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: TextStyle(
                                          color: Color(0XFF006400)
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    '제목',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                                width: img_width,
                                height: img_width + 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: img_width,
                                      height: img_width,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage('assets/images/recommend_page/Exhibitions/airpot.jpeg'),
                                              fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: (Icon(Icons.favorite)),
                                                  color: Colors.white,
                                                  onPressed: () {}
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                    color: Colors.white
                                                ),
                                              )
                                            ],
                                          )
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.stars_rounded,
                                          color: Color(0XFF006400),
                                        ),
                                        Text(
                                          '모임설명.....',
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              color: Color(0XFF006400)
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '제목',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 2,
                                    )
                                  ],
                                )
                            ),
                          ],
                        ),
                    ]
                )
            ),
            More_Button(double.infinity)
          ],
        )
    );
  }
}