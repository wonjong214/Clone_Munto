import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/Margin_SizedBox.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/ClubNewsProvider_ViewModel.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/More_Button.dart';



class ClubIssue extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var clubnews_provider = Provider.of<ClubNews_Provider>(context);
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
                                            image: AssetImage(clubnews_provider.clubnews[num].image),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                icon: clubnews_provider.clubnews[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                color: Colors.white,
                                                onPressed: () {clubnews_provider.changelike(clubnews_provider.clubnews[num]);}
                                            ),
                                            Text(
                                              '${clubnews_provider.clubnews[num].likenum}',
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
                                        size: 15,
                                      ),
                                      Expanded(
                                        child: Text(
                                          clubnews_provider.clubnews[num].clubexplantation,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                            color: Color(0XFF006400)
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text(
                                    clubnews_provider.clubnews[num].title,
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
                                              image: AssetImage(clubnews_provider.clubnews[num + 1].image),
                                              fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: clubnews_provider.clubnews[num + 1].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                  color: Colors.white,
                                                  onPressed: () {clubnews_provider.changelike(clubnews_provider.clubnews[num + 1]);}
                                              ),
                                              Text(
                                                '${clubnews_provider.clubnews[num + 1].likenum}',
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
                                          size: 15,
                                        ),
                                        Expanded(
                                          child: Text(
                                            clubnews_provider.clubnews[num + 1].clubexplantation,
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                                color: Color(0XFF006400)
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(
                                      clubnews_provider.clubnews[num + 1].title,
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
            morebutton_margin,
            More_Button(double.infinity)
          ],
        )
    );
  }
}