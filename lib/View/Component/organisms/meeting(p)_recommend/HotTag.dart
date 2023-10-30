import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/CommonMeetingTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/GroupTitle_Text.dart';
import 'package:loginscreen/View/Component/atoms/ProfileImage_Container.dart';
import 'package:loginscreen/View/Component/atoms/WhiteRoundTag_Container.dart';
import 'package:loginscreen/View/Component/molecules/profile/Profile_Image.dart';

class HotTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GroupTitle_Text('지금 뜨는 태그'),
          SizedBox(
            height: 20,
          ),
          Container(
            width: double.infinity,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  for(int i = 0; i < 10; i++)
                  WhiteRoundTag(
                    padding: EdgeInsets.only(left: 3, right: 12),
                    widget: Row(
                      children: [
                        ProfileImage_Container(AssetImage(
                            'assets/images/recommend_page/Exhibitions/coffee.jpeg')),
                        SizedBox(width: 2,),
                        Text(
                          '#키워드',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
