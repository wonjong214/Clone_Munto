import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/molecules/lounge/SocialInfo_Container.dart';
import 'package:loginscreen/View/Component/molecules/lounge/SocialLocation_Container.dart';

class Social_Locaition_ScrollView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SocialInfo_Container(),
            SocialLocation_Container()
          ],
        ),
      )
    );
  }
}