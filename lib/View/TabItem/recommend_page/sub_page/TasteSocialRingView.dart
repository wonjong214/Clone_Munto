import 'package:flutter/material.dart';
import 'package:loginscreen/Common/MoreButton.dart';
import 'package:provider/provider.dart';
import '../../../../ViewModel/Recommend_Page/TasteSocialRing.dart';

class TasteSocialRingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<TasteSocialRing_Provider>(context);

    return Container(
      margin: EdgeInsets.only(left:20, bottom: 20),
      width: double.infinity,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            children: [
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '취향 저격 소셜링',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        '내 취향에 딱 맞는 원데이 모임'
                    ),
                    SizedBox(height: 10),
                    for(int num=0; num<provider.tastesocialring.length; num++)
                      Column(
                        children: [
                          GestureDetector(
                              onTap: () {print('touch');},
                              child: Container(
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white60
                                  ),
                                  child:Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(provider.tastesocialring[num].image),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: IconButton(
                                              icon: (provider.tastesocialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                              color: Colors.white,
                                              onPressed: () {provider.changelike(provider.tastesocialring[num]);}
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                for(int i=0; i< provider.tastesocialring[num].tag.length;i++)
                                                  if(provider.tastesocialring[num].tag[i] != '추천')
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          color: Color(0XffDCDCDC)
                                                      ),
                                                      padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                                      child: Text(provider.tastesocialring[num].tag[i]),
                                                    )
                                                  else
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          color: Color(0XbbFFC0CB)
                                                      ),
                                                      padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                                      child: Text(provider.tastesocialring[num].tag[i], style: TextStyle(color: Color(0XffDC143C))),
                                                    )
                                              ],
                                            ),
                                            Text(
                                              provider.tastesocialring[num].title,
                                              style: TextStyle(
                                                  overflow: TextOverflow.ellipsis
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on),
                                                SizedBox(
                                                  width: 200,
                                                  child: Text(
                                                    '${provider.tasteclub[num].location} ${provider.tasteclub[num].date}',
                                                    style: TextStyle(
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.people),
                                                Text('${provider.tastesocialring[num].participants}/${provider.tastesocialring[num].total}'),
                                              ],
                                            )
                                          ],
                                        )
                                      ),
                                    ],
                                  )
                              )
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    MoreButton(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '취향 저격 클럽',
                      style: TextStyle(
                          fontSize: 22
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                        '지속형 모임으로 오래오래 친하게'
                    ),
                    SizedBox(height: 10),
                    for(int num=0; num<provider.tasteclub.length; num++)
                      Column(
                        children: [
                          GestureDetector(
                              onTap: () {print('touch');},
                              child: Container(
                                  width: 350,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.white60
                                  ),
                                  child:Row(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(10),
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(provider.tasteclub[num].image),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: IconButton(
                                              icon: (provider.tasteclub[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                              color: Colors.white,
                                              onPressed: () {provider.changelike(provider.tasteclub[num]);}
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 100,
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                for(int i=0; i< provider.tasteclub[num].tag.length;i++)
                                                  if(provider.tasteclub[num].tag[i] != '추천')
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          color: Color(0XffDCDCDC)
                                                      ),
                                                      padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                                      child: Text(provider.tasteclub[num].tag[i]),
                                                    )
                                                  else
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius: BorderRadius.circular(30),
                                                          color: Color(0XbbFFC0CB)
                                                      ),
                                                      padding: EdgeInsets.only(left:3, right:3, top: 1, bottom: 1),
                                                      child: Text(provider.tasteclub[num].tag[i], style: TextStyle(color: Color(0XffDC143C))),
                                                    )
                                              ],
                                            ),
                                            Text(
                                              provider.tasteclub[num].title,
                                              style: TextStyle(
                                                  overflow: TextOverflow.ellipsis
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.location_on),
                                                SizedBox(
                                                  width: 200,
                                                  child: Text(
                                                    '${provider.tasteclub[num].location} ${provider.tasteclub[num].date}',
                                                    style: TextStyle(
                                                      overflow: TextOverflow.ellipsis,
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                Icon(Icons.people),
                                                Text('${provider.tasteclub[num].participants}/${provider.tasteclub[num].total}'),
                                              ],
                                            )
                                          ],
                                        )
                                      )
                                    ],
                                  )
                              )
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    SizedBox(
                        width: 350,
                        child:ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white60),
                              foregroundColor: MaterialStateProperty.all(Colors.black),),
                            child: Text('더보기 >'))
                    )
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}