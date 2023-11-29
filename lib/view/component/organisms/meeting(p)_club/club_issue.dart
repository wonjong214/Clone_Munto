import 'package:flutter/material.dart';
import 'package:loginscreen/view/component/atoms/margin_sizedbox.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/Recommend_Page/club_news_provider_view_model.dart';
import '../../../../view_model/resolution_provider.dart';
import '../../atoms/common_text.dart';
import '../../atoms/more_button.dart';



class ClubIssue extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var clubnewsProvider = Provider.of<ClubNewsProvider>(context);
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double imgWidth = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '클럽 소식',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            SizedBox(height: 8),
            Container(
                height: (imgWidth + 60)*2 + 10,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for(int num =0;num<3;num+=2)
                        Row(
                          children: [
                            SizedBox(
                              width: imgWidth,
                              height: imgWidth + 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    width: imgWidth,
                                    height: imgWidth,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(clubnewsProvider.clubnews[num].image),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                icon: clubnewsProvider.clubnews[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                color: Colors.white,
                                                onPressed: () {clubnewsProvider.changelike(clubnewsProvider.clubnews[num]);}
                                            ),
                                            Text(
                                              '${clubnewsProvider.clubnews[num].likeNum}',
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
                                          clubnewsProvider.clubnews[num].clubExplantation,
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
                                    clubnewsProvider.clubnews[num].title,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    textAlign: TextAlign.left,
                                  )
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                                width: imgWidth,
                                height: imgWidth + 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: imgWidth,
                                      height: imgWidth,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(clubnewsProvider.clubnews[num + 1].image),
                                              fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: clubnewsProvider.clubnews[num + 1].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                  color: Colors.white,
                                                  onPressed: () {clubnewsProvider.changelike(clubnewsProvider.clubnews[num + 1]);}
                                              ),
                                              Text(
                                                '${clubnewsProvider.clubnews[num + 1].likeNum}',
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
                                            clubnewsProvider.clubnews[num + 1].clubExplantation,
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
                                      clubnewsProvider.clubnews[num + 1].title,
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
            moreButtonMargin,
            MoreButton(double.infinity)
          ],
        )
    );
  }
}