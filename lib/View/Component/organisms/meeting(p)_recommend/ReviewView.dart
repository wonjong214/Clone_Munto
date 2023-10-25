import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Review.dart';
import 'package:provider/provider.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';

import '../../atoms/GroupTitle_Text.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/MemberReview_Text.dart';
import '../../atoms/More_Button.dart';


class ReviewView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Review_Provider>(context);
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double img_width = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GroupTitle_Text('함께한 멤버들의 후기'),
            title_margin,
            Container(
              child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                          image: AssetImage(provider.review[num].image),
                                          fit: BoxFit.cover
                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Row(
                                        children: [
                                          IconButton(
                                              icon: (provider.review[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                              color: Colors.white,
                                              onPressed: () {provider.changelike(provider.review[num]);}
                                          ),
                                          Text(
                                            '${provider.review[num].likenum}',
                                            style: TextStyle(
                                                color: Colors.white
                                            ),
                                          )
                                        ],
                                      )
                                  ),
                                ),
                                SizedBox(height: 10,),
                                MemberReview_Text(provider.review[num].title),
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
                                            image: AssetImage(provider.review[num + 1].image),
                                            fit: BoxFit.cover
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Row(
                                          children: [
                                            IconButton(
                                                icon: (provider.review[num + 1].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                                color: Colors.white,
                                                onPressed: () {provider.changelike(provider.review[num + 1]);}
                                            ),
                                            Text(
                                              '${provider.review[num + 1].likenum}',
                                              style: TextStyle(
                                                  color: Colors.white
                                              ),
                                            )
                                          ],
                                        )
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  MemberReview_Text(provider.review[num + 1].title),
                                  SizedBox(height: 10),
                                ],
                              )
                          ),
                        ],
                      ),
                  ]
              )
          ),
          SizedBox(height: 10,),
          More_Button(double.infinity)
        ],
      )
    );
  }
}