import 'package:flutter/material.dart';
import 'package:loginscreen/Constants/fontsize.dart';
import 'package:loginscreen/View/Component/atoms/CircleIcon_Icon.dart';
import 'package:loginscreen/View/Component/atoms/KeyWordTag_Container.dart';
import 'package:loginscreen/View/Component/molecules/RoundedBorderContainer.dart';
import 'package:loginscreen/View/Component/molecules/profile/Profile_Image.dart';
import 'package:loginscreen/View/Component/molecules/profile/TextNum_Column.dart';
import 'package:loginscreen/View/Component/organisms/profile/Feed.dart';
import 'package:loginscreen/View/Component/organisms/profile/Meeting.dart';
import 'package:loginscreen/View/Component/organisms/profile/Tag.dart';
import 'package:loginscreen/ViewModel//ResolutionProvider.dart';
import 'package:provider/provider.dart';

import '../../../../Constants/border.dart';
import '../../../../Constants/colors.dart';
import '../../atoms/AppBarTab_Tab.dart';

class ProfileView extends StatelessWidget{
  List<String>? taglist = ['카페', '칵테일', '콘서트', '맛집투어', '클라이밍', '페스티벌', '캘리그라피', '음악감상', '악기연주', '보드게임', '해외여행', '국내여행', '사이드프로젝트'];

  ProfileView(){

  }

  @override
  Widget build(BuildContext context) {
    double width = Provider.of<ResolutionProvider>(context).width_get;
    double height = Provider.of<ResolutionProvider>(context).height_get;

    return Scaffold(
        backgroundColor: Color(0xfffefefe),
        appBar: AppBar(
          backgroundColor: AppBar_color,
          foregroundColor: Colors.black,
          shape: appbarbottom_border,
          title: Row(
            children: [
              Spacer(),
              SizedBox(child: Icon(Icons.ios_share)),
              SizedBox(width: 20,),
              Icon(Icons.settings_outlined),
              SizedBox(width: 20,),
            ],
          ),
        ),
        body: Container(
          width: width,
          height: height,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 40,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Profile_Image(AssetImage('assets/images/recommend_page/Exhibitions/nacho.jpeg')),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: tag_color
                          ),
                          child: Row(
                            children: [
                              CircleIcon(
                                icon: Icons.question_mark,
                                iconsize: 10,
                                backgroundcolor: Colors.grey,
                                width: 12,
                                height: 12,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                '나의 성향 배지',
                                style: TextStyle(
                                  color: Colors.grey.shade600,
                                  fontSize: 14
                                ),
                              )
                            ],
                          )
                        ),
                        SizedBox(width: 10,),
                        Container(
                            padding: EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xffebfbe6)
                            ),
                            child: Row(
                              children: [

                                Text(
                                  '36.9',
                                  style: TextStyle(
                                      color: Color(0xff77e357),
                                      fontSize: 14
                                  ),
                                ),
                                SizedBox(width: 5,),
                                CircleIcon(
                                  icon: Icons.arrow_forward_ios,
                                  iconsize: 8,
                                  backgroundcolor: Color(0xff77e357),
                                  width: 12,
                                  height: 12,
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '이름',
                      style: TextStyle(
                          fontSize: maintitle,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      '자기소개',
                      style: TextStyle(
                      ),
                    ),
                    SizedBox(height: 30,),
                    Wrap(
                      runSpacing: 10,
                      children: List.generate(10, (index) {
                        if(index < 9)
                          return KeyWordTag_Container(taglist![index]);
                        else
                          return RoundedBorderContainer(
                            padding: EdgeInsets.only(left:8, right:8, top: 3, bottom: 3),
                            bordercolor: Colors.grey,
                            widget: Text(
                              '+${taglist!.length - 9}',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          );
                      })
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        TextNum(),
                        Spacer(),
                        RoundedBorderContainer(
                          padding: EdgeInsets.only(left:8, right:8, top: 3, bottom: 3),
                          bordercolor: Colors.grey,
                          widget: Row(
                            children: [
                              Icon(Icons.add_circle, color: Colors.black, size: 20,),
                              SizedBox(width: 5,),
                              Text(
                                '글쓰기',
                                style: TextStyle(
                                  fontSize: 16
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30,),
              DefaultTabController(
                length: 3,
                child: Expanded(
                  child: Column(
                    children: [
                      PreferredSize(
                          preferredSize: Size.fromHeight(kToolbarHeight),
                          child: Align(
                            alignment: Alignment.center,
                            child: TabBar(
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelColor: Colors.black,
                              unselectedLabelColor: Colors.grey,
                              indicatorPadding: EdgeInsets.only(left: 15, right: 15),
                              indicatorColor: Colors.black,
                              tabs: [
                                Tab(
                                    child: Text(
                                        '피드',
                                        style: TextStyle( fontSize: 18)
                                    )
                                ),
                                Tab(
                                    child: Text(
                                        '태그',
                                        style: TextStyle( fontSize: 18)
                                    )
                                ),
                                Tab(
                                    child: Text(
                                        '모임',
                                        style: TextStyle( fontSize: 18)
                                    )
                                ),
                              ],
                            ),
                          )
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Feed(),
                            Tag(),
                            Meeting(),
                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}