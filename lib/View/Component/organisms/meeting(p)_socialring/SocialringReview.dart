import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../Constants/fontsize.dart';
import '../../../../ViewModel//ResolutionProvider.dart';
import '../../atoms/Common_Text.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';



class SocialringReview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double img_width = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Common_Text(
              text: '함께한 멤버들의 후기',
              textsize: meetingtab_grouptitle_textsize,
              fontWeight: meetingtab_grouptitle_fontweight,
            ),
            title_margin,
            Container(
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
                                  SizedBox(height: 10,),
                                  Common_Text(
                                    text: '제목',
                                    maxlines: 2,
                                    textsize: 15,
                                    height: 1.3,
                                    textalign: TextAlign.left,
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            SizedBox(
                                width: img_width,
                                height: img_width + 60,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                    SizedBox(height: 10,),
                                    Common_Text(
                                      text: '제목',
                                      maxlines: 2,
                                      textsize: 15,
                                      height: 1.3,
                                      textalign: TextAlign.left,
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
            More_Button(double.infinity)
          ],
        )
    );
  }
}