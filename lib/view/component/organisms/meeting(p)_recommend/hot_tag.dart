import 'package:flutter/material.dart';
import 'package:loginscreen/constants/Enum.dart';
import 'package:loginscreen/constants/fontsize.dart';
import 'package:loginscreen/view/component/atoms/common_border_container.dart';
import 'package:loginscreen/view/component/atoms/common_text.dart';
import 'package:loginscreen/view/component/atoms/circle_border_image_container.dart';

class HotTag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CommonText(
            text: '지금 뜨는 태그',
            textSize: meetingTabGroupTitleTextSize,
            fontWeight: meetingTabGroupTitleFontWeight,
          ),
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
                  for(int i = 0; i < Tag.values.length; i++)
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context, rootNavigator: true).pushNamed(
                        '/SearchKeyword_page',
                        arguments: Tag.values[i].korean,
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CommonBorderContainer(
                        padding: EdgeInsets.only(left: 3, right: 12),
                        backColor: Colors.white,
                        widget: Row(
                          children: [
                            CircleBorderImageContainer(
                              Tag.values[i].image,
                              width: 35,
                              height: 35,
                              border: Border.all(
                                  width: 3,
                                  color: Colors.white
                              ),
                            ),
                            SizedBox(width: 2,),
                            Text(
                              '#${Tag.values[i].korean}',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                        height: 40,
                      ),
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
