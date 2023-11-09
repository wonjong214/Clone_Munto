import 'package:flutter/material.dart';

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
            for(int i = 0; i < 10; i++)
              WhiteRoundTag(
                widget: Text(
                      '#키워드',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                padding: EdgeInsets.only(left: 12, right: 12),
                height: 40,
              ),
          ],
        ),
      ),
    );
  }
}