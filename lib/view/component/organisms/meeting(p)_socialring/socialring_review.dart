import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../constants/fontsize.dart';
import '../../../../view_model/resolution_provider.dart';
import '../../atoms/common_text.dart';
import '../../atoms/margin_sizedbox.dart';
import '../../atoms/more_button.dart';



class SocialringReview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double imgWiidth = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText(
              text: '함께한 멤버들의 후기',
              textSize: meetingTabGroupTitleTextSize,
              fontWeight: meetingTabGroupTitleFontWeight,
            ),
            titleMargin,
            Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for(int num =0;num<3;num+=2)
                        Row(
                          children: [
                            SizedBox(
                              width: imgWiidth,
                              height: imgWiidth + 60,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: imgWiidth,
                                    height: imgWiidth,
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
                                  SizedBox(height: 10,),
                                  CommonText(
                                    text: '제목',
                                    maxLines: 2,
                                    textSize: 15,
                                    height: 1.3,
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                                width: imgWiidth,
                                height: imgWiidth + 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: imgWiidth,
                                      height: imgWiidth,
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
                                    SizedBox(height: 10,),
                                    CommonText(
                                      text: '제목',
                                      maxLines: 2,
                                      textSize: 15,
                                      height: 1.3,
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(height: 10,),
                                  ],
                                )
                            ),
                          ],
                        ),
                    ]
                )
            ),
            MoreButton(double.infinity)
          ],
        )
    );
  }
}