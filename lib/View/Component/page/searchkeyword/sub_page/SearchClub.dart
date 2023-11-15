import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/colors.dart';
import 'package:loginscreen/View/Component/atoms/CommonBorderContainer.dart';
import 'package:loginscreen/View/Component/molecules/meeting/ClubContainer_Container.dart';
import 'package:loginscreen/ViewModel/Recommend_Page/MeetingProvider_ViewModel.dart';
import 'package:provider/provider.dart';


class SearchClub extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<Meeting_Provider>(context);
    return Container(
      color: background_color,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
          child: Column(
            children: [
              Row(
                children: [
                  CommonBorderContainer(
                    backcolor: Colors.white,
                    widget: Image.asset(
                      'assets/icons/filter.png',
                      width: 20,
                      height: 20,
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backcolor: Colors.white,
                    widget: Text(
                      '지역',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
                  SizedBox(width: 10,),
                  CommonBorderContainer(
                    backcolor: Colors.white,
                    widget: Text(
                      '카테고리',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    padding: EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 8,),
                  ),
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
              for(int num=0; num<provider.club.length; num++)
                ClubContainer(
                  width: double.infinity,
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
            ],
          ),
        ),
      ),
    );
  }
}