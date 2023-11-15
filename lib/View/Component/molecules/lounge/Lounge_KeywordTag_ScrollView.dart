import 'package:flutter/material.dart';

import '../../atoms/LoungeKeywordTag_Container.dart';

class Lounge_KeyWordTag_ScrollView extends StatelessWidget{
  List<String> tag;

  Lounge_KeyWordTag_ScrollView(this.tag){}

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 15),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            for(int i = 0; i < tag.length; i++)
              LoungeKeywordTag_Container(tag[i]),
          ],
        ),
      ),
    );
  }

}