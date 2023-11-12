import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonGreyIcon_Icon.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ChallengeContainer_Container.dart';
import 'package:provider/provider.dart';
import '../../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../atoms/CommonMeetingTitle_Text.dart';
import '../../atoms/GroupSubTitle_Text.dart';
import '../../atoms/GroupTitle_Text.dart';
import '../../atoms/KeyWordTag_Container.dart';
import '../../atoms/Margin_SizedBox.dart';
import '../../atoms/More_Button.dart';
import '../../atoms/SocialRingParticipant_Text.dart';
import '../../atoms/SocialRingSubTitle_Text.dart';
import '../../molecules/meeting/ClubContainer_Container.dart';


class TasteSocialRingView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Meeting_Provider>(context);
    return Container(
      margin: EdgeInsets.only(left:20,),
      width: double.infinity,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    for(int num=0; num<provider.socialring.length; num++)
                      Column(
                        children: [
                          GestureDetector(
                              onTap: () {print('touch');},
                              child: Container(
                                margin: EdgeInsets.only(bottom: 15),
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
                                                image: AssetImage(provider.socialring[num].image),
                                                fit: BoxFit.cover
                                            ),
                                            borderRadius: BorderRadius.circular(5)
                                        ),
                                        child: Align(
                                          alignment: Alignment.bottomLeft,
                                          child: IconButton(
                                              icon: (provider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                                              color: Colors.white,
                                              onPressed: () {provider.changelike(provider.socialring[num]);}
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
                                                for(int i=0; i< provider.socialring[num].tag.length;i++)
                                                  if(provider.socialring[num].tag[i] != '추천')
                                                    KeyWordTag_Container(text: provider.socialring[num].tag[i],)
                                                  else
                                                    KeyWordTag_Container(
                                                      text: provider.socialring[num].tag[i],
                                                      textcolor: Color(0xffdc143c),
                                                      backcolor: Color(0Xbbfeeaea),
                                                      fontweight: FontWeight.bold,
                                                    )
                                              ],
                                            ),
                                            CommonMeetingTitle_Text(provider.socialring[num].title),
                                            Row(
                                              children: [
                                                CommonGreyIcon(Icons.location_on),
                                                SizedBox(width: 5,),
                                                SizedBox(
                                                  width: 200,
                                                  child: SocialRingSubTitle_Text(provider.socialring[num].location,provider.socialring[num].date),
                                                )
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                CommonGreyIcon(Icons.people),
                                                SizedBox(width: 5,),
                                                SocialRingParticipant(provider.socialring[num].participants, provider.socialring[num].total),
                                              ],
                                            )
                                          ],
                                        )
                                      ),
                                    ],
                                  )
                              )
                          ),
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
                    for(int num=0; num<provider.club.length; num++)
                      ClubContainer(
                          width: 350,
                          image: provider.club[num].image,
                          icon: (provider.club[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border)),
                          onPressed: (){
                            provider.changelike(provider.club[num]);
                          },
                          tag: provider.club[num].tag,
                          title: provider.club[num].title,
                          location: provider.club[num].location,
                          date: provider.club[num].date,
                          participants: provider.club[num].participants,
                          total: provider.club[num].total,
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