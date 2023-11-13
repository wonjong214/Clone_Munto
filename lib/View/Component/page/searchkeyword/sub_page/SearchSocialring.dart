import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/WhiteRoundTag_Container.dart';
import 'package:provider/provider.dart';

import '../../../../../ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import '../../../molecules/meeting/Socialring_Container.dart';

class SearchSocialring extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var meeting_provider = Provider.of<Meeting_Provider>(context);
    return Container(
      color: background_color,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  WhiteRoundTag(
                      widget: Image.asset(
                        'assets/icons/filter.png',
                        width: 20,
                        height: 20,
                      ),
                      padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  WhiteRoundTag(
                    widget: Text(
                      '날짜',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  WhiteRoundTag(
                    widget: Text(
                      '지역',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  WhiteRoundTag(
                    widget: Text(
                      '나이',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  WhiteRoundTag(
                    widget: Text(
                      '정원',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey.shade700),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Text(
                    '마감된 모임도 보기',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '기본순',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5,),
                  Icon(Icons.keyboard_arrow_down_outlined,size: 20,)
                ],
              ),
              SizedBox(height: 20,),
              for(int num=0; num<3; num++)
                GestureDetector(
                    onTap: () {print('touch');},
                    child: Socialring_Container(
                      image: meeting_provider.socialring[num].image,
                      icon: meeting_provider.socialring[num].like ? Icon(Icons.favorite) : Icon(Icons.favorite_border),
                      onPressed: (){
                        meeting_provider.changelike(meeting_provider.socialring[num]);
                      },
                      tag:  meeting_provider.socialring[num].tag,
                      title:  meeting_provider.socialring[num].title,
                      location:  meeting_provider.socialring[num].location,
                      date:  meeting_provider.socialring[num].date,
                      participants:  meeting_provider.socialring[num].participants,
                      total:  meeting_provider.socialring[num].total,
                    )
                ),
            ],
          ),
        ),
      ),
    );
  }
}