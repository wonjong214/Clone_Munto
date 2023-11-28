import 'package:flutter/material.dart';
import 'package:loginscreen/View/Component/atoms/app_bar_title_text.dart';
import 'package:loginscreen/View/Component/molecules/feedwrite/additional_information_container.dart';
import 'package:loginscreen/View/Component/molecules/feedwrite/category_choice_container.dart';
import 'package:loginscreen/View/Component/molecules/feedwrite/feed_content_column.dart';

import '../../../Constants/border.dart';
import '../../../Constants/colors.dart';
import '../atoms/diverder_container.dart';

class FeedWrite_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppBar_color,
      appBar: AppBar(
        backgroundColor: AppBar_color,
        foregroundColor: Colors.black,
        shape: appbarbottom_border,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: AppBarTitle('피드 쓰기', fontWeight: FontWeight.normal,),
        actions: [
          Text(
            '올리기',
            style: TextStyle(
                fontSize: 15, color: Colors.red, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body:Column(
        children: [
          CategoryChoiceContainer(),
          thinDivider,
          FeedContentColumn(),
          thinDivider,
          AdditionalInformationContainer(),
          thinDivider,



        ],
      )
    );
  }
}