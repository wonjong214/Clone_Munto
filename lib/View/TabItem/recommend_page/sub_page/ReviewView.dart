import 'package:flutter/material.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/Review.dart';
import 'package:provider/provider.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';


class ReviewView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Review_Provider>(context);
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double margin = 50;
    double img_width = (width - margin) / 2;

    return Container(
        margin: EdgeInsets.only(left: 20, right: 20,bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
            '함께한 멤버들의 후기',
            style: TextStyle(
                fontSize: 22
            ),
          ),
          SizedBox(height: 8),
          Container(
              height: (img_width + 40)*2 + 10,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for(int num =0;num<3;num+=2)
                      Row(
                        children: [
                          SizedBox(
                            width: img_width,
                            height: img_width + 40,
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
                                Text(
                                  provider.review[num].title,
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
                              height: img_width + 40,
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
                                  Text(
                                    provider.review[num + 1].title,
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
          SizedBox(
              width: double.infinity,
              child:ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white60),
                    foregroundColor: MaterialStateProperty.all(Colors.black),),
                  child: Text('더보기 >'))
          )
        ],
      )
    );
  }
}