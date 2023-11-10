import 'package:flutter/material.dart';

import '../../../../Constants/Enum.dart';
import '../../atoms/ProfileImage_Container.dart';
import '../../atoms/WhiteRoundTag_Container.dart';

class TagScroll_ScrollView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20),
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
                child: WhiteRoundTag(
                  padding: EdgeInsets.only(left: 12, right: 12),
                  widget: Row(
                    children: [
                      Text(
                        '#${Tag.values[i].korean}',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  height: 35,
                ),
              ),
          ],
        ),
      ),
    );
  }
}