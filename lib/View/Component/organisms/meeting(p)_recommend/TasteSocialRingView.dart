import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/TasteSocialRing.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';
import '../../atoms/GroupSubTitle_Text.dart';
import '../../atoms/GroupTitle_Text.dart';
import '../../atoms/KeyWordTag_Container.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../atoms/RecommendTag_Container.dart';
import '../../atoms/SocialRingParticipant_Text.dart';
import '../../atoms/SocialRingSubTitle_Text.dart';
import '../../molecules/meeting/ClubContainer_Container.dart';


class TasteSocialRingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<TasteSocialRing_Provider>(context);
    return Container(
      margin: EdgeInsets.only(left:20,),
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
                    GroupTitle_Text('취향 저격 소셜링'),
                    title_margin,
                    GroupSubTitle_Text('내 취향에 딱 맞는 원데이 모임'),
                    title_margin,
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
                                                    KeyWordTag_Container(provider.tastesocialring[num].tag[i])
                                                  else
                                                    RecommendTag_Container(provider.tastesocialring[num].tag[i])
                                              ],
                                            ),
                                            CommonMeetingTitle_Text(provider.tastesocialring[num].title),
                                            Row(
                                              children: [
                                                CommonGreyIcon(Icons.location_on),
                                                SizedBox(width: 5,),
                                                SizedBox(
                                                  width: 200,
                                                  child: SocialRingSubTitle_Text(provider.tastesocialring[num].location,provider.tastesocialring[num].date),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                CommonGreyIcon(Icons.people),
                                                SizedBox(width: 5,),
                                                SocialRingParticipant(provider.tastesocialring[num].participants, provider.tastesocialring[num].total),
                                              ],
                                            )
                                          ],
                                        )
                                      ),
                                    ],
                                  )
                              )
                          ),
                          morebutton_margin
                        ],
                      ),
                    More_Button(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GroupTitle_Text('취향 저격 클럽'),
                    title_margin,
                    GroupSubTitle_Text('지속형 모임으로 오래오래 친하게'),
                    title_margin,
                    for(int num=0; num<3; num++)
                      Column(
                        children: [
                          ClubContainer(350),
                          morebutton_margin
                        ],
                      ),
                    More_Button(350)
                  ],
                ),
              ),
              Container(
                width: 370,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GroupTitle_Text('취향 저격 챌린지'),
                    title_margin,
                    GroupSubTitle_Text('같은 목표를 위해 함께 하는 도전'),
                    title_margin,
                    for(int num=0; num<3; num++)
                      Column(
                        children: [
                          ChallengeContainer(350),
                          morebutton_margin
                        ],
                      ),
                    More_Button(350)
                  ],
                ),
              ),
            ],
          )
      ),
    );
  }
}