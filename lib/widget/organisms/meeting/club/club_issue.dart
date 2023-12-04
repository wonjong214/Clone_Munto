import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../../constants/fontsize.dart';
import '../../../../model/meeting/recommend/club_news.dart';
import '../../../../providers/club_news_provider.dart';
import '../../../../providers/resolution_provider.dart';
import '../../../atoms/common_text.dart';
import '../../../atoms/margin_sizedbox.dart';
import '../../../atoms/more_button.dart';
import '../../../molecules/circularprogress_container.dart';



class ClubIssue extends StatefulWidget{
  List<ClubNews>? clubNews;
  Function clubNewsChangeLike;
  bool isClubNewsLoading;
  double width;
  
  ClubIssue({required this.clubNews, required this.clubNewsChangeLike, required this.isClubNewsLoading, required this.width});
  
  @override
  State<ClubIssue> createState() => _ClubIssueState();
}

class _ClubIssueState extends State<ClubIssue> {
  @override
  Widget build(BuildContext context) {
    double margin = 50;
    double imgWidth = (widget.width - margin) / 2;

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
            widget.isClubNewsLoading ?
            CircularprogressContainer(
              width: double.infinity,
              height: (imgWidth + 60)*2 + 10,
              backColor: Colors.white60,
              circular: 5,
            ) :
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
                                            image: AssetImage(widget.clubNews![num].image),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                icon: widget.clubNews![num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                color: Colors.white,
                                                onPressed: () {widget.clubNewsChangeLike(widget.clubNews![num]);}
                                            ),
                                            Text(
                                              '${widget.clubNews![num].likeNum}',
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
                                          widget.clubNews![num].clubExplantation,
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
                                    widget.clubNews![num].title,
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
                                              image: AssetImage(widget.clubNews![num + 1].image),
                                              fit: BoxFit.cover
                                          ),
                                          borderRadius: BorderRadius.circular(5)
                                      ),
                                      child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Row(
                                            children: [
                                              IconButton(
                                                  icon: widget.clubNews![num + 1].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                                                  color: Colors.white,
                                                  onPressed: () {widget.clubNewsChangeLike(widget.clubNews![num + 1]);}
                                              ),
                                              Text(
                                                '${widget.clubNews![num + 1].likeNum}',
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
                                            widget.clubNews![num + 1].clubExplantation,
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
                                      widget.clubNews![num + 1].title,
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